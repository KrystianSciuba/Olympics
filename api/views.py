from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import *
from .filters import * 
import django_filters
from rest_framework import generics


class SportListClass(generics.ListAPIView):
    queryset = Sport.objects.all()
    serializer_class = SportSerializer


class EventListClass(generics.ListAPIView):
    queryset = Event.objects.all()
    serializer_class = EventSerializer


class GameListClass(generics.ListAPIView):
    queryset = Game.objects.all()
    serializer_class = GameSerializer
    filter_class = GameFilter


class CountryListClass(generics.ListAPIView):
    queryset = Country.objects.all()
    serializer_class = CountrySerializer


class MedalListClass(generics.ListAPIView):
    queryset = Medal.objects.all()
    serializer_class = MedalSerializer
    filter_class = MedalFilter


class PersonListClass(generics.ListAPIView):
    queryset = Person.objects.all()
    serializer_class = PersonSerializer
    filter_class = PersonFilter




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
def event_detail(request, pk):
    event = get_object_or_404(Event, pk=pk)
    serializer = EventDetailSerializer(event)
    return Response(serializer.data)


@api_view(['GET'])
def game_list(request):
    games = Game.objects.all()
    serializer = GameSerializer(games)
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
            list_of_events_by_sports[event.sport.name].append({event.name:event.id})
        except KeyError:
            list_of_events_by_sports[event.sport.name] = [event.name]            
            list_of_events_by_sports[event.sport.name].append({event.name:event.id})

    game_serializer = GameSerializer(game)
    game_serializer_data = game_serializer.data
    game_serializer_data["events"] = list_of_events_by_sports
    return Response(game_serializer_data)


@api_view(['GET'])
def game_event_detail(request, gameid, eventid):
    game = get_object_or_404(Game, pk=gameid)
    event = get_object_or_404(Event, pk=eventid)
    medals = Medal.objects.filter(game=game, event=event)
    medals_serializer = MedalPeopleSerializer(medals, many=True)
    return Response(medals_serializer.data)


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
