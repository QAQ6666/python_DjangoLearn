# python_DjangoLearn
Learn python from a book


# 基于Django 的 小型博客
+ **交流QQ : 2606292175**
+ **前台主页面地址:<localhost:xxx/home>**

### 介绍
本博客项目借鉴于 《跟老齐学python Django 入门》里边的项目，代码一基于  python 3.7版本。成功运行
功能包括 文章过来，图片过来，管理员，用户等等。
所有页面均兼容IE10及以上现代浏览器。
配置数据库连接并启动 python manage.py runserver 即可
SQL 为 SQlite数据库

# 编写过程出错，记录日记
11-13  .   html 的注释对 Django 识别无效。不要加注释。
	{% load staticfiles %}和{% load adminstatic %} 在Django 2.1中已弃用， 在Django 3.0中已删除 。应该替换为  {% load static %}
	记得给每个 应用 url 配置 name=XXX, 否则会找不到路径
11-15
Django 内置模板 ，需要 setting那里开启 True，否则报错

11-29
Django 
报错:
Refused to display 'url' in a frame because it set 'X-Frame-Options' to 'deny'
X-Frame-Options 有三个值：
DENY ：表示该页面不允许在 frame 中展示，即便是在相同域名的页面中嵌套也不允许
SAMEORIGIN ：表示该页面可以在相同域名页面的 frame 中展示
ALLOW-FROM uri ：表示该页面可以在指定来源的 frame 中展示

指定视图函数不设置X-Frame-Options
@xframe_options_exempt
指定视图函数设置X-Frame-Options
@xframe_options_deny
@xframe_options_sameorigin

出现  no such table XXX
解决:
python manage.py makemigrations xxxx(app名字)
python manage.py migrate
更新数据库