from django.contrib import admin
from django.urls import path, include
from api.urls import urlpatterns
from . import views


urlpatterns = [
    path('', views.home_page),

    path('admin/', admin.site.urls),
    path('api/', include('api.urls')),
    path('test/', views.test),
]
