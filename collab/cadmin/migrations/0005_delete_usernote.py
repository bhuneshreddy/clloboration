# Generated by Django 4.0.7 on 2024-05-06 13:30

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cadmin', '0004_rename_notes_usernote'),
    ]

    operations = [
        migrations.DeleteModel(
            name='UserNote',
        ),
    ]
