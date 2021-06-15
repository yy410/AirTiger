from rest_framework.decorators import action

from base.views import BaseModelViewSet
from base.response import json_ok_response, json_error_response
from ..models import ChangeRecord
from ..serializers import ChangeRecordSerializer
from ..verify.check_filed import check_field
from ..verify.check_data import check_data
from ..verify.operate import OperateInstance


class ChangeRecordViewSet(BaseModelViewSet):
    queryset = ChangeRecord.objects.filter().order_by('-id')
    serializer_class = ChangeRecordSerializer
    ordering_fields = ('id', 'title',)
    filter_fields = ('id', 'title', 'table_data_id')
    search_fields = ('title', 'title')
