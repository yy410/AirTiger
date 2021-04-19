from rest_framework import routers
from .views import userprofile
from .views import department

router = routers.DefaultRouter()

router.register(r'v1/user/department', department.DepartmentViewSet, )

router.register(r'v1/user/profile', userprofile.UserProfileViewSet, )
router.register(r'v1/user/manager', userprofile.UserManagerViewSet, )
