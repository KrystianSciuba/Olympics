from rest_framework import serializers
from .models import *


class EventSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('id', 'name',)


class EventSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('name',)


class GameSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Game
        fields = ('year', 'city', 'season',)


class GameSerializer(serializers.ModelSerializer):

    class Meta:
        model = Game
        exclude = ('events',)


class EventNameSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('name',)


class CountryNameSerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = ('name',)


class MedalColorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Medal
        fields = ('color',)


class MedalSimpleSerializer(serializers.ModelSerializer):
    event = EventNameSerializer()
    game = GameSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'color', 'event', 'game',)


class CountrySimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = ('name',)


class PersonSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        exclude = ('medals', 'sex')
        depth = 2
