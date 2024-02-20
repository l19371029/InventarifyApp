from django.db import models

# Create your models here.
class Catalogue(models.Model):
    nombre_activo = models.CharField(max_length=100)
    areas = models.CharField(max_length=100)
    tipo_activo = models.CharField(max_length=100)
