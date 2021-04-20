from ..models import Schema, FieldMap, AssetData


class OperateInstance:

    @staticmethod
    def get_schema(id):
        return Schema.objects.filter(id=id).first()

    @staticmethod
    def get_parent_schema(pid):
        schema_all_obj = Schema.objects.filter(id=pid)
        if schema_all_obj:
            return schema_all_obj
        return None

    @staticmethod
    def get_children_schema(id):
        schema_all_obj = Schema.objects.filter(pid=id)
        if schema_all_obj:
            return schema_all_obj
        return None

    # @staticmethod
    # def create_asset(c_id, *args):
    #     asset_obj = Asset.objects.create(asset_key=get_md5(*args), classify_id_id=c_id)
    #     asset_obj.save()
    #     return asset_obj

    @staticmethod
    def get_asset(c_id):
        asset_obj = AssetData.objects.filter(classify_id_id=c_id).first()
        if asset_obj:
            return asset_obj
        return None

    @staticmethod
    def get_all_asset(c_id):
        asset_all_obj = AssetData.objects.filter(classify_id_id=c_id).values()
        if asset_all_obj:
            return asset_all_obj
        return None

    @staticmethod
    def get_field_map(c_id):
        field_obj = FieldMap.objects.filter(id=c_id).first()
        if field_obj:
            return field_obj

        return None

    @staticmethod
    def get_all_field_map(c_id):
        field_all = FieldMap.objects.filter(id=c_id).values()
        if field_all:
            return field_all
        return None
