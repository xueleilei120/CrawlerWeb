# -*- coding: utf-8 -*-

import xadmin
from xadmin import views

from qsbk.models import QiuShiArticle

class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True

class GlobalSettings(object):
    site_title = "个人爬虫系统"
    site_footer = "我的爬虫平台"
    menu_style = "accordion"


# 分类后台管理
class QiuShiArticleAdmin(object):
    list_display = ['author', 'content', 'show_image', 'crawl_time', 'go_to']
    search_fields = ['author', 'content']
    list_filter = ['author', 'content']


xadmin.site.register(QiuShiArticle, QiuShiArticleAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)