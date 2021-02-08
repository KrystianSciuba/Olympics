from django.urls import path
from . import views


urlpatterns = [
    path('sports/', views.SportList.as_view(), name='SportList'),
    path('events/', views.EventList.as_view(), name='EventList'),
    path('games/', views.GameList.as_view(), name='GameList'),
    path('countrys/', views.CountryList.as_view(), name='CountryList'),
    path('medals/', views.MedalList.as_view(), name='MedalList'),
    path('persons/', views.PersonList.as_view(), name='PersonList'),


    path('persons/<int:pk>', views.person_detail, name='PersonDetail'),
    path('medals/<int:pk>', views.medal_detail, name='MedalDetail'),
    path('sports/<int:pk>', views.sport_detail, name='SportDetail'),
    path('games/<int:pk>', views.game_detail, name='GameDetail'),
    path('events/<int:pk>', views.event_detail, name='EventDetail'),


    path('games/<int:pk>/medals/', views.game_medal),
    path('games/<int:pk>/events/', views.game_events),


    path('games/<int:gameid>/events/<int:eventid>', views.game_event_detail),


    path('test/', views.test),
]
