from rest_framework import serializers
from .models import TableClassify, TableField, TableData, TableRelation, AssetsRelation, ChangeRecord
from .verify.operate import OperateInstance
from django.forms.models import model_to_dict


class TableClassifyS(serializers.ModelSerializer):
    class Meta:
        model = TableClassify
        fields = '__all__'


class TableClassifySerializer(serializers.ModelSerializer):
    class Meta:
        model = TableClassify
        fields = '__all__'

    # def to_representation(self, instance):
    #     representation = super(TableClassifySerializer, self).to_representation(instance)
    #     representation['fields'] = OperateInstance.get_table_field(
    #         instance.id).fields if OperateInstance.get_table_field(instance.id) else None
    #
    #     representation['rules'] = OperateInstance.get_table_field(instance.id).rules if OperateInstance.get_table_field(
    #         instance.id) else None
    #     representation['children'] = [TableClassifyS(i.child_table).data for i in
    #                                   OperateInstance.get_parent_table_relation(
    #                                       instance.id)] if OperateInstance.get_parent_table_relation(
    #         instance.id) else None
    #     return representation


class TableFieldSerializer(serializers.ModelSerializer):
    fields = serializers.JSONField()

    def validate_phone(self, fields):
        return fields

    class Meta:
        model = TableField
        fields = '__all__'

    def to_representation(self, instance):
        representation = super(TableFieldSerializer, self).to_representation(instance)
        representation['parent_table_classify'] = instance.table_classify.pid.name
        return representation


# children
class TableDataSerializer(serializers.ModelSerializer):
    class Meta:
        model = TableData
        fields = '__all__'

    #
    # def to_representation(self, instance):
    #     representation = super(TableDataSerializer, self).to_representation(instance)
    #     representation['parent_table_classify'] = instance.table_classify.pid.name
    #     representation['field'] = TableFieldSerializer(instance.table_classify.fields).data['fields']
    #     return representation
    #
    # def get_asset_children(self, instance):
    #     children_dic = {}
    #     table_relation_all = OperateInstance.get_parent_table_relation(instance.table_classify.id)
    #     if table_relation_all:
    #         for table_relation in table_relation_all:
    #             asset_relation_all = OperateInstance.get_parent_asset_relation(table_relation.id, instance.id)
    #             if asset_relation_all:
    #                 children_dic[table_relation.child_table.name] = []
    #
    #                 for asset_relation in asset_relation_all:
    #                     children_dic[table_relation.child_table.name].append(
    #                         TableDataSerializer(asset_relation.child_asset).data)
    #     return children_dic


class TableRelationSerializer(serializers.ModelSerializer):
    class Meta:
        model = TableRelation
        fields = '__all__'


class AssetsRelationSerializer(serializers.ModelSerializer):
    class Meta:
        model = AssetsRelation
        fields = '__all__'


class ChangeRecordSerializer(serializers.ModelSerializer):
    class Meta:
        model = ChangeRecord
        fields = '__all__'
# class AssetRecordSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = AssetRecord
#         fields = '__all__'
#     def to_representation(self, instance):
#         representation = super().to_representation(instance)
#         representation['creator'] =  instance.creator if instance.creator else '自动采集'
#         return representation


# class BusinessUnitSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = BusinessUnit
#         fields = '__all__'
#     def to_representation(self, instance):
#         representation = super().to_representation(instance)
#         representation['contact_title'] =  instance.contact.title if instance.contact else 'Null'
#         representation['asset_num'] =  instance.asset.all().count()
#         representation['group_obj'] =  UserGropSerializer(UserGrop.objects.filter(id=instance.contact.id).first()).data if instance.contact else None
#         return representation


# class CloudServerSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = CloudServer
#         fields = '__all__'
#
# class CloudDiskSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = CloudDisk
#         fields = '__all__'
