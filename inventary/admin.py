from django.contrib import admin
from .models import Item, Items, ItemBusiness

# Register your models here.
admin.site.register(Items)
admin.site.register(ItemBusiness)
