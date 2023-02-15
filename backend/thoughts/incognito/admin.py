from django.contrib import admin
from .models import thoughtsModel
# Register your models here.

@admin.register(thoughtsModel)
class thoughtsModelAdmin(admin.ModelAdmin):
    list_display = ['username','email','description']
