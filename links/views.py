from django.shortcuts import render,get_object_or_404,redirect
from .models import Link
from .forms import LinkForm
from django.urls import reverse

links = Link.objects.all()

# Create your views here.
def index(request):
    context = {
        "links" : links
    }
    return render(request,'links/index.html',context)

def root_link(request,link_slug):
    link = get_object_or_404(Link,slug = link_slug)
    link.click() # This will increment the click function
    return redirect(link.url)

def add_link(request):
    if request.method == 'POST':
        # Form hsa data
        form = LinkForm(request.POST)
        if form.is_valid():
            # save the data & return user to homepage
            form.save()
            return redirect(reverse('home'))
    else:
        form = LinkForm()
    context = {
        "form":form
    }
    return render(request,"links/create.html",context)
