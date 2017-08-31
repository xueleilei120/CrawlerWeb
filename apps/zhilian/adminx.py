# -*- coding: utf-8 -*-

import xadmin
from xadmin import views

from zhilian.models import ZhiLianJob

# 智联文章后台管理
class ZhiLianJobAdmin(object):
    list_display = ['title', 'salary_max', 'salary_min', 'work_years', 'work_city', 'degree_need',
                    'job_type', 'publish_time', 'crawl_time', 'job_advantage',
                    'job_addr', 'company_name', 'user_nums', 'go_to']
    search_fields = ['title', 'work_years']
    list_filter = ['title', 'work_years']


xadmin.site.register(ZhiLianJob, ZhiLianJobAdmin)
