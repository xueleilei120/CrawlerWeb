# -*- coding: utf-8 -*-

import xadmin

from zhihu.models import ZhiHuQuestion

# 知乎问题后台管理
class ZhiHuQuestionAdmin(object):
    list_display = ['zhihu_id', 'title', 'topics', 'answer_num', 'comments_num',
                    'watch_user_num', 'click_num', 'crawl_time', 'go_to']
    search_fields = ['title', 'topics']
    list_filter = ['title', 'topics']


xadmin.site.register(ZhiHuQuestion, ZhiHuQuestionAdmin)
