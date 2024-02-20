from django.urls import path
from catalogo.views import Catalogo
from catalogo import views

urlpatterns = [
    path ('catalogo/', Catalogo.as_view(), name='catalogo'),
    path('admin/agregar_departamento/', views.agregar_departamento, name='agregar_departamento'),
    path('admin/lista_departamentos/', views.lista_departamentos, name='lista_departamentos'),
]
