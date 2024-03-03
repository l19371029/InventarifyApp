from django.urls import path
#Vista para Login y Logout
from django.contrib.auth import views as auth_views
from django.contrib.auth.views import LogoutView
from generales.views import Home, RegisterPassword
from generales import views

urlpatterns = [
    path ('', Home.as_view(), name='home'),
    #Login y Logout
    path ('login/', auth_views.LoginView.as_view(template_name='login.html'), name='login'),
    path ('logout/', LogoutView.as_view(template_name='login.html', next_page='/'), name='logout'),
    #new password
    path('register-password/', RegisterPassword.as_view(), name='RegisterPassword'),
]