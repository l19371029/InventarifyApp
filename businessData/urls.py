from django.urls import path
from businessData.views import Data

urlpatterns = [
    path ('datos-de-empresa/', Data.as_view(), name='businessData'),
]
