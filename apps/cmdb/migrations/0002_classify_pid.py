# Generated by Django 3.1.2 on 2021-04-19 22:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cmdb', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='classify',
            name='pid',
            field=models.IntegerField(default=1, verbose_name='主表ID,为0则为主类表, 主类表不可绑定虚拟表'),
            preserve_default=False,
        ),
    ]