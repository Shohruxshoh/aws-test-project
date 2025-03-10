from django.shortcuts import render
from .forms import MyModelForm
from .models import MyModel
# Create your views here.

def home(request):
    lists = MyModel.objects.all()
    form = MyModelForm(request.POST, request.FILES)
    if request.method == "POST":
        if form.is_valid():
            form.save()
    return render(request, 'home.html', {"form": form, "objects":lists})
