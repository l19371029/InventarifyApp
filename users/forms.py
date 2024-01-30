from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class CustomUserCreationForm(UserCreationForm):
    user_type = forms.CharField(max_length=30, required=True)
    status = forms.ChoiceField(choices=[('activo', 'Activo'), ('inactivo', 'Inactivo')], initial='activo', widget=forms.Select)

    class Meta:
        model = User
        fields = ['username', 'password1', 'password2', 'user_type', 'status']
        