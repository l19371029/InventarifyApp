from django.urls import path
from catalogo.views import CatalogueCV

urlpatterns = [
    path ('catalogo/', CatalogueCV.as_view(), name='catalogue'),
]
