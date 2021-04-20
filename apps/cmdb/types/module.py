from ..models import Schema, FieldMap, AssetData
from ..types import get_instance
from .operate import OperateInstance


class Verify_data():
    def __init__(self, data):
        self.data = data

    def create(self):
        n_data = self.data
        data_map_obj = OperateInstance.get_field_map(n_data['classify_id'])
        data_field = data_map_obj.fields
        field_meta = data_map_obj.meta

        self.field_exist(n_data['value'], data_field)
        for field, meta in field_meta.items():
            for k, v in list(meta.items()):
                if hasattr(self, k):
                    n_data['value'][field] = getattr(self, k)(n_data['classify_id'], field, meta,
                                                              n_data['value'].get(field))
                    meta.pop(k)
            n_data['value'][field] = get_instance(field, meta.pop('type'), **meta).stringify(n_data['value'].get(field))
        # n_data['asset_id'] = OperateInstance.create_asset(n_data.pop('classify_id')).id
        return n_data

    def unique(self, c_id, field, meta, val):
        if meta['unique']:
            asset_obj_all = OperateInstance.get_all_asset(c_id)
            data_value = AssetData.objects.filter(asset_id__in=asset_obj_all)
            if not data_value:
                return val
            for i in data_value:
                if i.value[field] == val:
                    raise ValueError(f"field {field} value:({val}) already existed.")
        return val

    def not_null(self, c_id, field, meta, val):
        if meta['not_null'] == True and val == None or val == "":
            raise ValueError(f"field {field} nullable={meta['not_null']}, The value passed is not valid. ")
        else:
            return val

    def default(self, c_id, field, meta, val):
        if val == None or val == "":
            return meta['default']
        return val

    def check_nullable(self, new_data_value, field_meta):
        for k, v in field_meta.items():
            print(k, v)

    def field_exist(self, new_value_dic, field_dic):
        for k, v in new_value_dic.items():
            if k in field_dic:
                continue
            else:
                raise ValueError(f'field {k} Is not defined')

    def get_data_map_obj(self, classiyf_id):
        return FieldMap.objects.filter(id=classiyf_id).first()

    def get_classify_obj(self, asset_id):
        return Schema.objects.filter(id=self.get_asset(asset_id).classify_id.id).first()

    def get_asset(self, asset_id):
        return AssetData.objects.filter(id=asset_id).first()


def check_data(data, model):
    check_inc = Verify_data(data)
    return getattr(check_inc, model)()
