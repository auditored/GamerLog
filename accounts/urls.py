from django.urls import path

from .views import SignUpView
from . import views


urlpatterns = [
    # path("signup/", SignUpView.as_view(), name="signup"),
    path('signup/', views.signup, name='signup'),
    path('login/', views.login, name='login')

]
