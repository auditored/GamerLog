from django.contrib import admin
from .models import Publisher, Developer, Game, Category, Platform, Genre


admin.site.register(Publisher)
admin.site.register(Developer)
admin.site.register(Game)
admin.site.register(Category)
admin.site.register(Platform)
admin.site.register(Genre)
