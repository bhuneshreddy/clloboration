from django.urls import path  
from .import views
  
urlpatterns = [ 
    path('startup/',views.home),
    path('',views.header),
    path('add_group/',views.add_group,name='add_group'),
    path('notes/',views.notes,name='notes'),
    path('addnote/',views.addnote,name='addnotes'),
    path('collab/',views.collab,name='collab'),
    path('person/',views.person,name='person'),
    path('list/',views.list,name='list'),
    path('team/',views.team,name='team'),
    path('task/<int:id>/',views.task,name='task'),
    path('addgt/<int:id>/',views.addgtask,name='addgtask'),
    path('task1/',views.task1,name='task1'),
    path('message/',views.message,name="message"),
    path('logout/',views.logout,name='logout'),
    path('login/',views.login,name='login'),
    path('su/',views.signup,name='signup'),
    path('index/',views.index,name="index"),
    path('about/',views.about,name="about"),
    path('store_data_in_session/', views.store_data_in_session, name='store_data_in_session'),
    path('activate/<int:id>/', views.activate, name='activate'),
    path('activatepage/<int:id>/', views.activatepage, name='activate'),
    path('complete/<int:id>/', views.complete, name='complete'),
    path('completedpage/<int:id>/', views.completedpage, name='completedpage'),
    path('verified/<int:id>/', views.verify, name='verify'),
    path('verifiedpage/<int:id>/', views.verifiededpage, name='verifiededpage'),

]  
