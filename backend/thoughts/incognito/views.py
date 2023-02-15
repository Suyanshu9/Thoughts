# from django.shortcuts import render, HttpResponse
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view,permission_classes
from rest_framework.generics import ListAPIView
# Create your views here.

# def incoMode(request):
#     print("Request Recived")
#     return Response("You are in Incognito Mode")


# Create your views here.
# from rest_framework import viewsets
 
# import local data
from .serializers import thoughtsSerializer
from .models import thoughtsModel
 
# @api_view(['GET'],)
# @permission_classes([AllowAny],)
# create a viewset
class thoughtsViewSet(ListAPIView):
    # define queryset
    queryset = thoughtsModel.objects.all()
     
    # specify serializer to be used
    serializer_class = thoughtsSerializer