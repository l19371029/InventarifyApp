from django.db import models

#Cretae your models her
class Business(models.Model):
    imagen = models.ImageField(upload_to='images/', null=True, blank=True)
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre