from django.shortcuts import render, redirect
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic
from .models import Catalogue
from .forms import CatalogueForm

# Create your views here.
class CatalogueCV(generic.TemplateView, LoginRequiredMixin):
    template_name = 'catalogo.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['form'] = CatalogueForm()
        context['catalogue'] = Catalogue.objects.all()
        return context
    
    def post(self, request, *args, **kwargs):
        form = CatalogueForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('catalogue')
        else:
            context = self.get_context_data(form=form)
            return self.render_to_response(context)