from django.db import models

# Create your models here.
class Client(models.Model):
    name = models.CharField(max_length=255)
    company_name = models.CharField(max_length=255)
    email = models.EmailField(max_length=255)
    password = models.CharField(max_length=200)

class UserNote(models.Model):
    username = models.CharField(max_length=255)
    userid = models.CharField(max_length=255)
    note = models.CharField(max_length=255)
    date_add = models.DateField(auto_now_add=True)

class DailyActivity(models.Model):
    userid = models.CharField(max_length=255)
    title = models.CharField(max_length=255)
    date_added = models.CharField(max_length=255)

class GroupTeam(models.Model):
    collabId = models.CharField(max_length=255)
    groupname = models.CharField(max_length=255)
    TeamMembers = models.CharField(max_length=255)
    createdby = models.CharField(max_length=255)
    date_added = models.DateField(auto_now_add=True)

class GroupTask(models.Model):
    cId = models.CharField(max_length=255)
    groupname = models.CharField(max_length=255)
    taskdetails = models.CharField(max_length=255)
    taskstatus = models.CharField(max_length=255)
