--
-- 由SQLiteStudio v3.2.1 产生的文件 周四 12月 17 21:00:24 2020
--
-- 文本编码：System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- 表：account_userinfo
CREATE TABLE "account_userinfo" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "school" varchar(97) NOT NULL, "company" varchar(97) NOT NULL, "profession" varchar(27) NOT NULL, "address" varchar(177) NOT NULL, "aboutme" text NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "photo" varchar(100) NOT NULL);
INSERT INTO account_userinfo (id, school, company, profession, address, aboutme, user_id, photo) VALUES (1, '岭南师范', '广东岭南师范计算机', '学生', '吉大景和街', '我遇强则强', 1, 'data:image/png;base64,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');

-- 表：account_userprofile
CREATE TABLE "account_userprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "birth" date NULL, "phone" varchar(20) NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO account_userprofile (id, birth, phone, user_id) VALUES (1, '2019-10-25', '18926965873', 3);
INSERT INTO account_userprofile (id, birth, phone, user_id) VALUES (2, NULL, 'asd', 1);

-- 表：article_articlecolumn
CREATE TABLE "article_articlecolumn" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "column" varchar(200) NOT NULL, "created" date NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO article_articlecolumn (id, "column", created, user_id) VALUES (1, 'kjljl', '2020-11-30', 1);

-- 表：article_articlepost
CREATE TABLE "article_articlepost" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "slug" varchar(500) NOT NULL, "body" text NOT NULL, "updated" datetime NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "column_id" integer NOT NULL REFERENCES "article_articlecolumn" ("id") DEFERRABLE INITIALLY DEFERRED, "created" datetime NOT NULL);
INSERT INTO article_articlepost (id, title, slug, body, updated, author_id, column_id, created) VALUES (2, '岭师二手afsg', 'Ling-Shi-Er-Shou-afsg', '**asfsagsadg **asfdasfsdgkdlf

seklsdgfkl
er** tg rekisteroil
zdrhbzdkjffoiw a
[''t l[
p 
	jy ''pom y''Y E'' A''N N
 KJTWO[IE4RT HJTPESH N  m
g
G 
D**
HG 和
 
 K k 
 K 
 p[KTK
 E 
 EWK EW YKW![ASD](ASDSAD "ASD")
 E TJY
 WEK WYHW JYW YKH
 WEK
>  
D
HG 和
 
 K k 
 K 
 p[kTk
 E 
 ewK ew ykw
 e tjy
 wek wYHw JYw YKH
 wek
 P[E  P[E 
 ]]]
]]   
                   
                ', '2020-12-05 02:01:31.364373', 1, 1, '2020-12-04 02:56:00.299200');
INSERT INTO article_articlepost (id, title, slug, body, updated, author_id, column_id, created) VALUES (3, '具体物品发布', 'Ju-Ti-Wu-Pin-Fa-Bu', 'asfasf', '2020-12-06 02:06:34.343815', 1, 1, '2020-12-06 02:03:49.591229');
INSERT INTO article_articlepost (id, title, slug, body, updated, author_id, column_id, created) VALUES (4, 'dsbsb', 'dsbsb', 'dvsewqwqer', '2020-12-06 02:06:48.253281', 1, 1, '2020-12-06 02:03:49.591229');

-- 表：article_articlepost_article_tag
CREATE TABLE "article_articlepost_article_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "articlepost_id" integer NOT NULL REFERENCES "article_articlepost" ("id") DEFERRABLE INITIALLY DEFERRED, "articletag_id" integer NOT NULL REFERENCES "article_articletag" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：article_articlepost_users_like
CREATE TABLE "article_articlepost_users_like" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "articlepost_id" integer NOT NULL REFERENCES "article_articlepost" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO article_articlepost_users_like (id, articlepost_id, user_id) VALUES (1, 4, 1);

-- 表：article_articletag
CREATE TABLE "article_articletag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "tag" varchar(500) NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：article_comment
CREATE TABLE "article_comment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "commentator" varchar(90) NOT NULL, "body" text NOT NULL, "created" datetime NOT NULL, "article_id" integer NOT NULL REFERENCES "article_articlepost" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO article_comment (id, commentator, body, created, article_id) VALUES (1, 'weeq', 'wqeqwrqw', '2020-12-09 00:49:10.495157', 4);
INSERT INTO article_comment (id, commentator, body, created, article_id) VALUES (2, 'weeq', 'wqeqwrqw', '2020-12-09 00:57:52.886228', 4);
INSERT INTO article_comment (id, commentator, body, created, article_id) VALUES (3, 'weeq', 'wqeqwrqw', '2020-12-09 01:00:17.210221', 4);
INSERT INTO article_comment (id, commentator, body, created, article_id) VALUES (4, '发广告', '富瓦夫', '2020-12-11 03:49:37.685109', 4);
INSERT INTO article_comment (id, commentator, body, created, article_id) VALUES (5, '发广告', '富瓦夫', '2020-12-11 03:49:53.167246', 4);

-- 表：auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- 表：auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_blogarticles', 'Can add blog articles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_blogarticles', 'Can change blog articles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_blogarticles', 'Can delete blog articles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_blogarticles', 'Can view blog articles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_userprofile', 'Can add user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_userprofile', 'Can change user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_userprofile', 'Can delete user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_userprofile', 'Can view user profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_userinfo', 'Can add user info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_userinfo', 'Can change user info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_userinfo', 'Can delete user info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_userinfo', 'Can view user info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_articlecolumn', 'Can add article column');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_articlecolumn', 'Can change article column');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_articlecolumn', 'Can delete article column');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_articlecolumn', 'Can view article column');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_articlepost', 'Can add article post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_articlepost', 'Can change article post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_articlepost', 'Can delete article post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_articlepost', 'Can view article post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_comment', 'Can add comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_comment', 'Can change comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_comment', 'Can delete comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_comment', 'Can view comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_articletag', 'Can add article tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_articletag', 'Can change article tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_articletag', 'Can delete article tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_articletag', 'Can view article tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_image', 'Can add image');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_image', 'Can change image');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_image', 'Can delete image');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_image', 'Can view image');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_kvstore', 'Can add kv store');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_kvstore', 'Can change kv store');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_kvstore', 'Can delete kv store');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_kvstore', 'Can view kv store');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 16, 'add_course', 'Can add course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 16, 'change_course', 'Can change course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 16, 'delete_course', 'Can delete course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 16, 'view_course', 'Can view course');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (65, 17, 'add_lesson', 'Can add lesson');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (66, 17, 'change_lesson', 'Can change lesson');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (67, 17, 'delete_lesson', 'Can delete lesson');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (68, 17, 'view_lesson', 'Can view lesson');

-- 表：auth_user
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$216000$YptNLOOXIVPB$1CY9pGCmcFchsoz+LjfwZJlqXiM+YsfhdHGzj699BvY=', '2020-12-11 03:52:16.670599', 1, 'admin', '', 'asdn@admin.com', 1, 1, '2020-11-10 02:21:33.411081', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$216000$uOxNI6t4Otj2$3GVVv2EZYfGHFZA+XMTvJ3FDUcdtKBDMbZr93UTXViE=', NULL, 0, 'admin2', '', '2606292175@qq.com', 0, 1, '2020-11-18 08:51:17.705352', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$216000$KiQgk3WjKVXE$dpEee8lcVXYzmych6A/ItSBr2CleHC606ATHsdKQ4xw=', NULL, 0, 'admin3', '', '2606892175@qq.com', 0, 1, '2020-11-18 09:00:26.145055', '');

-- 表：auth_user_groups
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：auth_user_user_permissions
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：blog_blogarticles
CREATE TABLE "blog_blogarticles" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(300) NOT NULL, "body" text NOT NULL, "publish" datetime NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_blogarticles (id, title, body, publish, author_id) VALUES (1, '卧槽', '居然可以', '2020-11-10 02:24:09', 1);
INSERT INTO blog_blogarticles (id, title, body, publish, author_id) VALUES (2, '第二章', '发撒烦烦烦', '2020-11-10 02:25:25', 1);
INSERT INTO blog_blogarticles (id, title, body, publish, author_id) VALUES (3, '第三章', '萨福公公还好吧', '2020-11-10 02:25:38', 1);
INSERT INTO blog_blogarticles (id, title, body, publish, author_id) VALUES (4, '第四章', '嘎斯刚刚', '2020-11-10 02:25:46', 1);

-- 表：course_course
CREATE TABLE "course_course" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "slug" varchar(200) NOT NULL UNIQUE, "overview" text NOT NULL, "created" datetime NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO course_course (id, title, slug, overview, created, user_id) VALUES (2, '岭师二手贴吧', 'Ling-Shi-Er-Shou-Tie-Ba', 'asd', '2020-12-14 13:07:01.514915', 1);

-- 表：course_course_student
CREATE TABLE "course_course_student" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "course_id" integer NOT NULL REFERENCES "course_course" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：course_lesson
CREATE TABLE "course_lesson" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "video" varchar(100) NOT NULL, "description" text NOT NULL, "attach" varchar(100) NOT NULL, "created" datetime NOT NULL, "order" integer unsigned NOT NULL CHECK ("order" >= 0), "course_id" integer NOT NULL REFERENCES "course_course" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- 表：django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (1, '2020-11-10 02:24:26.899867', '1', '卧槽', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (2, '2020-11-10 02:25:37.514751', '2', '第二章', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (3, '2020-11-10 02:25:45.216173', '3', '第三章', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (4, '2020-11-10 02:25:51.264226', '4', '第四章', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (5, '2020-12-02 05:01:22.896481', '2', '今天是11/30', '', 10, 1, 3);

-- 表：django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'blog', 'blogarticles');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'account', 'userprofile');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'account', 'userinfo');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'article', 'articlecolumn');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'article', 'articlepost');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'article', 'comment');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'article', 'articletag');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'image', 'image');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'thumbnail', 'kvstore');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'course', 'course');
INSERT INTO django_content_type (id, app_label, model) VALUES (17, 'course', 'lesson');

-- 表：django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-11-10 02:18:06.641023');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-11-10 02:18:06.657011');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-11-10 02:18:06.673001');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-11-10 02:18:06.688990');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-10 02:18:06.704979');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-11-10 02:18:06.728962');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-11-10 02:18:06.744953');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-11-10 02:18:06.752948');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-11-10 02:18:06.768936');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-11-10 02:18:06.784926');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-11-10 02:18:06.792926');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-10 02:18:06.808909');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-11-10 02:18:06.824899');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-10 02:18:06.832894');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-11-10 02:18:06.848883');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-11-10 02:18:06.864889');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-10 02:18:06.880892');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'blog', '0001_initial', '2020-11-10 02:18:06.888878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2020-11-10 02:18:06.896934');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'account', '0001_initial', '2020-11-18 08:56:28.754124');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'account', '0002_userinfo', '2020-11-22 11:54:48.787359');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'account', '0003_userinfo_photo', '2020-11-27 00:24:45.847109');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'article', '0001_initial', '2020-11-30 04:27:54.168247');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'article', '0002_articlepost', '2020-12-03 05:00:42.536121');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'article', '0003_auto_20201207_1303', '2020-12-07 05:04:07.448743');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'article', '0004_auto_20201209_0837', '2020-12-09 00:38:13.917353');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'article', '0005_auto_20201211_1132', '2020-12-11 03:32:36.418528');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'image', '0001_initial', '2020-12-13 05:10:39.208124');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'thumbnail', '0001_initial', '2020-12-13 07:41:39.514649');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'course', '0001_initial', '2020-12-14 11:20:49.467415');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'course', '0002_lesson', '2020-12-14 13:05:48.682357');

-- 表：django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tel507gnrwg8om5f6s4u12ce6jcybkfz', '.eJxVjMsOwiAQRf-FtTYFZih16d5vIDMMWB8pTcG4MP67NXHj9p5z7kuFhWp9llXCmmpqoZVbmtVBkZSlzXvD4MAicAQzAHLMhBF6i9mB9JrUTgV6tCk8alrDRbZS_29McXv8ArnSfC5dLHNbL9x9le5Ha3cqku7Hn_t3MFGdthoc-xGNswPpPJIbIELq0Xv2Bn2WzNoaxhFwFJ-BbPaaxEkfoyFtnHp_ANh4THY:1kiRiV:31Jg-5ILRFJ2RQ60jveiRTVjqSPrzkjGXXMvGsvUCD8', '2020-12-11 00:34:27.400930');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('bwcvamxb0j5jc60npgpkt4u6yw39jgwy', '.eJxVjEEOwiAQRe_C2pBCgQ4u3XsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnEWSpx-N8L4SHUHfMd6azK2ui4zyV2RB-3y2jg9L4f7d1Cwl29tHIG32o0TquzRTSaaNFgAAm0hcyY1arLeWM-QDY4ZFLLjIUaNSjvx_gDISzeC:1knZTc:txIOOGYX5hYUw3x7DRDeisOL0huIBhyde1iU2_5vcr8', '2020-12-25 03:52:16.676583');

-- 表：image_image
CREATE TABLE "image_image" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(300) NOT NULL, "url" varchar(200) NOT NULL, "slug" varchar(500) NOT NULL, "description" text NOT NULL, "created" date NOT NULL, "image" varchar(100) NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO image_image (id, title, url, slug, description, created, image, user_id) VALUES (1, 'asda''s''d', 'http://img.netbian.com/file/2020/0904/7cab180eca805cce596b6870cb4e1379.jpg', 'asdasd', 'a''s''d', '2020-12-13', 'images/2020/12/13/asdasd.jpg', 1);

-- 表：practise8
CREATE TABLE practise8 (nid INTEGER PRIMARY KEY, name VARCHAR (50), tele VARCHAR (50), address VARCHAR (100));
INSERT INTO practise8 (nid, name, tele, address) VALUES (1, 'asdad', '1231', 'qweq');
INSERT INTO practise8 (nid, name, tele, address) VALUES (2, 'wqeqe', 'wqrwq', 'qwrr');
INSERT INTO practise8 (nid, name, tele, address) VALUES (3, 'wqqew', 'qq', 'g4545');
INSERT INTO practise8 (nid, name, tele, address) VALUES (101, 'aa', '12345678', 'Beijing');
INSERT INTO practise8 (nid, name, tele, address) VALUES (103, 'cc', '34567891', 'hainan');

-- 表：thumbnail_kvstore
CREATE TABLE "thumbnail_kvstore" ("key" varchar(200) NOT NULL PRIMARY KEY, "value" text NOT NULL);
INSERT INTO thumbnail_kvstore ("key", value) VALUES ('sorl-thumbnail||image||d25759e9d19d5ae5b8329fc6de555e9e', '{"name": "images/2020/12/13/asdasd.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [1200, 470]}');
INSERT INTO thumbnail_kvstore ("key", value) VALUES ('sorl-thumbnail||image||643458d21e6624e11a298d4dc3db8fc0', '{"name": "cache/4c/0e/4c0e8717676e85059b3a92c8088d3291.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [100, 100]}');
INSERT INTO thumbnail_kvstore ("key", value) VALUES ('sorl-thumbnail||thumbnails||d25759e9d19d5ae5b8329fc6de555e9e', '["643458d21e6624e11a298d4dc3db8fc0"]');

-- 索引：article_articlecolumn_user_id_c6e4ad28
CREATE INDEX "article_articlecolumn_user_id_c6e4ad28" ON "article_articlecolumn" ("user_id");

-- 索引：article_articlepost_article_tag_articlepost_id_663bfcf7
CREATE INDEX "article_articlepost_article_tag_articlepost_id_663bfcf7" ON "article_articlepost_article_tag" ("articlepost_id");

-- 索引：article_articlepost_article_tag_articlepost_id_articletag_id_74623284_uniq
CREATE UNIQUE INDEX "article_articlepost_article_tag_articlepost_id_articletag_id_74623284_uniq" ON "article_articlepost_article_tag" ("articlepost_id", "articletag_id");

-- 索引：article_articlepost_article_tag_articletag_id_dbda582e
CREATE INDEX "article_articlepost_article_tag_articletag_id_dbda582e" ON "article_articlepost_article_tag" ("articletag_id");

-- 索引：article_articlepost_author_id_b855d44d
CREATE INDEX "article_articlepost_author_id_b855d44d" ON "article_articlepost" ("author_id");

-- 索引：article_articlepost_column_id_48f69d78
CREATE INDEX "article_articlepost_column_id_48f69d78" ON "article_articlepost" ("column_id");

-- 索引：article_articlepost_id_slug_fff317e5_idx
CREATE INDEX "article_articlepost_id_slug_fff317e5_idx" ON "article_articlepost" ("id", "slug");

-- 索引：article_articlepost_slug_b9f58988
CREATE INDEX "article_articlepost_slug_b9f58988" ON "article_articlepost" ("slug");

-- 索引：article_articlepost_users_like_articlepost_id_b5a23033
CREATE INDEX "article_articlepost_users_like_articlepost_id_b5a23033" ON "article_articlepost_users_like" ("articlepost_id");

-- 索引：article_articlepost_users_like_articlepost_id_user_id_29884176_uniq
CREATE UNIQUE INDEX "article_articlepost_users_like_articlepost_id_user_id_29884176_uniq" ON "article_articlepost_users_like" ("articlepost_id", "user_id");

-- 索引：article_articlepost_users_like_user_id_07d4a106
CREATE INDEX "article_articlepost_users_like_user_id_07d4a106" ON "article_articlepost_users_like" ("user_id");

-- 索引：article_articletag_author_id_987bb452
CREATE INDEX "article_articletag_author_id_987bb452" ON "article_articletag" ("author_id");

-- 索引：article_comment_article_id_4fa145bf
CREATE INDEX "article_comment_article_id_4fa145bf" ON "article_comment" ("article_id");

-- 索引：auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- 索引：auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- 索引：auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- 索引：auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- 索引：auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- 索引：auth_user_groups_group_id_97559544
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- 索引：auth_user_groups_user_id_6a12ed8b
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- 索引：auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- 索引：auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- 索引：auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- 索引：auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- 索引：blog_blogarticles_author_id_ed798e23
CREATE INDEX "blog_blogarticles_author_id_ed798e23" ON "blog_blogarticles" ("author_id");

-- 索引：course_course_student_course_id_a19cd080
CREATE INDEX "course_course_student_course_id_a19cd080" ON "course_course_student" ("course_id");

-- 索引：course_course_student_course_id_user_id_53af7ea2_uniq
CREATE UNIQUE INDEX "course_course_student_course_id_user_id_53af7ea2_uniq" ON "course_course_student" ("course_id", "user_id");

-- 索引：course_course_student_user_id_533778e1
CREATE INDEX "course_course_student_user_id_533778e1" ON "course_course_student" ("user_id");

-- 索引：course_course_user_id_0fef46ad
CREATE INDEX "course_course_user_id_0fef46ad" ON "course_course" ("user_id");

-- 索引：course_lesson_course_id_65df4a1c
CREATE INDEX "course_lesson_course_id_65df4a1c" ON "course_lesson" ("course_id");

-- 索引：course_lesson_user_id_7658d4d0
CREATE INDEX "course_lesson_user_id_7658d4d0" ON "course_lesson" ("user_id");

-- 索引：django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- 索引：django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- 索引：django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- 索引：django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- 索引：image_image_created_1c0b6956
CREATE INDEX "image_image_created_1c0b6956" ON "image_image" ("created");

-- 索引：image_image_slug_3c7d4068
CREATE INDEX "image_image_slug_3c7d4068" ON "image_image" ("slug");

-- 索引：image_image_user_id_d0700c2c
CREATE INDEX "image_image_user_id_d0700c2c" ON "image_image" ("user_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
