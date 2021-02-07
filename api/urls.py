from django.urls import path
from . import views


urlpatterns = [
    path('sports/', views.SportList.as_view()),
    path('events/', views.EventList.as_view()),
    path('games/', views.GameList.as_view()),
    path('countrys/', views.CountryList.as_view()),
    path('medals/', views.MedalList.as_view()),
    path('persons/', views.PersonList.as_view()),


    path('persons/<int:pk>', views.person_detail),
    path('medals/<int:pk>', views.medal_detail),
    path('sports/<int:pk>', views.sport_detail),
    path('games/<int:pk>', views.game_detail),
    path('events/<int:pk>', views.event_detail),


    path('games/<int:pk>/medals/', views.game_medal),
    path('games/<int:pk>/events/', views.game_events),


    path('games/<int:gameid>/events/<int:eventid>', views.game_event_detail),


    path('test/', views.test),
]
