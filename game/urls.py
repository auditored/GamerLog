from django.urls import path
from . import views


urlpatterns = [
    path('', views.games, name='games'),
    path('tossme/', views.tossMeGame, name='tossMeGame'),
    path('mygames/', views.myGames, name='myGames'),
    path('gamedetail/', views.gamedetail, name='gamedetail'),
    path('<str:title>/', views.gamedetail, name='gamedetail'),
    

]
