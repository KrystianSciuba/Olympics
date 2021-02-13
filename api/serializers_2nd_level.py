from rest_framework import serializers
from rest_framework.request import Request
from .models import *
from . import serializers_nested


class MedalPeopleSerializer(serializers.ModelSerializer):
    person_set = serializers_nested.MedalistsNameSerializer(many=True)
    game = serializers_nested.GameSimpleSerializer()
    event = serializers_nested.EventNameSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'game', 'event', 'color', 'person_set')


class GameEventSerializer(serializers.ModelSerializer):
    
    pass



# class MedalSerializer(serializers.ModelSerializer):
#     event = serializers_nested.EventNameSerializer()
#     person_set = serializers_nested.PersonSetSerializer(many=True)
#
#     class Meta:
#         model = Medal
#         fields = ('id', 'color', 'event', 'person_set')


class PersonCountrySerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='PersonDetail')

    class Meta:
        model = Person
        fields = ('url', 'name')
