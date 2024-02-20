from django.urls import path
from django.conf.urls.static import static
from django.conf import settings
from inventary import views
from inventary.views import Clasificacion, InventariOne, InventariTwo, ItemDelete, InventariSection, ItemEdit, ItemDeleteTwo, ItemEditTwo, History

urlpatterns = [
    path ('clasificacion/', Clasificacion.as_view(), name='clasificacion'),
    path ('inventario/1/', InventariOne.as_view(), name='inventariOne'),
    path ('inventario/2/', InventariTwo.as_view(), name='inventariTwo'),
    path ('generar_pdf/', views.generate_pdf, name='generate_pdf'),
    path ('eliminar/item/<int:pk>', ItemDelete.as_view(), name='itemDelete'),
    path ('eliminar/item/<int:pk>', ItemDeleteTwo.as_view(), name='itemDeleteTwo'),
    path ('inventario/', InventariSection.as_view(), name="inventariSection"),
    path ('editar/item/<int:pk>', ItemEdit.as_view(), name="itemEdit"),
    path ('editar/item-2/<int:pk>', ItemEditTwo.as_view(), name="itemEditTwo"),
    path ('historal/', History.as_view(), name="history")

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)