from django.urls import path
from . import views


urlpatterns = [
    path('countries/', views.CountryList.as_view(), name='CountryList'),
    path('events/', views.EventList.as_view(), name='EventList'),
    path('games/', views.GameList.as_view(), name='GameList'),
    path('medals/', views.MedalList.as_view(), name='MedalList'),
    path('persons/', views.PersonList.as_view(), name='PersonList'),
    path('sports/', views.SportList.as_view(), name='SportList'),

    path('countries/<int:pk>', views.country_detail, name='CountryDetail'),
    path('countries/<str:name>', views.country_detail_name, name='CountryDetailName'),
    path('events/<int:pk>', views.event_detail, name='EventDetail'),
    path('games/<int:pk>', views.game_detail, name='GameDetail'),
    path('medals/<int:pk>', views.medal_detail, name='MedalDetail'),
    path('persons/<int:pk>', views.person_detail, name='PersonDetail'),
    path('sports/<int:pk>', views.sport_detail, name='SportDetail'),


    path('games/<int:pk>/events/', views.game_events_list),
    path('game-event/<int:pk>', views.game_event_redirect, name='GameEventRedirect'),
    path('games/<int:game_pk>/events/<int:event_pk>', views.game_event_winners, name='gameevent-detail'),

    path('countries/<int:pk>/persons/', views.country_persons_list),

    path('', views.home_page),
    path('test/', views.test),
]

# path('games/<int:pk>/medals/', views.game_medals_list),
