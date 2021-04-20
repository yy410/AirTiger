from rest_framework import serializers
from .models import Schema, FieldMap, AssetData, TableRelation, AssetRelation


class SchemaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Schema
        fields = '__all__'


class FieldMapSerializer(serializers.ModelSerializer):
    class Meta:
        model = FieldMap
        fields = '__all__'


class AssetDataSerializer(serializers.ModelSerializer):
    class Meta:
        model = AssetData
        fields = '__all__'


class TableRelationSerializer(serializers.ModelSerializer):
    class Meta:
        model = TableRelation
        fields = '__all__'


class AssetRelationSerializer(serializers.ModelSerializer):
    class Meta:
        model = AssetRelation
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
