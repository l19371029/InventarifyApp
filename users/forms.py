from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Perfil

class CustomUserCreationForm(UserCreationForm):
    email = forms.EmailField(required=True)
    user_type = forms.CharField(max_length=100, required=True)
    user_rol = forms.CharField(max_length=100, required=True)

    class Meta:
        model = User
        fields = ['email']  

    def save(self, commit=True):
        user = super(CustomUserCreationForm, self).save(commit=False)
        user.email = self.cleaned_data["email"]
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()

        # Crear el perfil asociado al usuario
        perfil = Perfil.objects.create(
            user=user,
            user_type=self.cleaned_data["user_type"],
            user_rol=self.cleaned_data["user_rol"]
        )
        return user