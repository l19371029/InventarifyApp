from django.contrib import admin
from django.contrib.auth.models import User, Group
from .models import Inventario, Historial, Catalogo, DatosEmpresa, Soporte

class InventarioAdmin(admin.ModelAdmin):
    def has_view_permission(self, request, obj=None):
        return request.user.groups.filter(name='Viewer').exists()

class HistorialAdmin(admin.ModelAdmin):
    def has_view_permission(self, request, obj=None):
        return request.user.groups.filter(name='Viewer').exists()

class CatalogoAdmin(admin.ModelAdmin):
    def has_change_permission(self, request, obj=None):
        return request.user.groups.filter(name='Editor').exists()

class DatosEmpresaAdmin(admin.ModelAdmin):
    def has_change_permission(self, request, obj=None):
        return request.user.groups.filter(name='Editor').exists()

class SoporteAdmin(admin.ModelAdmin):
    def has_change_permission(self, request, obj=None):
        return request.user.groups.filter(name='Editor').exists()

admin.site.register(Inventario, InventarioAdmin)
admin.site.register(Historial, HistorialAdmin)
admin.site.register(Catalogo, CatalogoAdmin)
admin.site.register(DatosEmpresa, DatosEmpresaAdmin)
admin.site.register(Soporte, SoporteAdmin)
