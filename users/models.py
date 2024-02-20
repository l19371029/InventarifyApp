from django.db import models
from django.contrib.auth.models import User

# your models her
class Rol(models.Model):
    rol = models.CharField(max_length=100)

    def __str__(self):
        return self.rol
    
class Funtionality(models.Model):
    funcionality = models.CharField(max_length=100)
    rol = models.ForeignKey(Rol, on_delete=models.CASCADE)

    def __str__(self):
        return self.funcionality

class Perfil(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    user_type = models.CharField(max_length=100, blank=True, null=True)
    user_rol = models.CharField(max_length=100, blank=True, null=True)
    status = models.CharField(max_length=10, default='activo')

    rol = models.ForeignKey(Rol, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.user.username