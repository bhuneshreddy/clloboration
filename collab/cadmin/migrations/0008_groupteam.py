# Generated by Django 4.0.7 on 2024-05-07 09:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cadmin', '0007_dailyactivity'),
    ]

    operations = [
        migrations.CreateModel(
            name='GroupTeam',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('collabId', models.CharField(max_length=255)),
                ('groupname', models.CharField(max_length=255)),
                ('TeamMembers', models.CharField(max_length=255)),
                ('date_added', models.CharField(max_length=255)),
            ],
        ),
    ]
