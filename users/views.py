from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.views import generic
from .forms import CustomUserCreationForm
from django.urls import reverse_lazy
from django.utils.decorators import method_decorator
from .models import Perfil
from django.core.mail import send_mail
import random
import string

def es_creador_editor(user):
    return user.perfil.rol.nombre == 'Creador y Editor de datos'

@method_decorator(login_required, name='dispatch')
class UserAdmin(LoginRequiredMixin, generic.TemplateView):
    template_name = 'userFilter.html'

    def test_func(self):
        return self.request.user.perfil.user_type == 'admin'

    @method_decorator(user_passes_test(es_creador_editor))
    def post(self, request, *args, **kwargs):
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            password = ''.join(random.choices(string.ascii_letters + string.digits, k=12))
            user.set_password(password)
            user.save()

            perfil = Perfil(user=user, user_type=form.cleaned_data['user_type'], user_rol=form.cleaned_data['user_rol'])
            perfil.save()

            subject = 'Bienvenido a tu nueva cuenta'
            message = f'Tu contraseña es: {password}'
            send_mail(subject, message, 'from@example.com', [user.email])

            return redirect('usersList')

    def get(self, request, *args, **kwargs):
        usuarios = User.objects.filter(perfil__user_type='tipo_deseado')
        return render(request, 'useradmin.html', {'usuarios': usuarios})

    @method_decorator(user_passes_test(es_creador_editor))
    def formulario_usuario(self, request):
        usuarios = User.objects.filter(perfil__user_type='tipo_deseado')
        return render(request, 'useradmin.html', {'usuarios': usuarios})


class UserView(LoginRequiredMixin, generic.FormView):
    template_name = 'useradmin.html'
    form_class = CustomUserCreationForm
    success_url = reverse_lazy('usersList')

    def form_valid(self, form):
        user = form.save(commit=False)
        password = form.cleaned_data['password1']
        user.set_password(password)
        user.save()

        return super().form_valid(form)


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
