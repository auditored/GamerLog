from django.shortcuts import render
from game.models import Game
from accounts.models import Contact
from django.contrib import messages
import random


def home(request):
    # Get all games ordered by rating and take the top 8
    fav = Game.objects.all().order_by('-rating')[:8]
    # Get all games ordered by publish year and take the top 8
    new = Game.objects.all().order_by('-publishyear')[:8]
    # Get all games ordered by title
    all_games = Game.objects.all().order_by('title')
    # Select 5 random items from the queryset
    random_items = Game.objects.all().order_by('?')[:5]
    # Pass the lists to the template and render the home page
    return render(request, 'home.html', {'fav': fav, 'new': new, 'all': all_games, 'randomItems': random_items})