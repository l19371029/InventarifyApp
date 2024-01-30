from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class UserProfile(models.Model):
    option = [
        ('activo,' 'Activo'),
        ('inactivo', 'Inactivo'),
    ]
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    proceso = models.CharField(max_length=100)
    tipo_usuario = models.CharField(max_length=50)
    estatus = models.CharField(max_length=20, choices=(('activo', 'Activo'), ('inactivo', 'Inactivo')))
    password = models.CharField(max_length=128, default='default_password') 

    def __str__(self):
        return self.user.username