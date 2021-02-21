from rest_framework import serializers
from .models import *


class EventNameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='EventDetail')

    class Meta:
        model = Event
        fields = ('url', 'name')


class EventNameOnlySerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('name',)


class GameSimpleSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='GameDetail')

    class Meta:
        model = Game
        fields = ('url', 'year', 'city', 'season')


class GameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='GameDetail')

    class Meta:
        model = Game
        fields = ('url', 'year', 'city', 'season')


class CountryNameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='CountryDetail')

    class Meta:
        model = Country
        fields = ('url', 'name',)


class MedalColorSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='MedalDetail')

    class Meta:
        model = Medal
        fields = ('url', 'color')


class MedalSimpleSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='MedalDetail')
    event = EventNameSerializer()
    game = GameSerializer()

    class Meta:
        model = Medal
        fields = ('url', 'color', 'event', 'game')


class SportNameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='SportDetail')

    class Meta:
        model = Sport
        fields = ('url', 'name')


class PersonSetSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail')
    medals = MedalColorSerializer(many=True)

    class Meta:
        model = Person
        fields = ('url', 'medals', 'sex', 'year_of_birth')


class MedalistsNameSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail')

    class Meta:
        model = Person
        fields = ('url', 'name')
