import django_filters
from .models import *


class GameFilter(django_filters.FilterSet):
    season = django_filters.CharFilter(lookup_expr='iexact')
    min_year = django_filters.NumberFilter(field_name="year", lookup_expr='gt')
    max_year = django_filters.NumberFilter(field_name="year", lookup_expr='lt')

    class Meta:
    	model = Game
    	fields = ['season', 'min_year', 'max_year']


class MedalFilter(django_filters.FilterSet):
    color = django_filters.CharFilter(lookup_expr='iexact')
    year = min_year = django_filters.NumberFilter(field_name="game__year")
    person = django_filters.CharFilter(field_name="person__name", lookup_expr='icontains')
    class Meta:
        model = Medal
        fields = ['color', 'year', 'person']


class PersonFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='icontains')
    sex = django_filters.CharFilter(lookup_expr='iexact')
    year = django_filters.NumberFilter(field_name="year_of_birth")
    min_year = django_filters.NumberFilter(field_name="year_of_birth", lookup_expr='gt')
    max_year = django_filters.NumberFilter(field_name="year_of_birth", lookup_expr='lt')
    nationality = django_filters.CharFilter(field_name="nationality__name", lookup_expr='iexact')
    # medal = django_filters.CharFilter(field_name="medals__color", lookup_expr='iexact')

    class Meta:
        model = Person
        fields = ['name', 'sex', 'year', 'min_year', 'max_year', 'nationality']
        # fields = ['name', 'sex', 'year', 'min_year', 'max_year', 'nationality', 'medal']
