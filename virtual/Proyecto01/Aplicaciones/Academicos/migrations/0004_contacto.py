# Generated by Django 4.2.7 on 2023-11-19 22:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Academicos', '0003_alter_alumno_id_alumno'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contacto',
            fields=[
                ('codigo', models.CharField(max_length=6, primary_key=True, serialize=False)),
                ('foto', models.ImageField(upload_to='fotos/')),
                ('nombre', models.CharField(max_length=100)),
                ('apellido', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
                ('fecha_nacimiento', models.DateField()),
            ],
        ),
    ]