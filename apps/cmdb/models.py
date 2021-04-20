from django.db import models

# Create your models here.
from base.models import BaseModel

__all__ = ['Schema', 'FieldMap', 'AssetData', 'TableRelation', 'AssetRelation']


class Schema(BaseModel):
    name = models.CharField(max_length=32, verbose_name="名称", unique=True)
    foreign_key = models.BooleanField(default=False, verbose_name="判断是否存在虚拟表关联")
    ban_foreign_key = models.BooleanField(default=False, verbose_name="如果为true 则此表不允许被再次关联", )
    pid = models.IntegerField(verbose_name='主表ID,为0则为主类表, 主类表不可绑定虚拟表')
    deleted = models.BooleanField(default=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = verbose_name_plural = '表分类'


class FieldMap(BaseModel):
    name = models.CharField(max_length=32, verbose_name="中文名称", unique=True)
    alias = models.CharField(max_length=32, verbose_name="英文名称", unique=True)
    fields = models.JSONField(verbose_name="字段字典")
    meta = models.JSONField(verbose_name="字段元数据")
    deleted = models.BooleanField(default=False)
    schema_id = models.OneToOneField(to=Schema, on_delete=models.CASCADE, verbose_name="关联Classify")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = verbose_name_plural = '表字段'


# class Asset(BaseModel):
#     asset_key = models.CharField(verbose_name="资产key", max_length=64, unique=True)
#     classify_id = models.ForeignKey(to=Classify, on_delete=models.CASCADE, verbose_name="关联Classify")
#     deleted = models.BooleanField(default=False)
#
#     def __str__(self):
#         return self.asset_key
#
#     class Meta:
#         verbose_name = verbose_name_plural = '资产'


class AssetData(BaseModel):
    value = models.JSONField(verbose_name="数据值")
    schema_id = models.ForeignKey(to=Schema, on_delete=models.CASCADE, verbose_name="关联的schema_id")
    deleted = models.BooleanField(default=False)

    def __str__(self):
        return self.value

    class Meta:
        verbose_name = verbose_name_plural = '表字段'


# PATTERN_CHOICES = ((1,'multi'),(2,"OneToOne"))

class TableRelation(BaseModel):
    parent_schema_id = models.IntegerField(verbose_name="主schemaID")
    child_schema_id = models.IntegerField(verbose_name="子schemaID")
    is_multi = models.BooleanField(verbose_name='判断是否一对多', default=True)

    class Meta:
        verbose_name = verbose_name_plural = '模型关联表'


class AssetRelation(BaseModel):
    parent_asset_id = models.BigIntegerField(verbose_name="主资产id", )
    child_asset_id = models.BigIntegerField(verbose_name="子资产id", )
    table_relation_id = models.IntegerField(verbose_name="绑定的table_bind_id")

    class Meta:
        verbose_name = verbose_name_plural = '数据关联'
