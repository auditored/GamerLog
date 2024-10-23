import io
import re
import requests
from django.shortcuts import render
from django.http import HttpResponse
from google.cloud import vision
from google.cloud import vision_v1
from google.cloud.vision_v1 import types
from bs4 import BeautifulSoup


def imageSearch(request):
    return render(request, 'imagesearch.html')


def result(request):
    try:
        file = request.FILES['image'].file
        image = types.Image(content=file.read())
        client = vision_v1.ImageAnnotatorClient()
        response = client.label_detection(image=image)
        labels = response.label_annotations

        # Print out the label descriptions for debugging purposes
        print([label.description for label in labels])

        game_keywords = ['game', 'art', 'video game', 'computer game', 'gaming', 'gamer', 'gaming mouse', 'multiplayer game', 'xbox', 'playstation', 'indie']
        game_label = None
        for label in labels:
            if label.description.lower() in game_keywords:
                game_label = label
                break
        if game_label is None:
            raise ValueError("No game label found in the image.")
        game_name = game_label.description
        search_url = f"https://www.google.com/search?q={game_name}"
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'}
        html = requests.get(search_url, headers=headers).content
        soup = BeautifulSoup(html, 'html.parser')
        game_title = None
        for title in soup.find_all('h3'):
            if title.parent.name == 'a':
                game_title = title.get_text()
                break
        if game_title is None:
            game_title = soup.find('div', {'class': 'BNeawe s3v9rd AP7Wnd'}).get_text()
        # Check if the title contains unwanted words
        unwanted_words = ['wikipedia', 'wiki', 'reddit', 'youtube', 'twitter']
        for word in unwanted_words:
            if word in game_title.lower():
                game_title = None
                break
        if game_title is None:
            raise ValueError("No game title found for the game.")
        return HttpResponse(game_title)
    except Exception as e:
        return render(request, 'imagesearchresult.html', {'error_message': str(e)})
