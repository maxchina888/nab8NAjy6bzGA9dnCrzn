from datetime import datetime

from django.http import HttpResponse
from django.shortcuts import redirect
from django.template import loader

from blog.models import BlogPost


def sayhello(request, parm=''):
    parm += '<html>'
    parm += '<head>'
    parm += '<meta charset="utf-8">'
    parm += '<title>Hello Word - 我的第一个 CGI 程序！</title>'
    parm += '</head>'
    parm += '<body>'
    parm += '<h2>Hello Word! 我是来自W3Cschool教程的第一CGI程序</h2>'
    parm += '<h2>' + datetime.now() + '</h2>'
    parm += '</body>'
    parm += '</html>'
    return HttpResponse(parm)

# render_to_response未来可能会被废弃，不建议使用
def blog(request):
    posts = BlogPost.objects.all().order_by("-timestamp")[:5]
    template = loader.get_template("archive.html")
    context = {'posts': posts}  # 上下文必须是字典类型
    return HttpResponse(template.render(context, request), content_type='text/html')


def create_blogpost(request):
    if request.method == 'POST':
        BlogPost(
            title=request.POST.get('title'),
            body=request.POST.get('body'),
            timestamp=datetime.now(),
        ).save()
    return redirect('/blog/')
