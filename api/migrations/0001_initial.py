# Generated by Django 3.0.3 on 2020-11-17 19:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Game',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('city', models.TextField(max_length=128)),
                ('year', models.IntegerField()),
                ('season', models.TextField(max_length=128)),
            ],
        ),
        migrations.CreateModel(
            name='Medal',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('color', models.TextField(max_length=128)),
                ('game', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Game')),
            ],
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField(max_length=128)),
                ('sex', models.TextField(max_length=128)),
                ('year_of_birth', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Sport',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField(max_length=256)),
                ('event', models.TextField(max_length=128)),
            ],
        ),
        migrations.CreateModel(
            name='PersonMedal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('external_url', models.TextField()),
                ('extra', models.BooleanField()),
                ('medal_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Medal')),
                ('person_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.Person')),
            ],
        ),
        migrations.AddField(
            model_name='person',
            name='medals',
            field=models.ManyToManyField(blank=True, through='api.PersonMedal', to='api.Medal'),
        ),
        migrations.AddField(
            model_name='person',
            name='nationality',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Country'),
        ),
        migrations.AddField(
            model_name='medal',
            name='sport',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Sport'),
        ),
    ]
