from django.shortcuts import render, redirect
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.views import generic
from .forms import CustomUserCreationForm
from django.urls  import reverse_lazy
from django.shortcuts import get_object_or_404


class UserAdmin(LoginRequiredMixin, generic.TemplateView):
    template_name = 'userFilter.html'

class UserView(LoginRequiredMixin, generic.TemplateView):
    template_name = 'useradmin.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['users'] = User.objects.all()
        context['form'] = CustomUserCreationForm()
        return context

    def post(self, request, *args, **kwargs):
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.set_password(form.cleaned_data['password1'])
            user.save()
            return redirect('usersList')  

        context = self.get_context_data()
        context['form'] = form
        print(form.errors)
        return render(request, self.template_name, context)


class UserUpdate(generic.UpdateView):
    model = User
    template_name = 'UserUpdate.html'
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('usersList')
    
class UserDelete(generic.DeleteView, LoginRequiredMixin):
    model = User
    template_name = 'UserDelete.html'
    context_object_name = 'users'
    success_url = reverse_lazy('usersList')