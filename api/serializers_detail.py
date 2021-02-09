from rest_framework import serializers
from .models import *
from . import serializers_nested


class CountryDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = '__all__'
        depth = 1


class EventDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = '__all__'
        depth = 1


class GameDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Game
        exclude = ('events',)


class MedalDetailSerializer(serializers.ModelSerializer):
    person_set = serializers_nested.PersonSetSerializer(many=True)
    game = serializers_nested.GameSerializer()
    event = EventDetailSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'color', 'event', 'game', 'person_set')
        depth = 1


class PersonDetailSerializer(serializers.ModelSerializer):
    medals = serializers_nested.MedalSimpleSerializer(many=True)
    nationality = serializers_nested.CountryNameSerializer()

    class Meta:
        model = Person
        fields = ('id', 'name', 'sex', 'year_of_birth', 'nationality', 'medals')


class SportDetailSerializer(serializers.ModelSerializer):
    event_set = serializers_nested.EventSetSerializer(many=True)

    class Meta:
        model = Sport
        fields = ('id', 'name', 'event_set')


class MedalPeopleSerializer(serializers.ModelSerializer):
    person_set = serializers_nested.PersonSetSerializer(many=True)

    class Meta:
        model = Medal
        fields = ('id', 'color', 'person_set')
