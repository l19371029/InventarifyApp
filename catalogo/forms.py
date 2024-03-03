from django import forms
from .models import Catalogue

class CatalogueForm(forms.ModelForm):
    class Meta:
        model = Catalogue
        fields = ['name_active', 'areas']