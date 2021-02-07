from django.urls import path
from . import views


urlpatterns = [
    path('gamesclass/', views.GameListClass.as_view()),

    path('sports/', views.sport_list),
    path('games/', views.game_list),
    path('events/', views.event_list),
    path('persons/', views.person_list),
    path('medals/', views.medal_list),
    path('countries/', views.country_list),


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
