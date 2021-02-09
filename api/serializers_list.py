from rest_framework import serializers
from .models import *
from . import serializers_nested


class CountrySerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='CountryDetail', read_only=True)

    class Meta:
        model = Country
        fields = ('id', 'url', 'name')


class EventSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='EventDetail', read_only=True)

    class Meta:
        model = Event
        fields = ('id', 'url', 'name', 'sport')
        depth = 1


class GameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='GameDetail', read_only=True)

    class Meta:
        model = Game
        fields = ('id', 'url', 'year', 'city', 'season')


class MedalSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='MedalDetail', read_only=True)
    event = serializers_nested.EventSimpleSerializer()
    game = serializers_nested.GameSimpleSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'url', 'color', 'event', 'game')


class PersonSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail', read_only=True)
    medals = serializers_nested.MedalColorSerializer(many=True)

    class Meta:
        model = Person
        fields = ('id', 'url', 'name', 'medals')


class SportSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='SportDetail', read_only=True)

    class Meta:
        model = Sport
        fields = ('id', 'url', 'name')
