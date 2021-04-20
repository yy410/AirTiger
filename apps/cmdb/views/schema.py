from base.views import BaseModelViewSet
from base.response import json_ok_response, json_error_response
from ..models import Schema
from ..serializers import SchemaSerializer
from ..types.field import check_field
from ..types.module import check_data
from ..types.operate import OperateInstance


class SchemaViewSet(BaseModelViewSet):
    queryset = Schema.objects.filter(deleted=False).order_by('id')
    serializer_class = SchemaSerializer
    ordering_fields = ('id', 'name',)
    filter_fields = ('id', 'name',)
    search_fields = ('name',)

    def create(self, request, *args, **kwargs):
        try:
            data = request.data
            if data.get('pid') != 0:
                if OperateInstance.get_schema(data['pid']).pid != 0:
                    return json_error_response(f'指定的pid:({data["pid"]}) 不是主类型模型表.')
            serializer = self.get_serializer(data=data)
            serializer.is_valid(raise_exception=True)
            serializer.save()
            return json_ok_response(serializer.data)
        except Exception as e:
            return json_error_response(str(e))

    def update(self, request, *args, **kwargs):
        partial = kwargs.pop('partial', False)
        instance = self.get_object()
        pid = request.data.get('pid')
        if pid and pid != 0:
            p_schema = OperateInstance.get_schema(pid)
            if p_schema.pid != 0:
                return json_error_response(f'指定的pid:({pid}) 不是主类型模型表.')
        if instance.pid == 0:
            if OperateInstance.get_children_schema(pid):
                return json_error_response(f'此表目前为主模型表, 请先解绑此表中的子表.')

        serializer = self.get_serializer(instance, data=request.data, partial=partial)
        serializer.is_valid(raise_exception=True)
        self.perform_update(serializer)
        if getattr(instance, '_prefetched_objects_cache', None):
            instance._prefetched_objects_cache = {}
        return json_ok_response(serializer.data)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        if instance.pid == 0:
            if OperateInstance.get_children_schema(instance.id):
                return json_error_response('删除失败, 主模型无法直接删除请先删除子模型后重试')

        if OperateInstance.get_asset(instance.id):
            return json_error_response('删除失败, 请先删除模型下关联资产')

        if OperateInstance.get_field_map(instance.id):
            return json_error_response('删除失败, 请先删除模型 FileMap 表')

        instance.deleted = True
        instance.save()
        return json_ok_response('删除成功')
