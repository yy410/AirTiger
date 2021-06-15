from django.db import models
from base.models import BaseModel

# Create your models here.
__all__ = ['Roles', 'Menus', 'Permissions']


class Roles(BaseModel):
    """
    角色
    """
    title = models.CharField(verbose_name='角色名称', max_length=32, unique=True)
    permissions = models.ManyToManyField(verbose_name='拥有的所有权限', to='Permissions', blank=True)
    menus = models.ManyToManyField(verbose_name='拥有的菜单权限', to='Menus', blank=True, help_text='可以打开那些菜单')

    def __str__(self):
        return self.title

    class Meta:
        db_table = 'rbac_roles'
        verbose_name = verbose_name_plural = '角色表'


# 一级菜单表
class Menus(BaseModel):
    title = models.CharField(verbose_name='菜单名称', max_length=32)
    url = models.CharField(verbose_name='URL', help_text='精确URL与前端匹配不好包含正则', max_length=128)
    pid = models.IntegerField(verbose_name='是否为主菜单', null=True, blank=True, help_text='为0则是一级菜单,指定id则是指定id的二级菜单')
    icon = models.CharField(verbose_name='图标', help_text='指定显示的icon图标', default='111', max_length=32)

    def __str__(self):
        return self.title

    class Meta:
        db_table = 'rbac_menus'
        verbose_name = verbose_name_plural = '菜单表'


class Permissions(BaseModel):
    """
    权限表
    """
    METHOD_TYPE = (
        ('GET', 'GET'),
        ('POST', 'POST'),
        ('PUT', 'PUT'),
        ('PATCH', 'PATCH'),
        ('DELETE', 'DELETE'),
    )
    title = models.CharField(verbose_name='名称', max_length=32)
    url = models.CharField(verbose_name='含正则的URL', max_length=128)
    method = models.CharField(verbose_name='请求类型', help_text='请求的类型', choices=METHOD_TYPE, default=METHOD_TYPE[0][0],
                              max_length=10)
    pid = models.IntegerField(verbose_name='是否为分类', null=True, blank=True, help_text='0为权限分类指定ID则属于二级')

    def __str__(self):
        return self.title

    class Meta:
        db_table = 'rbac_permissions'
        verbose_name = verbose_name_plural = '权限表'
