from django.shortcuts import render, redirect
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic
from .models import Catalogue
from .forms import CatalogueForm

# Create your views here.
class Catalogo(generic.TemplateView, LoginRequiredMixin):
    template_name = 'catalogo.html'

def agregar_departamento(request):
    if request.method == 'POST':
        form = CatalogueForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_departamentos')
    else:
        form = CatalogueForm()
    return render(request, 'catalogo.html', {'form': form})

def lista_departamentos(request):
    departamentos = Catalogue.objects.all()
    return render(request, 'catalogo.html', {'departamentos': departamentos})
