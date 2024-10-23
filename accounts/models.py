from django.db import models
from game.models import Game
from django.contrib.auth.models import User


class FavoriteGame(models.Model):
    id = models.AutoField(primary_key=True)
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.user.username}, {self.game.title}'


class UserLibrary(models.Model):
    id = models.AutoField(primary_key=True)
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.user.username}, {self.game.title}'


class Comment(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    comment = models.CharField(max_length=100, blank=True)
    rating = models.IntegerField(null=True, blank=True, default=0)
    created_date = models.DateTimeField(
        auto_now_add=True, verbose_name='Adding_Time')

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.user.username}, {self.game.title}, {self.rating}'


class Contact(models.Model):
    id = models.AutoField(primary_key=True)
    email = models.CharField(max_length=100, blank=True)
    topic = models.CharField(max_length=100, blank=True)
    message = models.CharField(max_length=100, blank=True)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.email}, {self.topic}'
