# Generated by Django 3.1.3 on 2020-12-11 03:32

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('article', '0004_auto_20201209_0837'),
    ]

    operations = [
        migrations.CreateModel(
            name='ArticleTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag', models.CharField(max_length=500)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='tag', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='articlepost',
            name='article_tag',
            field=models.ManyToManyField(blank=True, related_name='article_tag', to='article.ArticleTag'),
        ),
    ]
