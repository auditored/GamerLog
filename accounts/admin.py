from django.contrib import admin
from .models import FavoriteGame, UserLibrary, Comment, Contact

admin.site.register(FavoriteGame)
admin.site.register(UserLibrary)
admin.site.register(Comment)
admin.site.register(Contact)

