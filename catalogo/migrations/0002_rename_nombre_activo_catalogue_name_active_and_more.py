# Generated by Django 5.0 on 2024-02-28 06:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalogo', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='catalogue',
            old_name='nombre_activo',
            new_name='name_active',
        ),
        migrations.RenameField(
            model_name='catalogue',
            old_name='tipo_activo',
            new_name='type_active',
        ),
    ]
