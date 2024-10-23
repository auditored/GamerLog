from django.urls import path
from . import views

urlpatterns = [
    path('', views.imageSearch, name='imageSearch'),
    path('result/', views.result, name='result'),
]
