from django.shortcuts import render
from .models import *
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.urls import path, reverse
import openai #pip3 install openai


def chat(request):
    chats = Chat.objects.all().delete()
    return render(request, 'chat.html', {
        'chats': chats,
    })


@csrf_exempt
def Ajax(request):
    if request.headers.get('X-Requested-With') == 'XMLHttpRequest': # Check if request is Ajax

        text = request.POST.get('text')
        selectedModel = request.POST.get('selectedModel')
        print(text)

        promptOld = f"Can you suggest a game described that {text}? Please provide me a brief description. Only list games, and do not provide any information before stating the game's name. Your respond should be like GAME_NAME, DESCRIPTION."


        prompt = f"""
        You will suggest a game described like that: {text}? 
        Please provide me a brief description. 
        Only list games, and do not provide any information before stating the game's name. 
        Your respond should be like GAME_NAME, DESCRIPTION.
        """
        

        if selectedModel == "ChatGPT":
            # Generate the response using the OpenAI API - ChatGPT
            response = openai.ChatCompletion.create(
                model="gpt-3.5-turbo",
                messages=[
                    {"role": "user", "content": f"{prompt}" }
                ]
            )
            model_name = "ChatGPT"
            game = response.choices[0].message["content"]
        
        elif selectedModel == "Davinci":
            #  Generate the response using the OpenAI API - Davinci
            response = openai.Completion.create(
                engine="text-davinci-002",
                prompt=prompt,
                max_tokens=120,
                n=1,
                stop=None,
                temperature=0.5,
            )
            model_name = "Davinci"
            game = response.choices[0].text.strip()

        # Print the name of the model used to generate the response
        print(f"Model used: {model_name}")

        # Extract the suggested game from the API response
        game_name = game.partition(",")[0]
        print(game)

        # Create a link to search for the game on the provided template
        linkSearch = reverse('search_results') + f'?search={game_name}'
        linkGamePage = reverse('games') + f'{game_name}' #has to be fixed
        link = linkSearch

        chat = Chat.objects.create(
            text = text,
            gpt = game
        )

        # Return the suggested game and link as a JSON response
        return JsonResponse({'data': {'games': game, 'links': link}})
    
    return JsonResponse({})