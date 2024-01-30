from django.urls import path
from support.views import Support
urlpatterns = [
    path ('soporte/', Support.as_view(), name='support'),
]
