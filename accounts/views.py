# accounts/views.py
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse_lazy
from django.views import generic
from django.contrib import messages
from django.contrib import auth
from django.contrib.auth.models import User
from django.shortcuts import redirect, render
from .models import Comment


class SignUpView(generic.CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy("login")
    template_name = "registration/signup.html"


def login(request):
    if request.POST.get('username', None) is not None:
        username = request.POST.get('username', None).strip()
        password = request.POST.get('password', None).strip()
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            messages.add_message(request, messages.SUCCESS, 'Login successful')
            return redirect('home')
        else:
            messages.add_message(
                request, messages.ERROR, 'Are you drunk?! Your password or username is not correct.')
    return render(request, 'registration/login.html')


def signup(request):
    if request.POST.get('username', None) is not None:
        first_name = request.POST.get('firstname', None).strip()
        last_name = request.POST.get('lastname', None).strip()
        email = request.POST.get('email', None).strip()
        username = request.POST.get('username', None).strip()
        password = request.POST.get('password', None).strip()
        if User.objects.filter(email=email).exists():
            messages.add_message(
                request, messages.WARNING, 'Email already exists')
        else:
            if User.objects.filter(username=username).exists():
                messages.add_message(
                    request, messages.WARNING, 'Username already exists')
            else:
                User.objects.create_user(
                    first_name=first_name, last_name=last_name, username=username, password=password, email=email)
                user = User.objects.get(username=username)
                messages.add_message(
                    request, messages.SUCCESS, 'User created successfully.')
                return redirect('login')
    return render(request, 'registration/signup.html')


def usercomments(request, game, user):
    usercomment = None
    if Comment.objects.filter(user=user, game=game):
        usercomment = Comment.objects.get(user=user, game=game)
        if 'comment' in request.POST:
            comment = request.POST.get('comment').strip()
            if comment != "":
                rating = request.POST.get('rating')
                usercomment.rating = rating
                usercomment.comment = comment
                usercomment.save()
            messages.add_message(request, messages.SUCCESS,
                                 'Your comment has been changed successfully.')
        elif 'delete' in request.POST:
            usercomment.delete()
            messages.add_message(request, messages.SUCCESS,
                                 'Your comment has been removed successfully.')
            return redirect('gamedetail', game.title)
    else:
        if 'comment' in request.POST:
            comment = request.POST.get('comment').strip()
            if comment != "":
                rating = request.POST.get('rating')
                Comment.objects.create(
                    game=game, rating=rating, user=user, comment=comment)
                messages.add_message(request, messages.SUCCESS,
                                     'Your comment has been added successfully.')
                return redirect('gamedetail', game.title)
