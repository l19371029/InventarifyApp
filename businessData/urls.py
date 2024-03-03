from django.urls import path
from businessData.views import Data, DeleteData
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path ('datos-de-empresa/', Data.as_view(), name='businessData'),
    path ('datos-elimiar/<int:pk>/', DeleteData.as_view(), name='deleteData'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

