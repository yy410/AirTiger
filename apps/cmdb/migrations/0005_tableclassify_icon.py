# Generated by Django 3.1.2 on 2021-05-31 16:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cmdb', '0004_auto_20210527_1450'),
    ]

    operations = [
        migrations.AddField(
            model_name='tableclassify',
            name='icon',
            field=models.ImageField(blank=True, null=True, upload_to='cmdb/icon/'),
        ),
    ]
