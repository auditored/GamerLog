import numpy as np
from numpy.linalg import norm
from django.shortcuts import render
from django.contrib.auth.models import User
from .models import Game, Genre
from accounts.models import Comment, FavoriteGame, UserLibrary
from django.contrib import messages
from accounts.views import usercomments
import random
from django.views.generic import TemplateView, ListView
from django.db.models import Q
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from surprise import SVD
from surprise import Dataset
from surprise import Reader
from surprise.model_selection import cross_validate
from surprise import KNNWithMeans
from surprise import KNNBaseline
import surprise
from sklearn.metrics.pairwise import cosine_similarity
def games(request):
    fav = []
    gamesFav = Game.objects.all().order_by('-rating')
    fav.append(gamesFav[0])
    fav.append(gamesFav[1])
    fav.append(gamesFav[2])
    fav.append(gamesFav[3])
    fav.append(gamesFav[4])
    fav.append(gamesFav[5])
    fav.append(gamesFav[6])
    fav.append(gamesFav[7])

    new = []
    gamesNew = Game.objects.all().order_by('-publishyear')
    new.append(gamesNew[0])
    new.append(gamesNew[1])
    new.append(gamesNew[2])
    new.append(gamesNew[3])
    new.append(gamesNew[4])
    new.append(gamesNew[5])
    new.append(gamesNew[6])
    new.append(gamesNew[7])

    gamesAll = Game.objects.all().order_by('title')
    return render(request, 'games.html', {'fav': fav, 'new': new, 'all': gamesAll})



def search(request):
    games = []
    if 'search' in request.GET:
        search = request.GET['search'].strip()
        if search != "":
            games = Game.objects.filter(title__icontains=search)
            
        else:
            games = Game.objects.all().order_by('title')

    context = {
        'games': games,
    }
    return render(request, 'search_results.html', context)

from sklearn.metrics.pairwise import cosine_similarity

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


def myGames(request):
    if 'userid' in request.POST:
        user = User.objects.get(id=request.POST.get('userid'))
        fav = []
        favGames = FavoriteGame.objects.filter(
            user=user).values_list('game', flat=True)
        for f in favGames:
            gameFav = Game.objects.get(id=f)
            fav.append(gameFav)

        lib = []
        libGames = UserLibrary.objects.filter(
            user=user).values_list('game', flat=True)
        for l in libGames:
            gameLib = Game.objects.get(id=l)
            lib.append(gameLib)

        context = {
            'favGames': fav,
            'gameLib': lib,
        }
        return render(request, 'mygames.html', context)
    else:
        return render(request, 'mygames.html')


def gamedetail(request, title):
    game = Game.objects.get(title=title)
    usercomment = None

    if request.POST.get('userid') != "None":
        isFav = False
        isLib = False
        userid = request.POST.get('userid')
        user = User.objects.get(id=userid)

        if FavoriteGame.objects.filter(user=user, game=game):
            isFav = True
            if 'removeFav' in request.POST:
                FavoriteGame.objects.filter(user=user, game=game).delete()
                isFav = False
        elif 'addFav' in request.POST:
            FavoriteGame.objects.create(user=user, game=game)
            isFav = True
        if UserLibrary.objects.filter(user=user, game=game):
            isLib = True
            if 'removeLib' in request.POST:
                UserLibrary.objects.filter(user=user, game=game).delete()
                isLib = False
        elif 'addLib' in request.POST:
            UserLibrary.objects.create(user=user, game=game)
            isLib = True

        usercomments(request, game, user)
        if Comment.objects.filter(user=user, game=game):
            usercomment = Comment.objects.get(user=user, game=game)
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


