from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import *


@api_view(['GET'])
def sport_list(request):
    sports = Sport.objects.all()
    serializer = SportSerializer(sports, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def sport_detail(request, pk):
    sport = get_object_or_404(Sport, pk=pk)
    serializer = SportDetailSerializer(sport)
    return Response(serializer.data)


@api_view(['GET'])
def event_list(request):
    events = Event.objects.all()
    serializer = EventSerializer(events, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def game_list(request):
    games = Game.objects.all()
    serializer = GameSerializer(games, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def game_detail(request, pk):
    game = get_object_or_404(Game, pk=pk)
    serializer = GameDetailSerializer(game)
    return Response(serializer.data)


@api_view(['GET'])
def game_medal(request, pk):
    game = get_object_or_404(Game, pk=pk)
    medals = Medal.objects.filter(game=game)
    game_serializer = GameDetailSerializer(game)
    medals_serializer = MedalSerializer(medals, many=True)
    game_medal_data = game_serializer.data
    game_medal_data["medals"] = medals_serializer.data
    return Response(game_medal_data)


@api_view(['GET'])
def game_events(request, pk):
    game = get_object_or_404(Game, pk=pk)
    list_of_events = game.events.all().order_by('name')
    list_of_events_by_sports = {}
    for event in list_of_events:
        try:
            list_of_events_by_sports[event.sport.name].append(event.name)
        except KeyError:
            list_of_events_by_sports[event.sport.name] = [event.name]

    game_serializer = GameSerializer(game)
    game_serializer_data = game_serializer.data
    game_serializer_data["events"] = list_of_events_by_sports
    return Response(game_serializer_data)


@api_view(['GET'])
def country_list(request):
    countries = Country.objects.all()
    serializer = CountrySerializer(countries, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def person_list(request):
    persons = Person.objects.all()[4000:4100]
    serializer = PersonSerializer(persons, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def person_detail(request, pk):
    person = get_object_or_404(Person, pk=pk)
    serializer = PersonDetailSerializer(person)
    return Response(serializer.data)


@api_view(['GET'])
def medal_list(request):
    medals = Medal.objects.all()[5000:5100]
    serializer = MedalSerializer(medals, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def medal_detail(request, pk):
    medal = get_object_or_404(Medal, pk=pk)
    serializer = MedalDetailSerializer(medal)
    return Response(serializer.data)


@api_view(['GET'])
def medal_detail(request, pk):
    medal = Medal.objects.get(pk=pk)
    serializer = MedalDetailSerializer(medal)
    return Response(serializer.data)


def test(request):
    html = "<html><body>test API</body></html>"
    return HttpResponse(html)
