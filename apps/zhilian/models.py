# _*_ encoding:utf-8 _*_
from django.db import models

# Create your models here.


class ZhiLianJob(models.Model):
    title = models.CharField(verbose_name=u"标题", max_length=200)
    url = models.URLField(verbose_name=u"链接", max_length=200)
    salary_max = models.IntegerField(verbose_name=u"最高薪资")
    salary_min = models.IntegerField(verbose_name=u"最低薪资")
    work_years = models.IntegerField(verbose_name=u"工作年限")
    work_city = models.CharField(verbose_name=u"工作城市", max_length=20)
    degree_need = models.CharField(verbose_name=u"学历", max_length=20)
    job_type = models.CharField(verbose_name=u"工作类型", blank=True, null=True, max_length=50)
    publish_time = models.CharField(verbose_name=u"发布时间", blank=True, null=True, max_length=20)
    job_advantage = models.CharField(verbose_name=u"职位诱惑", blank=True, null=True, max_length=200)
    job_desc = models.TextField(verbose_name=u"职位描述")
    job_addr = models.CharField(verbose_name=u"工作地址", max_length=150)
    company_name = models.CharField(verbose_name=u"公司名称", max_length=200)
    crawl_time = models.DateTimeField(verbose_name=u"抓取时间")
    user_nums = models.IntegerField(verbose_name=u"需求人数")

    class Meta:
        verbose_name = u"智联职位信息"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='{0}'>链接跳转</a>".format(self.url))
    go_to.short_description = u"链接"
