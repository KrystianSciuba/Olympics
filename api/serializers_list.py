from rest_framework import serializers
from .models import *
from . import serializers_nested


class CountrySerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='CountryDetail', read_only=True)

    class Meta:
        model = Country
        fields = ('url', 'name')


class EventSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='EventDetail', read_only=True)
    sport = serializers_nested.SportNameSerializer()

    class Meta:
        model = Event
        fields = ('url', 'name', 'sport')


class GameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='GameDetail', read_only=True)

    class Meta:
        model = Game
        fields = ('url', 'year', 'city', 'season')


class MedalSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='MedalDetail', read_only=True)
    event = serializers_nested.EventNameSerializer()
    game = serializers_nested.GameSimpleSerializer()
    person_set = serializers_nested.MedalistsNameSerializer(many=True)

    class Meta:
        model = Medal
        fields = ('url', 'color', 'person_set', 'event', 'game')


class PersonSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail', read_only=True)
    medals = serializers_nested.MedalColorSerializer(many=True)

    class Meta:
        model = Person
        fields = ('url', 'name', 'year_of_birth','medals')


class SportSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='SportDetail', read_only=True)

    class Meta:
        model = Sport
        fields = ('url', 'name')
