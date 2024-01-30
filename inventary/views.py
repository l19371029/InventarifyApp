from django.shortcuts import render
from django.urls  import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views import generic, View
from .models import Items, ItemBusiness
from .forms import ItemForm, ItemBusinessForm
from io import BytesIO
from django.http import HttpResponse
from reportlab.lib.pagesizes import letter, landscape
from reportlab.platypus import Table, TableStyle
from reportlab.lib import colors
from reportlab.pdfgen import canvas
from django.http import HttpResponseRedirect
 

def generate_pdf(request):
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'filename="Inventario.pdf"'

    buffer = BytesIO()
    p = canvas.Canvas(buffer, pagesize=landscape(letter))

    items = Items.objects.all()
    itemsBusiness = ItemBusiness.objects.first()  

    # Table style
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.black),
        ('TEXTCOLOR', (0, 0), (-1, 0), colors.black),
        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
    ]

    # First table
    data_table2 = [
        ["Imagen", "Inventario de Activos de Información", "Fecha de revisión", itemsBusiness.fecha_revision],
        [itemsBusiness.imagen,"", "Fecha de elaboración", itemsBusiness.fecha_elaboracion],
        ["", "", "Versión", itemsBusiness.version],
        ["", "", "Código", itemsBusiness.codigo],
    ]

    style_table2 = style.copy()
    style_table2.extend([
        ('SPAN', (1, 3), (1, 0)),  
        ('SPAN', (0, 3), (0, 0)),  
        ('SPAN', (0, 0), (0, 0)),
    ])

    col_widths_table2 = [170, 320, 100, 100]

    total_width_table2 = sum(col_widths_table2)
    x_start_table2 = 50  
    y_start_table2 = 520  

    table2 = Table(data_table2, colWidths=col_widths_table2)
    table2.setStyle(TableStyle(style_table2))
    table2.wrapOn(p, landscape(letter)[1], landscape(letter)[0])
    table2.drawOn(p, x_start_table2, y_start_table2)

    p.drawString(x_start_table2, y_start_table2 - 50, '' * int(total_width_table2 / 7))

    #Second Table
    data_table1 = [
        ["No.", "Nombre del\nactivo", "Descripción del\nactivo", "Departamento/\nÁrea", "Responsable/\nPropietario",
         "Tipo de\nubicación", "Tipo de\nactivo", "C", "I", "D", "Criticidad\n(Valor)", "Nivel de\nclasificación"]
    ]

    for index, item in enumerate(items, start=1):
        row_data = [
            item.numero,
            item.nombre_activo,
            item.descripcion_activo,
            item.area,
            item.responsable,
            item.ubicacion,
            item.tipo_activo,
            item.c,
            item.i,
            item.d,
            item.valor,
            item.clasificacion
        ]
        data_table1.append(row_data)

    col_widths_table1 = [20, 70, 80, 80, 120, 70, 50, 20, 20, 20, 70, 70]

    total_width_table1 = sum(col_widths_table1)
    x_start_table1 = 50  
    y_start_table1 = y_start_table2 - 100 

    table1 = Table(data_table1, colWidths=col_widths_table1)
    table1.setStyle(TableStyle(style))
    table1.wrapOn(p, landscape(letter)[1], landscape(letter)[0]) 
    table1.drawOn(p, x_start_table1, y_start_table1)

    p.drawString(x_start_table2, y_start_table2 - 50, '' * int(total_width_table1 / 7))

    p.showPage()
    p.save()

    pdf = buffer.getvalue()
    buffer.close()

    response.write(pdf)

    return response


class SelectInventari(LoginRequiredMixin, generic.TemplateView):
    template_name = 'SelectInventari.html' 

class Clasificacion(LoginRequiredMixin, generic.TemplateView):
    template_name = 'clasificacion.html'

#---------------------- Inventari -------------------------------------------------
class InventariOne(LoginRequiredMixin, View):
    template_name = 'inventariOne.html'

    def get(self, request, *args, **kwargs):
        items = Items.objects.all()
        item_businesses = ItemBusiness.objects.all()
        item_form = ItemForm()
        item_business_form = ItemBusinessForm()

        context = {
            'items': items,
            'item_businesses': item_businesses,
            'item_form': item_form,
            'item_business_form': item_business_form,
        }

        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        item_form = ItemForm(request.POST)
        item_business_form = ItemBusinessForm(request.POST, request.FILES)

        if item_form.is_valid():
            item_form.save()

        if item_business_form.is_valid():
            item_business_form.save()

        return HttpResponseRedirect(reverse_lazy('inventariOne'))


class InventariTwo(LoginRequiredMixin, View):
    template_name = 'inventariTwo.html'

    def get(self, request, *args, **kwargs):
        items = Items.objects.all()
        item_businesses = ItemBusiness.objects.all()
        item_form = ItemForm()
        item_business_form = ItemBusinessForm()

        context = {
            'items': items,
            'item_businesses': item_businesses,
            'item_form': item_form,
            'item_business_form': item_business_form,
        }

        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        item_form = ItemForm(request.POST)
        item_business_form = ItemBusinessForm(request.POST, request.FILES)

        if item_form.is_valid():
            item_form.save()

        if item_business_form.is_valid():
            item_business_form.save()

        return HttpResponseRedirect(reverse_lazy('inventariTwo')) 

class ItemDelete(generic.DeleteView):
    model = Items
    template_name = 'itemDelete.html'
    context_object_name = 'items'
    success_url = reverse_lazy('inventariOne')

class ItemDeleteTwo(generic.DeleteView):
    model = Items
    template_name = 'itemDeleteTwo.html'
    context_object_name = 'items'
    success_url = reverse_lazy('inventariTwo')

class ItemEdit(generic.UpdateView):
    model = Items
    template_name = 'itemCreate.html'
    form_class = ItemForm
    success_url = reverse_lazy('inventariOne')

class ItemEditTwo(generic.UpdateView):
    model = Items
    template_name = 'itemCreateTwo.html'
    form_class = ItemForm
    success_url = reverse_lazy('inventariTwo')

#---------------------------------------------------------------------------
class Inventarify(LoginRequiredMixin):
    template_name = 'SelectInventari.html'

class InventariSection(LoginRequiredMixin, generic.ListView):
    model = Items
    queryset = Items.objects.all()
    template_name = 'inventariSection.html'
    context_object_name = 'items'
