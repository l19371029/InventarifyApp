from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic
from .forms import BusinessForm
from .models import Business
from django.views.generic.edit import DeleteView
from django.urls  import reverse_lazy 


# Create your views here.
class Data(generic.TemplateView, LoginRequiredMixin):
    template_name = 'businessData.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['form'] = BusinessForm()
        context['businesses'] = Business.objects.all()
        return context
    
    def post(self, request, *args, **kwargs):
        form = BusinessForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('businessData')  
        else:
            context = self.get_context_data(form=form)
            return self.render_to_response(context)
        
class DeleteData(DeleteView, LoginRequiredMixin):
    model = Business
    template_name = 'businessDelete.html'

    def post(self, request, *args, **kwargs):
        business = get_object_or_404(self.model, pk=kwargs['pk'])
        business.delete()
        return redirect('businessData')