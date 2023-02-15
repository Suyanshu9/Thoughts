from django.db import models

# Create your models here.
class thoughtsModel(models.Model):
    username = models.CharField(max_length=50,primary_key=True, default="")
    email = models.CharField(max_length=200, null=False)
    description = models.CharField(max_length=500, null=False)

    def __str__(self):
        return self.username