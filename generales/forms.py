from django import forms
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.models import User

class EditPerfilForm(PasswordChangeForm):
    class Meta:
        model = User