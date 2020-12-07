from rest_framework import serializers
from .models import *


class PersonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        fields = '__all__'


class PersonDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        fields = '__all__'
        depth = 2


class EventSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('event',)


class SportDetailSerializer(serializers.ModelSerializer):
    event_set = EventSetSerializer(many=True)

    class Meta:
        model = Sport
        fields = ('id', 'sport', 'event_set')


class GameDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Game
        exclude = ('events',)


# class GameEventSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Game
#         fields = '__all__'
#         depth = 2


class GameMedalSerializer(serializers.Serializer):
    pass


class SportSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sport
        fields = '__all__'


class EventSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = '__all__'
        depth = 1


class GameSerializer(serializers.ModelSerializer):
    class Meta:
        model = Game
        exclude = ('events',)


class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = '__all__'


class MedalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Medal
        fields = '__all__'
        depth = 2


class PersonSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        exclude = ('medals', 'sex')
        depth = 2


class MedalDetailSerializer(serializers.ModelSerializer):
    person_set = PersonSetSerializer(many=True)

    class Meta:
        model = Medal
        fields = ('id', 'color', 'event', 'game', 'person_set')
        depth = 3
