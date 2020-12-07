from django.conf.urls import url
from django.urls import path,re_path
from . import views, list_views

app_name = "article"

urlpatterns = [
    path('article-column/',views.article_column,name = "article_column"),
    path('rename-column/',views.rename_article_column,name='rename_article_column'),
    path('article-post/', views.article_post, name='article_post'),
    path('article-list/', views.article_list, name='article_list'),
path('del-article/', views.del_article, name='del_article'),
path('redit-article/<int:article_id>', views.redit_article, name='redit_article'),
    #url(r'^article-column/$', views.article_column, name="article_column"),
    # url(r'^rename-column/$', views.rename_article_column, name="rename_article_column"),
    # url(r'^del-column/$', views.del_article_column, name="del_article_column"),
    # url(r'^article-post/$', views.article_post, name="article_post"),
    # url(r'^article-list/$', views.article_list, name="article_list"),
    #re_path(r'^article-detail/(?P<id>\d+)/(?P<slug>[-\w]+)/$', views.article_detail, name="article_detail"),
    # url(r'^del-article/$', views.del_article, name="del_article"),
    # url(r'^redit-article/(?P<article_id>\d+)/$', views.redit_article, name="redit_article"),
path('list-article-titles/', list_views.article_titles, name='article_titles'),
#path('article-content/<int:id>/<slug:slug>/', list_views.article_detail, name='article_content'),
path('article-detail/<int:id>/<slug:slug>/', list_views.article_detail, name='article_content'),

    # url(r'^list-article-titles/$', list_views.article_titles, name="article_titles"),
    # url(r'^list-article-detail/(?P<id>\d+)/(?P<slug>[-\w]+)/$', list_views.article_detail, name="list_article_detail"),
     path('list-article-titles/<username>/', list_views.article_titles, name="author_articles"),
    path('list-article/', list_views.like_article, name="like_article"),
    # url(r'^like-article/$', list_views.like_article, name="like_article"),
    # url(r'^article-tag/$', views.article_tag, name="article_tag"),
    # url(r'^del-article-tag/$', views.del_article_tag, name="del_article_tag"),
]

