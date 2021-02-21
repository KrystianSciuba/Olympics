from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from . import serializers_list, serializers_detail, serializers_2nd_level, serializers_nested
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
    serializer_context = {'request': request}
    serializer = serializers_detail.SportDetailSerializer(sport, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def event_detail(request, pk):
    event = get_object_or_404(Event, pk=pk)
    serializer_context = {'request': request}
    serializer = serializers_detail.EventDetailSerializer(event, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def game_detail(request, pk):
    game = get_object_or_404(Game, pk=pk)
    serializer_context = {'request': request}
    serializer = serializers_detail.GameDetailSerializer(game, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def country_detail(request, pk):
    country = get_object_or_404(Country, pk=pk)
    serializer_context = {'request': request}
    serializer = serializers_detail.CountryDetailSerializer(country, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def country_detail_name(request, name):
    country = get_object_or_404(Country, name=name.upper())
    return redirect('CountryDetail', country.id)


@api_view(['GET'])
def person_detail(request, pk):
    person = get_object_or_404(Person, pk=pk)
    serializer_context = {'request': request}
    serializer = serializers_detail.PersonDetailSerializer(person, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def medal_detail(request, pk):
    medal = get_object_or_404(Medal, pk=pk)
    serializer_context = {'request': request}
    serializer = serializers_detail.MedalDetailSerializer(medal, context=serializer_context)
    return Response(serializer.data)


@api_view(['GET'])
def game_events_list(request, pk):
    game = get_object_or_404(Game, pk=pk)
    serializer_context = {'request': request}
    list_of_events = game.events.all().order_by('name')
    list_of_events_by_sports = {}
    for event in list_of_events:
        event_name_serializer = serializers_nested.EventNameOnlySerializer(event)
        event_name_serializer_dict = event_name_serializer.data

        game_event = get_object_or_404(GameEvent, game=game, event=event)
        game_event_url_serializer = serializers_2nd_level.GameEventUrlOnlySerializer(game_event,
                                                                                     context=serializer_context)
        game_event_serializer_dict = game_event_url_serializer.data
        game_event_serializer_dict.update(event_name_serializer_dict)

        try:
            list_of_events_by_sports[event.sport.name].append(game_event_serializer_dict)
        except KeyError:
            list_of_events_by_sports[event.sport.name] = [event.name]
            list_of_events_by_sports[event.sport.name].append(game_event_serializer_dict)

    game_serializer = serializers_detail.GameDetailSerializer(game, context=serializer_context)
    game_serializer_dict = game_serializer.data
    game_serializer_dict["events"] = list_of_events_by_sports
    return Response(game_serializer_dict)


@api_view(['GET'])
def game_event_redirect(request, pk):
    game_event = get_object_or_404(GameEvent, pk=pk)
    return redirect('gameevent-detail', game_pk=game_event.game.id, event_pk=game_event.event.id)


@api_view(['GET'])
def game_event_winners(request, game_pk, event_pk):
    game = get_object_or_404(Game, pk=game_pk)
    event = get_object_or_404(Event, pk=event_pk)
    medals = Medal.objects.filter(game=game, event=event)
    serializer_context = {'request': request}
    medals_serializer = serializers_2nd_level.MedalPeopleSerializer(medals, many=True, context=serializer_context)
    return Response(medals_serializer.data)


@api_view(['GET'])
def country_persons_list(request, pk):
    country = get_object_or_404(Country, pk=pk)
    persons = Person.objects.filter(nationality=country)
    serializer_context = {'request': request}
    persons_serializer = serializers_2nd_level.PersonCountrySerializer(persons, many=True, context=serializer_context)
    return Response(persons_serializer.data)


def test(request):
    html = "<html><body>test API</body></html>"
    return HttpResponse(html)


def home_page(request):
    template = 'api/templates/home.html'
    return render(request, template)



# @api_view(['GET'])
# def game_medals_list(request, pk):
#     game = get_object_or_404(Game, pk=pk)
#     medals = Medal.objects.filter(game=game)
#     serializer_context = {'request': request}
#     medals_serializer = serializers_2nd_level.MedalSerializer(medals, many=True, context=serializer_context)
#     return Response(medals_serializer.data)
