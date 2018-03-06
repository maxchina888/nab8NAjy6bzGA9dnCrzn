from django.test import TestCase

# Create your tests here.

from datetime import datetime
from blog.models import BlogPost

a=BlogPost.objects.all()
