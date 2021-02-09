from rest_framework import serializers
from .models import *
from . import serializers_nested


class MedalPeopleSerializer(serializers.ModelSerializer):
    person_set = serializers_nested.PersonSetSerializer(many=True)
    game = serializers_nested.GameSimpleSerializer()
    event = serializers_nested.EventSimpleSerializer()

    class Meta:
        model = Medal
        fields = ('id', 'game', 'event', 'color', 'person_set')


class MedalSerializer(serializers.ModelSerializer):
    event = serializers_nested.EventSimpleSerializer()
    person_set = serializers_nested.PersonSetSerializer(many=True)

    class Meta:
        model = Medal
        fields = ('id', 'color', 'event', 'person_set')
