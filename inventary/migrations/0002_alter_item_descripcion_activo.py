# Generated by Django 5.0 on 2023-12-22 04:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventary', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='descripcion_activo',
            field=models.TextField(max_length=100),
        ),
    ]
