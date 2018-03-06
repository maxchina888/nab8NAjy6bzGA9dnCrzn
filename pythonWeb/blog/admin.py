from django.contrib import admin
from blog.models import BlogPost

# Register your models here.

# 将模型注册到admin的控制台
@admin.register(BlogPost)
class BlogAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'body', 'timestamp')
