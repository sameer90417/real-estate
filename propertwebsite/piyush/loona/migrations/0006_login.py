# Generated by Django 4.0.6 on 2022-08-07 14:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loona', '0005_remove_add_property_state1'),
    ]

    operations = [
        migrations.CreateModel(
            name='Login',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254)),
                ('Password', models.TextField()),
            ],
        ),
    ]