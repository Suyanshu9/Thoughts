from django.urls import path,include
from rest_framework import routers
from . import views

# router = routers.DefaultRouter()

# router.register('incognito',views.thoughtsViewSet)
urlpatterns = [
    # path('incoMode', include(router.urls)),
    # path('api-auth/', include('rest_framework.urls')),
    path('incoMode/',views.thoughtsViewSet.as_view())
]