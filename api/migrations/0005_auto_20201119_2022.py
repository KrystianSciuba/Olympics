# Generated by Django 3.0.3 on 2020-11-19 19:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0004_personmedal_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='personmedal',
            name='external_url',
        ),
        migrations.RemoveField(
            model_name='personmedal',
            name='extra',
        ),
        migrations.RemoveField(
            model_name='personmedal',
            name='name',
        ),
    ]
