# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

from CrawlerWeb.settings import MEDIA_URL

# Create your models here.
class QiuShiArticle(models.Model):
    author = models.CharField(verbose_name=u"作者", default=u"匿名", max_length=200)
    url = models.URLField(verbose_name=u"文章连接")
    content = models.TextField(verbose_name=u"内容", default=u"无")
    image = models.ImageField(verbose_name=u"图片", default="full/default.jpg")
    crawl_time = models.DateTimeField(verbose_name=u"抓取时间", default=datetime.now)

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='{0}'>链接跳转</a>".format(self.url))
    go_to.short_description = u"跳转"

    def show_image(self):
        from django.utils.safestring import mark_safe
        str_t = '''<a href="{0}{1}" target="_blank" title="图片" data-gallery="gallery">
                        <img src="{0}{1}" class="field_img">
                    </a>'''.format(MEDIA_URL, self.image)
        return mark_safe(str_t)
    show_image.short_description = u"图片"


    class Meta:
        verbose_name = u"糗事百科文章"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.author