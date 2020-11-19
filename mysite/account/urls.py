# -*- coding: utf-8 -*-
# -*- coding: utf-8 -*-
from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

app_name = 'account'

urlpatterns = [
    #path('login/',views.user_login,name='user_login'),
    path('login/',auth_views.LoginView.as_view(template_name='account/login2.html'),name='user_login'),
    path('logout/',auth_views.LogoutView.as_view(),name='user_logout'),
    path('register/', views.register, name='user_register'),
    url(r'^password-change/$', auth_views.password_change, {"post_change_redirect":"account/password-change-done"}, name='password_change'),
    url(r'^password-change-done/$', auth_views.password_change_done, name='password_change_done'),
]