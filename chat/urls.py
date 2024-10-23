from django.urls import path
from chat import views


urlpatterns = [
    path('', views.chat, name='chat'),
    path('ajax/', views.Ajax, name='ajax'),
]