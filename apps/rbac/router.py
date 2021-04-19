from rest_framework import routers
from .views import menus
from .views import roles
from .views import permissions

router = routers.DefaultRouter()
router.register(r'v1/rbac/roles', roles.RolesViewSet, )
router.register(r'v1/rbac/menus', menus.MenusViewSet, )
router.register(r'v1/rbac/permissions', permissions.PermissionsViewSet, )
