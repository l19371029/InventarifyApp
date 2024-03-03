from django.db import models

# Create your models here.
class Catalogue(models.Model):
    name_active = models.CharField(max_length=100)
    areas = models.CharField(max_length=100)

    def __str__(self):
        return self.name_active