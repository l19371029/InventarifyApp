from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic
from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect

# Create your views here.
class Home(LoginRequiredMixin, generic.TemplateView):
    template_name = 'index.html'
    login_url = 'login'
