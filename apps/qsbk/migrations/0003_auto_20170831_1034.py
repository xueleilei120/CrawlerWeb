# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-08-31 10:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('qsbk', '0002_auto_20170831_0850'),
    ]

    operations = [
        migrations.AlterField(
            model_name='qiushiarticle',
            name='content',
            field=models.TextField(default='无', verbose_name='内容'),
        ),
    ]
