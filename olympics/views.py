from django.http import HttpResponse
from django.shortcuts import render


def test(request):
    html = "<html><body>test</body></html>"
    return HttpResponse(html)


def home_page(request):
    template = 'olympics/templates/home.html'
    return render(request, template)

