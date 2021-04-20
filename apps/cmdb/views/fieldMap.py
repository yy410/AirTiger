from base.views import BaseModelViewSet
from base.response import json_ok_response, json_error_response
from ..models import FieldMap
from ..serializers import FieldMapSerializer
from ..types.field import check_field
from ..types.module import check_data
from ..types.operate import OperateInstance


class FieldMapViewSet(BaseModelViewSet):
    queryset = FieldMap.objects.filter(deleted=False).order_by('id')
    serializer_class = FieldMapSerializer
    ordering_fields = ('id', 'name',)
    filter_fields = ('id', 'name',)
    search_fields = ('name',)
