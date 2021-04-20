"""AirTiger URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include, re_path
from rest_framework import routers
from django.urls import path

# JWT


urlpatterns = [
    path('admin/', admin.site.urls),
]
# router
from apps.user.router import router as user_router
from apps.rbac.router import router as rbac_router
from apps.cmdb.router import router as cmdb_router

router = routers.DefaultRouter()
router.registry.extend(user_router.registry)
router.registry.extend(rbac_router.registry)
router.registry.extend(cmdb_router.registry)

urlpatterns += [
    path('api/', include(router.urls)),
]

# apps urls
from apps.user import urls as user_url

urlpatterns += [
    path('api/', include(router.urls)),
    path('api/', include(user_url)),

]
