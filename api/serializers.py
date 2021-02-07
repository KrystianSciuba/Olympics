from rest_framework import serializers
from .models import *
from django.urls import path


class EventSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ('id','name',)


class EventDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = '__all__'
        depth = 1


class SportDetailSerializer(serializers.ModelSerializer):
    event_set = EventSetSerializer(many=True)

    class Meta:
        model = Sport
        fields = ('id', 'name', 'event_set')


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

    url = serializers.SerializerMethodField('create_url')


    def create_url(self, sport):
        return ("http://127.0.0.1:8000/api/sports/" + "%d" % sport.id)

    class Meta:
        model = Sport
        fields = ('id', 'name', 'url')


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
    event = EventSerializer()
    game = GameSerializer()
    class Meta:
        model = Medal
        fields = '__all__'


class MedalSimpleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Medal
        fields = ('id','color',)


class PersonSetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        exclude = ('medals', 'sex')
        depth = 2


class MedalDetailSerializer(serializers.ModelSerializer):
    person_set = PersonSetSerializer(many=True)
    game = GameSerializer()
    event = EventDetailSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'color', 'event', 'game', 'person_set')
        depth = 1


class PersonSerializer(serializers.ModelSerializer):
    medals = MedalSimpleSerializer(many=True)
    class Meta:
        model = Person
        fields = ('id', 'name', 'medals')


class PersonDetailSerializer(serializers.ModelSerializer):
    medals = MedalSerializer(many=True)
    nationality = CountrySerializer()
    class Meta:
        model = Person
        fields = ('id', 'name', 'sex', 'year_of_birth', 'nationality', 'medals')


class MedalPeopleSerializer(serializers.ModelSerializer):
    person_set = PersonSetSerializer(many=True)
    class Meta:
        model = Medal
        fields = ('id', 'color', 'person_set')
