from django.db import models

# Create your models here.
class Business(models.Model):
    imagen = models.ImageField(upload_to='images/', null=True, blank=True)
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.imagen}"