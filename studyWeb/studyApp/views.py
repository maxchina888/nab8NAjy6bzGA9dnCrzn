import datetime
from django.http import HttpResponse
def sayhello(request, aaa=''):


    aaa+='<html>'
    aaa += '<head>'
    aaa += '<meta charset="utf-8">'
    aaa += '<title>Hello Word - 我的第一个 CGI 程序！</title>'
    aaa += '</head>'
    aaa += '<body>'
    aaa += '<h2>Hello Word! 我是来自W3Cschool教程的第一CGI程序</h2>'
    aaa += '</body>'
    aaa += '</html>'

    return HttpResponse(aaa)