from rest_framework import serializers

from .models import thoughtsModel

class thoughtsSerializer(serializers.ModelSerializer):
    class Meta:
        model = thoughtsModel
        fields = ['username','email','description']