from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView
from django.views import View
from django.http import HttpResponse
from django.contrib.auth.mixins import LoginRequiredMixin
import os
from django.conf import settings

# Create your views here.
class Support(LoginRequiredMixin, TemplateView):
    template_name = 'support.html'