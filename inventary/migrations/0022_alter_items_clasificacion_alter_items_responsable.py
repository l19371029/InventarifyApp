# Generated by Django 5.0 on 2024-01-04 02:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventary', '0021_alter_items_descripcion_activo_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='items',
            name='clasificacion',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='items',
            name='responsable',
            field=models.CharField(default='', max_length=100, null=True),
        ),
    ]
