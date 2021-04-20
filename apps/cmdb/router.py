from rest_framework import routers
from .views.schema import SchemaViewSet
from .views.fieldMap import FieldMapViewSet

router = routers.DefaultRouter()
router.register(r'v1/cmdb/schema', SchemaViewSet)
router.register(r'v1/cmdb/field-map', FieldMapViewSet)
