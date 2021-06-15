from .views import userprofile
from django.urls import path, include


urlpatterns = [
    path('v1/user/login', userprofile.LoginViewSet.as_view()),
    path('v1/user/logout', userprofile.LogoutViewSet.as_view()),
]

