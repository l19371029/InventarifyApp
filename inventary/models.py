from django.db import models

# Create your models here.
class Item(models.Model):
    numero = models.DecimalField(max_digits=20, decimal_places=2, blank=False, null=True)
    nombre_activo = models.CharField(max_length=100, blank=False)
    descripcion_activo = models.TextField(max_length=100, blank=False)
    area = models.CharField(max_length=100, blank=False)
    responsable = models.CharField(max_length=100, default="", blank=False)
    ubicacion = models.CharField(max_length=20, blank=False)
    tipo_activo = models.CharField(max_length=20, blank=False)
    c = models.DecimalField(max_digits=20, decimal_places=2, blank=False, null=False)
    i = models.DecimalField(max_digits=20, decimal_places=2, blank=False, null=False)
    d = models.DecimalField(max_digits=20, decimal_places=2, blank=False, null=False)
    valor = models.DecimalField(max_digits=20, decimal_places=2, default=0.0, blank=False, null=False)
    clasificacion = models.CharField(max_length=50, default="", null=False)

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.numero}, {self.nombre_activo}, {self.descripcion_activo}, {self.area}, {self.responsable}, {self.ubicacion}, {self.tipo_activo}, {self.c}, {self.i}, {self.d}, {self.valor}"

class Planta(models.Model):
    lugar_planta = models.CharField(max_length=100)

    def __str__(self):
        return self.lugar_planta
    
class Modelo(models.Model):
    modelo_activo = models.CharField(max_length=100)

    def __str__(self):
        return self.modelo_activo

class Sistema(models.Model):
    sistema_software = models.CharField(max_length=100)

    def __str__(self):
        return self.sistema_software

class Items(models.Model):
    numero = models.IntegerField(blank=False, null=True)
    nombre_activo = models.CharField(max_length=20, blank=False)
    descripcion_activo = models.CharField(max_length=20, blank=False)
    area = models.CharField(max_length=100, blank=False)
    responsable = models.CharField(max_length=100, default="", blank=False, null=True)
    ubicacion = models.CharField(max_length=20, blank=False)
    tipo_activo = models.CharField(max_length=20, blank=False)
    c = models.IntegerField(blank=False, null=False)
    i = models.IntegerField(blank=False, null=False)
    d = models.IntegerField(blank=False, null=False)
    valor = models.IntegerField(default=0, blank=False, null=False)
    clasificacion = models.CharField(max_length=50, default="", null=True, blank=True)

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)


    def __str__(self):
        return f"{self.numero}, {self.nombre_activo}, {self.descripcion_activo}, {self.area}, {self.responsable}, {self.ubicacion}, {self.tipo_activo}, C:{self.c}, I:{self.i}, D:{self.d}, Valor:{self.valor}, Clasificación:{self.clasificacion}"

class ItemBusiness(models.Model):
    codigo = models.CharField(max_length=255)
    version = models.CharField(max_length=255)
    fecha_elaboracion = models.DateField()
    fecha_revision = models.DateField()
    
    def __str__(self):
        return f"{self.codigo}, {self.version}, {self.fecha_elaboracion}, {self.fecha_revision}"
