from rest_framework import serializers
from .models import *
from . import serializers_nested


class MedalPeopleSerializer(serializers.ModelSerializer):
    person_set = serializers_nested.MedalistsNameSerializer(many=True)
    game = serializers_nested.GameSimpleSerializer()
    event = serializers_nested.EventNameSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'game', 'event', 'color', 'person_set')


class GameEventUrlOnlySerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='GameEventRedirect')

    class Meta:
        model = GameEvent
        fields = ('url',)


class PersonCountrySerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail')

    class Meta:
        model = Person
        fields = ('url', 'name')
