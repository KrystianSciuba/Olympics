from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from . import serializers_list, serializers_detail, serializers_2nd_level
from .filters import *
from rest_framework import generics


class SportList(generics.ListAPIView):
    queryset = Sport.objects.all().order_by('id')
    serializer_class = serializers_list.SportSerializer


class EventList(generics.ListAPIView):
    queryset = Event.objects.all().order_by('id')
    serializer_class = serializers_list.EventSerializer


class GameList(generics.ListAPIView):
    queryset = Game.objects.all().order_by('-id')
    serializer_class = serializers_list.GameSerializer
    filter_class = GameFilter


class CountryList(generics.ListAPIView):
    queryset = Country.objects.all().order_by('id')
    serializer_class = serializers_list.CountrySerializer


class MedalList(generics.ListAPIView):
    queryset = Medal.objects.all().order_by('id')
    serializer_class = serializers_list.MedalSerializer
    filter_class = MedalFilter


class PersonList(generics.ListAPIView):
    queryset = Person.objects.all().order_by('id')
    serializer_class = serializers_list.PersonSerializer
    filter_class = PersonFilter


@api_view(['GET'])
def sport_detail(request, pk):
    sport = get_object_or_404(Sport, pk=pk)
    serializer = serializers_detail.SportDetailSerializer(sport)
    return Response(serializer.data)


@api_view(['GET'])
def event_detail(request, pk):
    event = get_object_or_404(Event, pk=pk)
    serializer = serializers_detail.EventDetailSerializer(event)
    return Response(serializer.data)


@api_view(['GET'])
def game_detail(request, pk):
    game = get_object_or_404(Game, pk=pk)
    serializer = serializers_detail.GameDetailSerializer(game)
    return Response(serializer.data)

@api_view(['GET'])
def country_detail(request, pk):
    country = get_object_or_404(Country, pk=pk)
    serializer = serializers_detail.CountryDetailSerializer(country)
    return Response(serializer.data)


@api_view(['GET'])
def person_detail(request, pk):
    person = get_object_or_404(Person, pk=pk)
    serializer = serializers_detail.PersonDetailSerializer(person)
    return Response(serializer.data)


@api_view(['GET'])
def medal_detail(request, pk):
    medal = get_object_or_404(Medal, pk=pk)
    serializer = serializers_detail.MedalDetailSerializer(medal)
    return Response(serializer.data)


@api_view(['GET'])
def game_events_list(request, pk):
    game = get_object_or_404(Game, pk=pk)
    list_of_events = game.events.all().order_by('name')
    list_of_events_by_sports = {}
    for event in list_of_events:
        try:
            list_of_events_by_sports[event.sport.name].append({event.name: event.id})
        except KeyError:
            list_of_events_by_sports[event.sport.name] = [event.name]
            list_of_events_by_sports[event.sport.name].append({event.name: event.id})

    game_serializer = serializers_detail.GameDetailSerializer(game)
    game_serializer_data = game_serializer.data
    game_serializer_data["events"] = list_of_events_by_sports
    return Response(game_serializer_data)


@api_view(['GET'])
def game_medals_list(request, pk):
    game = get_object_or_404(Game, pk=pk)
    medals = Medal.objects.filter(game=game)
    #game_serializer = serializers_detail.GameDetailSerializer(game)
    medals_serializer = serializers_2nd_level.MedalSerializer(medals, many=True)
    #game_medal_data = game_serializer.data
    #game_medal_data["medals"] = medals_serializer.data
    #return Response(game_medal_data)
    return Response(medals_serializer.data)


@api_view(['GET'])
def game_event_winners(request, gameid, eventid):
    game = get_object_or_404(Game, pk=gameid)
    event = get_object_or_404(Event, pk=eventid)
    medals = Medal.objects.filter(game=game, event=event)
    medals_serializer = serializers_2nd_level.MedalPeopleSerializer(medals, many=True)
    return Response(medals_serializer.data)


def test(request):
    html = "<html><body>test API</body></html>"
    return HttpResponse(html)
