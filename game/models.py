from django.db import models


class Publisher(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, verbose_name='name', blank=True)
    address = models.CharField(max_length=100, verbose_name='address')
    is_active = models.BooleanField(default=True)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name}'


class Developer(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, verbose_name='name')
    ownedby = models.ForeignKey(
        Publisher, on_delete=models.SET_NULL, null=True)
    address = models.CharField(max_length=100, verbose_name='address')
    is_active = models.BooleanField(default=True)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name}'


class GenreManager(models.Manager):
    def with_games(self):
        return self.filter(game__isnull=False)

class Genre(models.Model):
    name = models.CharField(max_length=50)
    objects = GenreManager()

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name}'

    def games(self):
        return Game.objects.filter(genres=self)

class Game(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100, verbose_name='title')
    coverimage = models.ImageField(
        upload_to='static/coverimages/', null=True, blank=True)
    price = models.IntegerField()
    rating = models.FloatField(default=0)
    publisher = models.ForeignKey(
        Publisher, on_delete=models.SET_NULL,  null=True)
    publishyear = models.IntegerField()
    developer = models.ForeignKey(
        Developer, on_delete=models.SET_NULL,  null=True)
    is_published = models.BooleanField(default=True)
    genres = models.ManyToManyField(Genre)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.title}'

    def get_image_path(self):
        return self.coverimage


class Category(models.Model):
    id = models.AutoField(primary_key=True)
    category = models.CharField(max_length=100)
    game = models.ForeignKey(Game, on_delete=models.SET_NULL,  null=True)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.category}, {self.game}'


class Platform(models.Model):
    id = models.AutoField(primary_key=True)
    game = models.ForeignKey(Game, on_delete=models.SET_NULL,  null=True)
    type = models.CharField(max_length=100)

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.type}, {self.game}'
