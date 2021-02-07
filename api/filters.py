import django_filters
from .models import Game

class GameFilter(django_filters.FilterSet):
    season = django_filters.CharFilter(lookup_expr='iexact')
    min_year = django_filters.NumberFilter(field_name="year", lookup_expr='gt')
    max_year = django_filters.NumberFilter(field_name="year", lookup_expr='lt')
    class Meta:
    	model = Game
    	fields = ['season', 'min_year', 'max_year']