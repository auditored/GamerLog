import random

import numpy as np
import pandas as pd
from numpy.linalg import norm
from sklearn.metrics import accuracy_score
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.model_selection import train_test_split
from surprise import Dataset, KNNBaseline, KNNWithMeans, Reader, SVD
from surprise.model_selection import cross_validate, train_test_split
from surprise.prediction_algorithms.knns import KNNBasic
from django.contrib import messages
from django.contrib.auth.models import User
from django.db.models import Avg, Q
from django.shortcuts import render
from django.views.generic import ListView, TemplateView

from .models import Game, Genre
from accounts.models import Comment, FavoriteGame, UserLibrary
from accounts.views import usercomments


def games(request):
    # retrieve the top 8 games by rating
    gamesFav = Game.objects.all().order_by('-rating')
    fav = gamesFav[:8]

    # retrieve the top 8 new games by publish year
    gamesNew = Game.objects.all().order_by('-publishyear')
    new = gamesNew[:8]

    # retrieve all games ordered by title
    gamesAll = Game.objects.all().order_by('title')

    # render the games.html template with the retrieved games
    return render(request, 'games.html', {'fav': fav, 'new': new, 'all': gamesAll})

def search(request):
    # check if the request contains a 'search' parameter
    if 'search' in request.GET:
        search = request.GET['search'].strip()
        # check if the search parameter is not empty
        if search != "":
            # retrieve games that have a title containing the search parameter
            games = Game.objects.filter(title__icontains=search)
        else:
            # retrieve all games ordered by title
            games = Game.objects.all().order_by('title')

    # create a context dictionary containing the retrieved games
    context = {
        'games': games,
    }
    # render the search_results.html template with the retrieved games
    return render(request, 'search_results.html', context)

#REAL RECOMMENDATION SYSTEM content-based
def tossMeGame(request):
    # Get all user ratings
    games=Game.objects.all()
    genres = []
    genres = Genre.objects.all()
    ratings = Comment.objects.values('game_id', 'user_id', 'rating')
    reader = Reader(rating_scale=(1, 5))
    data = Dataset.load_from_df(pd.DataFrame.from_records(ratings), reader)
    trainset = data.build_full_trainset()
    algo = KNNWithMeans()
    algo.fit(trainset)
    user_ratings = Comment.objects.filter(user=request.user)
    user_genres = []
    if not user_ratings.exists():
        # Get the top-rated games
        top_rated_games = Game.objects.all().order_by('-rating')[:9]
        recommended_games = top_rated_games
        first_game = recommended_games[0]
        new_recommended_games = recommended_games[1:]
        context = {'recommended_games': new_recommended_games, 'first_game' : first_game}
        return render(request, 'tossme.html', context)
    
    for rating in user_ratings:
        game = Game.objects.get(id=rating.game.id)
        for genre in game.genres.all():
            user_genres.append(genre)
    user_genres = list(set(user_genres))
    unrated_games = Game.objects.exclude(id__in=[rating.game.id for rating in user_ratings])

    top_3_genres = user_genres[:3]

    # Create genre vectors for user and games
    user_genre_vector = np.zeros(len(genres))
    #Create genre weight dictionary to store weight based on user's rating
    genre_weight = {}
    for genre in genres:
        genre_weight[genre.name] = 0
    for rating in user_ratings:
        for genre in rating.game.genres.all():
            genre_weight[genre.name] += rating.rating
    #normalize the weight
    for genre in genre_weight:
        genre_weight[genre] /= len(user_ratings)
    #populate user genre vector with weight
    for i, genre in enumerate(genres):
        if genre in user_genres:
            user_genre_vector[i] = genre_weight[genre.name]
            
    game_genre_vectors = {}
    for game in unrated_games:
        game_genre_vector = np.zeros(len(genres))
        for i, genre in enumerate(genres):
            if genre in game.genres.all():
                game_genre_vector[i] = 1
        game_genre_vectors[game.id] = game_genre_vector

    # Calculate cosine similarity for each game's genre vector and the user's genre vector
    recommended_games = []
    for game_id, game_genre_vector in game_genre_vectors.items():
        cosine_sim = cosine_similarity([user_genre_vector], [game_genre_vector])[0][0]
        prediction = algo.predict(request.user.id, game_id)
        recommended_games.append((game_id, prediction.est, cosine_sim))
    recommended_games = sorted(recommended_games, key=lambda x: (x[2], x[1]), reverse=True)[:9]
    recommended_games = [Game.objects.get(id=game_id) for game_id, rating, sim in recommended_games]
    first_game = recommended_games[0] if recommended_games else None
    new_recommended_games = [game for game in recommended_games[1:]] if recommended_games else []
    context = {'recommended_games': new_recommended_games, 'first_game' : first_game, 'top_3_genres': top_3_genres}
    return render(request, 'tossme.html', context)

#OLD !Just for backupp! - content-based recommendation system that uses cosine similarity to compare the genre vectors of the games
def tossMeGameOLD(request):
    # Get the user's ratings
    user_ratings = Comment.objects.filter(user=request.user)
    if not user_ratings.exists():
        # Get the top-rated games
        top_rated_games = Game.objects.all().order_by('-rating')[:9]
        recommended_games = top_rated_games
        first_game = recommended_games[0]
        new_recommended_games = recommended_games[1:]
        context = {'recommended_games': new_recommended_games, 'first_game' : first_game}
        return render(request, 'tossme.html', context)

    # Get the list of games that the user has already rated
    rated_games = user_ratings.values_list('game', flat=True)
    # Get the genres of the games that the user has rated
    genres = user_ratings.values_list('game__genres__name', flat=True)
    # Calculate the average rating for each genre
    genre_ratings = {}
    for genre in genres:
        genre_games = Game.objects.filter(genres__name=genre)
        genre_ratings[genre] = sum(Comment.objects.filter(game__in=genre_games).values_list('rating', flat=True)) / len(genre_games)
    # Sort the genre_ratings dictionary by descending values
    sorted_genre_ratings = dict(sorted(genre_ratings.items(), key=lambda x: x[1], reverse=True))
    # Get the top 3 genres
    top_3_genres = list(sorted_genre_ratings.keys())[:3]
    # Create a user vector
    user_vector = []
    for genre in genres:
        user_vector.append(genre_ratings[genre])
    # Normalize the user vector
    user_vector = np.array(user_vector)
    user_vector = user_vector / np.linalg.norm(user_vector)
    # Create a vector for each game in the database
    games_vectors = {}
    for game in Game.objects.all():
        game_vector = []
        for genre in genres:
            if genre in game.genres.values_list('name', flat=True):
                game_vector.append(genre_ratings[genre])
            else:
                game_vector.append(0)
        games_vectors[game.id] = game_vector
    # Normalize the game vectors
    for game_id in games_vectors:
        games_vectors[game_id] = np.array(games_vectors[game_id])
        games_vectors[game_id] = games_vectors[game_id] / np.linalg.norm(games_vectors[game_id])
    # Calculate cosine similarity between user vector and game vectors
    similarities = {}
    for game_id in games_vectors:
        similarities[game_id] = np.dot(user_vector, games_vectors[game_id])
    # Sort similarities by descending order
    similarities = dict(sorted(similarities.items(), key=lambda x: x[1], reverse=True))
    # Create an empty list to store the recommended games
    recommended_games_list = []
    # Iterate through the similarities dictionary
    for game_id, similarity in similarities.items():
        game = Game.objects.get(id=game_id)
        # Check if the game has already been recommended
        if game not in recommended_games_list:
            # Check if the user has already rated the game
            if game.id not in rated_games:
                recommended_games_list.append(game)
    # Break the loop if we have already recommended 9 games
        if len(recommended_games_list) == 9:
            break
    # Assign the recommended games to a variable
    recommended_games = recommended_games_list
    first_game = recommended_games[0]
    new_recommended_games = recommended_games[1:]
    context = {'recommended_games': new_recommended_games, 'first_game' : first_game, 'top_3_genres': top_3_genres}
    return render(request, 'tossme.html', context)

def myGames(request):
    """
    Renders the 'mygames.html' template with the current user's favorite and library games.
    """
    # Check if a user is logged in
    if 'userid' in request.POST:
        # Get the user object based on the userid in the request
        user = User.objects.get(id=request.POST.get('userid'))

        # Get the user's favorite games
        fav = []
        favGames = FavoriteGame.objects.filter(user=user).values_list('game', flat=True)
        for f in favGames:
            gameFav = Game.objects.get(id=f)
            fav.append(gameFav)

        # Get the user's library games
        lib = []
        libGames = UserLibrary.objects.filter(user=user).values_list('game', flat=True)
        for l in libGames:
            gameLib = Game.objects.get(id=l)
            lib.append(gameLib)

        # Pass the user's favorite and library games to the template
        context = {
            'favGames': fav,
            'gameLib': lib,
        }
        return render(request, 'mygames.html', context)
    else:
        # Render the template if the user is not logged in
        return render(request, 'mygames.html')

def gamedetail(request, title):
    # Get the game object based on the title passed in
    game = Game.objects.get(title=title)
    usercomment = None

    # Check if the user is logged in
    if request.POST.get('userid') != "None":
        # Initialize variables to keep track of whether the game is in the user's favorites or library
        isFav = False
        isLib = False

        userid = request.POST.get('userid')
        user = User.objects.get(id=userid)

        # Check if the game is in the user's favorites
        if FavoriteGame.objects.filter(user=user, game=game):
            isFav = True
            # Check if the user wants to remove the game from their favorites
            if 'removeFav' in request.POST:
                FavoriteGame.objects.filter(user=user, game=game).delete()
                isFav = False
        # Check if the user wants to add the game to their favorites
        elif 'addFav' in request.POST:
            FavoriteGame.objects.create(user=user, game=game)
            isFav = True

        # Check if the game is in the user's library
        if UserLibrary.objects.filter(user=user, game=game):
            isLib = True
            # Check if the user wants to remove the game from their library
            if 'removeLib' in request.POST:
                UserLibrary.objects.filter(user=user, game=game).delete()
                isLib = False
        # Check if the user wants to add the game to their library
        elif 'addLib' in request.POST:
            UserLibrary.objects.create(user=user, game=game)
            isLib = True

        # Function call to handle user comments
        usercomments(request, game, user)
        if Comment.objects.filter(user=user, game=game):
            usercomment = Comment.objects.get(user=user, game=game)
    # Get all comments for the game
    comments = Comment.objects.filter(game=game)
    commentscount = comments.count()
    average = 0
    if commentscount != 0:
        total = 0
        for comment in comments:
            total += comment.rating
        average = total / commentscount
        average = round(average, 2)
        game.rating = average
        game.save()
    if request.POST.get('userid') != "None":
        context = {
            'game': game,
            'comments': comments,
            'usercomment': usercomment,
            'commentscount': commentscount,
            'average': average,
            'isFav': isFav,
            'isLib': isLib,
        }
        return render(request, 'gamedetail.html', context)
    else:
        context = {
            'game': game,
            'comments': comments,
            'usercomment': usercomment,
            'commentscount': commentscount,
            'average': average,
        }
        return render(request, 'gamedetail.html', context)
