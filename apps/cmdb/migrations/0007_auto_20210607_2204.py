# Generated by Django 3.1.2 on 2021-06-07 22:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cmdb', '0006_auto_20210531_1630'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tableclassify',
            name='alias',
            field=models.CharField(blank=True, max_length=32, null=True, unique=True, verbose_name='别名'),
        ),
    ]
