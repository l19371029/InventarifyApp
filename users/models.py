from django.db import models
from django.contrib.auth.models import User

# your models her
TIPOS_DE_USUARIO = [
    ('Creador y Editor de datos', 'Creador y Editor de datos'),
    ('Usuario', 'Usuario'),
    ('Administrador de Roles', 'Administrador de Roles'),
]

class Role(models.Model):
    nombre = models.CharField(max_length=255)

    def __str__(self):
        return self.nombre

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    user_type = models.CharField(max_length=255, choices=TIPOS_DE_USUARIO)
    user_rol = models.ForeignKey(Role, on_delete=models.SET_NULL, blank=True, null=True)

    def __str__(self):
        return self.user.username