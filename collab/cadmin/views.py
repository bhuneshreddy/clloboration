from django.shortcuts import render,redirect
from django.contrib import messages
from .models import *
from django.http import JsonResponse
import json


def signup(request):
	if request.method == "POST":
		name = request.POST.get("name")
		email = request.POST.get("email")
		password = request.POST.get("password")

		Client.objects.create(name=name, email=email, password=password)

		messages.success(request, 'Successfully Signed Up.')
		return redirect('/login/')

	return render(request, 'cadmin/signup.html')

def login(request):
	if request.method == 'POST':
		email = request.POST["email"]
		password = request.POST["password"]

		try:
			emp = Client.objects.get(email=email, password=password)
			messages.success(request, 'You Have Logged In')
			request.session['email'] = emp.email
			request.session['user_id'] = emp.id
			request.session['user_name'] = emp.name
			return redirect('/notes/')

		except:
			messages.success(request, 'Unauthorized User Name And Password')
			return redirect('/login/')
	return render(request, 'cadmin/alogin.html')

def logout(request):
	return render(request,'cadmin/alogin.html')

def addnote(request):
	try:
		u_id = request.session['user_id']
		# u_id = str(u_id)
		all_notes = UserNote.objects.filter(userid=u_id)
	except UserNote.DoesNotExist:
		all_notes = None
	name = request.session['user_name']
	user_id = request.session['user_id']
	if request.method == "POST":

		note = request.POST["note"]

		UserNote.objects.create(username=name, userid=user_id, note=note)
		messages.success(request, 'Sucessfully Added Note.')
		return redirect('/notes/')
	return render(request, 'cadmin/notes.html', {'all_notes': all_notes})

def notes(request):
    try:
        u_id = request.session['user_id']
        all_notes = UserNote.objects.filter(userid=u_id)
    except UserNote.DoesNotExist:
        all_notes = None

    return render(request, 'cadmin/notes.html', {'all_notes': all_notes})


def person(request):
	try:
		all_users = Client.objects.all()
	except Client.DoesNotExist:
		all_users = None
	return render(request,'cadmin/persons.html',{'all_users':all_users})

def collab(request):
	try:
		all_group = GroupTeam.objects.all()
	except GroupTeam.DoesNotExist:
		all_group = None
	return render(request,'cadmin/collabration.html',{'all_group':all_group})

def store_data_in_session(request):
    if request.method == 'POST':
        selected_persons = request.POST.get('selectedPersons', None)
        if selected_persons is not None:
            request.session['selected_persons'] = selected_persons
            return JsonResponse({'success': True})
    return JsonResponse({'success': False})

def add_group(request):
    if request.method == "POST":
        collabid = request.POST["collabid"]
        groupname = request.POST["groupname"]
        team = request.POST["team"]
        createdby = request.session['user_name']

        GroupTeam.objects.create(collabId=collabid, groupname=groupname, TeamMembers=team, createdby=createdby)

        # Destroy sessions
        del request.session['selected_persons']

        messages.success(request, 'Sucessfully Added Note.')
        return redirect('/collab/')
    return render(request,'cadmin/team.html')


def list(request):
	try:
		u_id = request.session['user_id']
		all_title = DailyActivity.objects.filter(userid=u_id)

	except DailyActivity.DoesNotExist:
		all_title = None
	if request.method == "POST":
		userid = request.session['user_id']
		title = request.POST["title"]
		date_added = request.POST["date"]

		DailyActivity.objects.create(date_added=date_added, userid=userid, title=title)
		messages.success(request, 'Sucessfully Added Note.')
		return redirect('/list/')
	return render(request,'cadmin/list.html', {'all_title': all_title})


def task(request,id):
	x = GroupTeam.objects.get(id=id)
	try:
		gt = GroupTask.objects.filter(cId=id)
	except GroupTask.DoesNotExist:
		gt = None

	return render(request,'cadmin/task.html',{'cid':id,'x':x,'gt':gt})


def activate(request,id):
	if request.method == 'POST':
		selected_ids = json.loads(request.POST['selected_ids'])

		# Update the task status for selected IDs
		GroupTask.objects.filter(id__in=selected_ids).update(taskstatus='Activated')

		# Optionally, you can add a success message
		messages.success(request, 'Selected tasks have been activated.')

		return redirect(f'/activatepage/{id}/')  # Redirect to a success page after activation

def complete(request,id):
	if request.method == 'POST':
		selected_ids = json.loads(request.POST['selected_ids'])

		# Update the task status for selected IDs
		GroupTask.objects.filter(id__in=selected_ids).update(taskstatus='Completed')

		# Optionally, you can add a success message
		messages.success(request, 'Selected tasks have been activated.')

		return redirect(f'/completedpage/{id}/')

def verify(request,id):
	if request.method == 'POST':
		selected_ids = json.loads(request.POST['selected_ids'])

		# Update the task status for selected IDs
		GroupTask.objects.filter(id__in=selected_ids).update(taskstatus='Verified')

		# Optionally, you can add a success message
		messages.success(request, 'Selected tasks have been activated.')

		return redirect(f'/verifiedpage/{id}/')

def activatepage(request,id):
	x = GroupTeam.objects.get(id=id)
	try:
		gt = GroupTask.objects.filter(cId=id)
	except GroupTask.DoesNotExist:
		gt = None
	return render(request,'cadmin/activate.html',{'cid':id,'x':x,'gt':gt})

def completedpage(request,id):
	x = GroupTeam.objects.get(id=id)
	try:
		gt = GroupTask.objects.filter(cId=id)
	except GroupTask.DoesNotExist:
		gt = None
	return render(request,'cadmin/completed.html',{'cid':id,'x':x,'gt':gt})

def verifiededpage(request,id):
	x = GroupTeam.objects.get(id=id)
	try:
		gt = GroupTask.objects.filter(cId=id)
	except GroupTask.DoesNotExist:
		gt = None
	return render(request,'cadmin/verified.html',{'cid':id,'x':x,'gt':gt})

def addgtask(request,id):
	if request.method == "POST":
		tstatus = "Created"
		cid = request.POST['cid']
		gname = request.POST["gname"]
		taskd = request.POST["taskd"]

		GroupTask.objects.create(cId=cid, groupname=gname,taskdetails=taskd,taskstatus=tstatus,)
		messages.success(request, 'Sucessfully Added Note.')

		return redirect(f'/task/{id}/')

def task1(request):
	return render(request,'cadmin/task1.html')

def index(request):
	return render(request,'cadmin/index.html')

def about(request):
	return render(request,'cadmin/aboutus.html')

def home(request):
	return render(request,'cadmin/home.html')

def header(request):
	return render(request,'cadmin/header.html')

def team(request):
	return render(request,'cadmin/team.html')

def message(request):
	return render(request,'cadmin/messages.html')