from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic

# Create your views here.
class Data(generic.TemplateView, LoginRequiredMixin):
    template_name = 'businessData.html'