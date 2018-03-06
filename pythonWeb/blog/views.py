from datetime import datetime
from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template import loader, Context

from blog.models import BlogPost

def sayhello(request, parm=''):
    parm+='<html>'
    parm += '<head>'
    parm += '<meta charset="utf-8">'
    parm += '<title>Hello Word - 我的第一个 CGI 程序！</title>'
    parm += '</head>'
    parm += '<body>'
    parm += '<h2>Hello Word! 我是来自W3Cschool教程的第一CGI程序</h2>'
    parm += '<h2>'+datetime.now()+'</h2>'
    parm += '</body>'
    parm += '</html>'
    return HttpResponse(parm)

def archive(request):
    posts=BlogPost.objects.all()
    template=loader.get_template("archive.html")
    context={'posts':posts}   #上下文必须是字典类型
    return HttpResponse(template.render(context))

# 更简单的书写方式
def archiveTwo(request):
    posts = BlogPost.objects.all()
    return render_to_response("archive.html",{'posts':posts})