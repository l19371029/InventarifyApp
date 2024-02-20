from django import forms
from .models import Items, ItemBusiness

class ItemForm(forms.ModelForm):
    class Meta:
        model = Items
        fields = '__all__'

class ItemBusinessForm(forms.ModelForm):
    class Meta:
        model = ItemBusiness
        fields = '__all__'
  