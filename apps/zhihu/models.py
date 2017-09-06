# _*_ encoding:utf-8 _*_
from django.db import models

# Create your models here.


class ZhiHuQuestion(models.Model):
    zhihu_id = models.CharField(verbose_name=u"知乎ID", max_length=50)
    topics = models.CharField(verbose_name=u"主题标签", max_length=200)
    url = models.CharField(verbose_name=u"链接", max_length=200)
    title = models.CharField(verbose_name=u"标题", max_length=200)
    content = models.TextField(verbose_name=u"内容")
    answer_num = models.IntegerField(verbose_name=u"回答个数")
    comments_num = models.IntegerField(verbose_name=u"评论个数")
    watch_user_num = models.IntegerField(verbose_name=u"关注人数")
    click_num = models.IntegerField(verbose_name=u"浏览人数")
    crawl_time = models.DateTimeField(verbose_name=u"抓取时间")

    class Meta:
        verbose_name = u"知乎问题"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='{0}'>链接跳转</a>".format(self.url))
    go_to.short_description = u"链接"
