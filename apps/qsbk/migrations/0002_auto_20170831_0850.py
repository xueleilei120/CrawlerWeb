# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-08-31 08:50
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('qsbk', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='qiushiarticle',
            name='content',
            field=models.TextField(default='无', verbose_name=''),
        ),
    ]
