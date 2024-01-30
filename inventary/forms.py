from django import forms
from .models import Items, ItemBusiness

class ItemForm(forms.ModelForm):
    class Meta:
        model = Items
        fields = '__all__'
    
    # numero = forms.IntegerField(
    #     widget=forms.NumberInput(attrs={'class': 'form-control', 'min': 1, 'oninput': 'validarNumero()'}),
    # )
    # nombre_activo = forms.ChoiceField(
    #     choices=[('', 'Nombre del activo'),
    #              ('Acceso', 'Acceso'),
    #              ('Acuerdos de confidencialidad', 'Acuerdos de confidencialidad'),
    #              ('Aplicaciones y software', 'Aplicaciones y software'),
    #              # ... agregar el resto de las opciones ...
    #              ('Otro', 'Otro')],
    #     widget=forms.Select(attrs={'class': 'form-control'}),
    # )
    # descripcion_activo = forms.CharField(
    #     widget=forms.TextInput(attrs={'class': 'form-control'}),
    # )
    # area = forms.ChoiceField(
    #     choices=[('', 'Departamentos/Áreas'),
    #              ('RH - Recursos Humanos', 'RH - Recursos Humanos'),
    #              ('EHS - Medio Ambiente, Salud y Seguridad', 'EHS - Medio Ambiente, Salud y Seguridad'),
    #              # ... agregar el resto de las opciones ...
    #              ('Otros', 'Otros')],
    #     widget=forms.Select(attrs={'class': 'form-control'}),
    # )
    # responsable = forms.CharField(
    #     widget=forms.TextInput(attrs={'class': 'form-control'}),
    # )
    # ubicacion = forms.ChoiceField(
    #     choices=[('', 'Ubicación'),
    #              ('Físico', 'Físico'),
    #              ('Lógico', 'Lógico')],
    #     widget=forms.Select(attrs={'class': 'form-control'}),
    # )
    # tipo_activo = forms.CharField(
    #     widget=forms.TextInput(attrs={'class': 'form-control'}),
    # )
    # c = forms.IntegerField(
    #     widget=forms.NumberInput(attrs={'class': 'form-control', 'min': 1, 'oninput': 'updateCriticidad()'}),
    # )
    # i = forms.IntegerField(
    #     widget=forms.NumberInput(attrs={'class': 'form-control', 'min': 1, 'oninput': 'updateCriticidad()'}),
    # )
    # d = forms.IntegerField(
    #     widget=forms.NumberInput(attrs={'class': 'form-control', 'min': 1, 'oninput': 'updateCriticidad()'}),
    # )
    # valor = forms.IntegerField(
    #     widget=forms.NumberInput(attrs={'class': 'form-control', 'readonly': True}),
    # )
    # clasificacion = forms.CharField(
    #     widget=forms.TextInput(attrs={'class': 'form-control', 'readonly': True}),
    # )

class ItemBusinessForm(forms.ModelForm):
    class Meta:
        model = ItemBusiness
        fields = '__all__'
  