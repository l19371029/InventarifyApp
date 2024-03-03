from django import forms
from .models import Business

class BusinessForm(forms.ModelForm):
    class Meta:
        model = Business
        fields = ['imagen', 'nombre']
        widgets = {
            'imagen': forms.ClearableFileInput(),
        }