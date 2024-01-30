from django.urls import path
from .views import UserDelete, UserUpdate, UserView, UserAdmin

urlpatterns = [
    path('usuarios/opcion', UserAdmin.as_view(), name="UserAdmin"),
    path('usuarios/', UserView.as_view(), name="usersList"),
    path('usuario/Eliminar/<int:pk>', UserDelete.as_view(), name="userDelete"),
    path('usuario/editar/<int:pk>/', UserUpdate.as_view(), name="userEdit"),
]
 