# Generated by Django 4.0.7 on 2024-05-06 10:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cadmin', '0002_notes'),
    ]

    operations = [
        migrations.RenameField(
            model_name='notes',
            old_name='name',
            new_name='username',
        ),
    ]
