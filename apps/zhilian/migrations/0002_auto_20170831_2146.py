# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-08-31 21:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zhilian', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='zhilianjob',
            name='publish_time',
            field=models.CharField(blank=True, max_length=20, null=True, verbose_name='发布时间'),
        ),
    ]
