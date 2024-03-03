from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic
from django.urls import reverse_lazy
from django.contrib.auth.views import PasswordChangeView
from django.contrib.auth import update_session_auth_hash

# Create your views here.
class Home(LoginRequiredMixin, generic.TemplateView):
    template_name = 'index.html'
    login_url = 'login'

class RegisterPassword(LoginRequiredMixin, PasswordChangeView):
    template_name = 'registerPassword.html'
    success_url = reverse_lazy("home")

    def form_valid(self, form):
        user = self.request.user
        new_password = form.cleaned_data['new_password1']

        user.set_password(new_password)
        user.save()

        update_session_auth_hash(self.request, user)

        return super().form_valid(form)
    
    def form_invalid(self, form):
        
        return super().form_invalid(form)