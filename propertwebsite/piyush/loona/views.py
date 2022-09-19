from django.http import HttpResponse, JsonResponse
from .models import Newuser, Adds_property, Adds, Python
from django.shortcuts import render
from django.template import loader

def gallery(request):
    return render(request,'gallery.html')
def login(request):
    return render(request,'login.html')


def New(request):
    return render(request,'New_account.html')
def New_account(request):
    return render(request,'New_account.html')
def Welcome(request):
    return render(request,'Welcome.html')
def homes(request):
    return render(request,'homes.html')
def adddata(request):
    error=''
    get_name=request.POST.get('uname')
    get_email = request.POST.get('Email')
    get_password = request.POST.get('Password')
    get_cpass = request.POST.get('Confirm_Password')
    get_member = request.POST.get('Select_Member')
    get_mobile = request.POST.get('Mobile')
    values = {
        'name': get_name,
        'email': get_email,
        'passr': get_password,
        'cpassr': get_cpass,
        'member': get_member,
        'mobile': get_mobile,
    }

    if not get_name:
        error = "Please Enter User Name"
    elif not get_email:
        error = "Please Enter Email"
    elif not get_password:
        error = "Please Enter Password"
    elif len(get_password)<5:
        error = "Please Enter Password length at least 5 charcter"
    elif not get_cpass:
        error = "Please Enter Confirm Password"
    elif len(get_mobile)<10:
        error = "Please Enter Mobile Number length at 10 character"

    if error:
           data = {"error": error, "values": values}
           return render(request, 'New_account.html', data)
    else:
        rec = Newuser(Name=get_name, Email=get_email, Password=get_password, Confirm_Password=get_cpass,
                      Select_Member=get_member, Mobile=get_mobile)
        rec.save()
        return render(request, 'login.html')


def loginchk(request):
    error=""
    get_email=request.POST.get('Email')
    get_password= request.POST.get('Password')
    values = {
        'email': get_email,
        'password': get_password
    }
    if not get_email:
        error = "Please Enter Email"
    elif not get_password:
        error = "Please Enter Password"
    if error:
        data = {"error": error, "values": values}
        return render(request, 'login.html', data)

    else:
        mymember = Newuser.objects.filter(Email=get_email, Password=get_password)
        if mymember:
         return render(request, 'homes.html')
        else:
            return render(request,'login_error.html')
    return render(request,'homes.html')
def error(request):
    return render(request,'login.html')

def property(request):
    return render(request,'property.html')

def prop(request):
    fetch = Adds.objects.all()
    return render(request, "add_property.html", {'fetch': fetch})

def addproperty(request):
    error=""
    get_state= request.POST.get('Stater')
    get_district = request.POST.get('District')
    get_local = request.POST.get('Local')
    get_des = request.POST.get('Description')
    get_rent = request.POST.get('Rent')
    get_mobile = request.POST.get('Mobile')
    fetch = Adds_property.objects.all()

    values = {
        'stater': get_state,
        'district': get_district,
        'local': get_local,
        'des': get_des,
        'rent': get_rent,
        'mobile': get_mobile,
    }
    if get_state== "Stater":
        error = "Please Enter State"
    elif not get_district:
        error = "Please Enter District"
    elif not get_local:
        error = "Please Enter Local Address"
    elif not (get_des) :
        error = "Please Enter Description"
    elif not get_rent:
        error = "Please Enter Rent"
    elif len(get_mobile) < 10:
        error = "Please Enter Mobile Number length at 10 character"

    if error:
        data = {"error": error, "values": values}
        return render(request, 'add_property.html', data)

    else:
        fetch = Adds.objects.all()
        rec1 =  Adds_property(Stater=get_state, District=get_district,  Local_Address=get_local,Description=get_des,
                  Rent=get_rent, Mobile=get_mobile)
        rec1.save()
        return render(request, "show.html", {'fetch': fetch})

def search(request):
    fetch = Adds.objects.all()
    return render(request, "Search_home.html", {'fetch': fetch})
def searchr_view(request):
    error = ""
    get_state = request.POST.get('Stater')
    if get_state=="Select State":
        error="Please Select State"
    else:
        fetch = Adds_property.objects.filter(Stater=get_state)
        return render(request, "srchview.html", {'fetch': fetch})
    return render(request,"Search_home.html",{"error":error})


def show(request):
    fetch = Adds_property.objects.all()
    return render(request, "show.html", {'fetch': fetch})
def delete(request, id):
  member = Adds_property.objects.get(id=id)
  member.delete()
  return render(request, "show.html")
def update(request, id):
  mymember = Adds_property.objects.get(id=id)
  template = loader.get_template('update.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))
def logout(request):
    return render(request,'login.html')

def admin(request):
    get_email = request.POST.get('Email')
    get_password = request.POST.get('Password')
    if (get_email == 'pawanloona10@gmail.com' and get_password == 'L'):
        return render(request, 'welcome1.html')
    else:
        return render(request, 'admin_login.html')

def Welcome1(request):
    return render(request,'Welcome1.html')

def viewuser(request):

    fetch = Newuser.objects.all()
    return render(request, "viewuser.html", {'fetch': fetch})


def view_properties(request):
    fetch = Adds_property.objects.all()
    return render(request, "view_properties.html", {'fetch': fetch})

def show1(request):
        fetch = Adds_property.objects.all()
        return render(request, "show1.html", {'fetch': fetch})

def delete1(request, id):
  member = Adds_property.objects.get(id=id)
  member.delete()
  return render(request, "show1.html")
def update1(request, id):
  mymember = Adds_property.objects.get(id=id)
  template = loader.get_template('update1.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))
def delete2(request, id):
  member = Newuser.objects.get(id=id)
  member.delete()
  return render(request, "viewuser.html")
def update2(request, id):
  mymember = Newuser.objects.get(id=id)
  template = loader.get_template('update2.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))



def upadpro(request, id):
    State = request.POST['State']
    District = request.POST['District']
    Local_Address = request.POST['Local']
    Description = request.POST['Description']
    Rent = request.POST['Rent']
    Mobile = request.POST['Mobile']

    mymember = Adds_property.objects.get(id=id)
    mymember.Stater = State
    mymember.District = District
    mymember.Local_Address = Local_Address
    mymember.Description = Description
    mymember.Rent= Rent
    mymember.Mobile = Mobile

    mymember.save()
    return render(request, "show.html")


def upadpr(request, id):
    State = request.POST['State']
    District = request.POST['District']
    Local_Address = request.POST['Local']
    Description = request.POST['Description']
    Rent = request.POST['Rent']
    Mobile = request.POST['Mobile']

    mymember = Adds_property.objects.get(id=id)
    mymember.State = State
    mymember.District = District
    mymember.Local_Address = Local_Address
    mymember.Description = Description
    mymember.Rent= Rent
    mymember.Mobile = Mobile

    mymember.save()
    return render(request, "show1.html")
def upadp(request, id):
    Name = request.POST['Name']
    Email = request.POST['Email']
    Password = request.POST['Password']
    Confirm_Password = request.POST['Confirm_Password']
    Select_Member = request.POST['Select_Member']
    Mobile = request.POST['Mobile']

    mymember = Newuser.objects.get(id=id)
    mymember.Name = Name
    mymember.Email = Email
    mymember.Password = Password
    mymember.Confirm_Password = Confirm_Password
    mymember.Select_Member= Select_Member
    mymember.Mobile = Mobile
    mymember.save()
    return render(request, "viewuser.html")
def drop_properties(request):
    fetch = Adds_property.objects.all()
    return render(request, "Search_home.html", {'fetch': fetch})
def Add_st(request):
    return render(request, 'Add_State.html')
def Add_state(request):
        get_name = request.POST.get('Stater')
        rec = Adds(Stater=get_name)
        rec.save()
        return render(request, 'Add_State.html')
def view_st(request):
    return render(request, 'view_state.html')

def view_s(request):
        fetch = Adds.objects.all()
        return render(request, "view_state.html", {'fetch': fetch})


def delete3(request, id):
  member = Adds.objects.get(id=id)
  member.delete()
  return render(request, "view_state.html")
def update3(request, id):
  mymember = Adds.objects.get(id=id)
  template = loader.get_template('update3.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))
def up_st(request, id):
    Stater= request.POST['Stater']
    mymember = Adds.objects.get(id=id)
    mymember.Stater = Stater
    mymember.save()
    return render(request, "view_state.html")




def manage_user(request):
        fetch = Newuser.objects.all()
        return render(request, "show2.html", {'fetch': fetch})
def delete4(request, id):
  member = Newuser.objects.get(id=id)
  member.delete()
  return render(request, "show2.html")


def update4(request, id):
  mymember = Newuser.objects.get(id=id)
  template = loader.get_template('update4.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))

def upadate_users(request, id):
    Name = request.POST['Name']
    Email = request.POST['Email']
    Password = request.POST['Password']
    Confirm_Password = request.POST['Confirm_Password']
    Select_Member = request.POST['Select_Member']
    Mobile = request.POST['Mobile']

    mymember = Newuser.objects.get(id=id)
    mymember.Name = Name
    mymember.Email = Email
    mymember.Password = Password
    mymember.Confirm_Password = Confirm_Password
    mymember.Select_Member= Select_Member
    mymember.Mobile = Mobile
    mymember.save()
    return render(request, "update4.html")

def logout1(request):
    return render(request, 'Isthome.html')

def Isthome(request):
    return render(request, 'Isthome.html')




def showapi(request):
    fetch = Newuser.objects.all()
    list=[]
    for i in fetch:
        dict={"id":i.id,"Name":i.Name,"Email":i.Email,'Password':i.Password,'Confirm_Password':i.Confirm_Password,'Select_Member':i.Select_Member,'Mobile':i.Mobile}
        list.append(dict)
    return JsonResponse(list,safe=False)

def showapi1(request):
    fetch=Adds_property.objects.all()
    list=[]
    for i in fetch:
        dict={"id":i.id,'Stater':i.Stater,'District':i.District,'Local_Address':i.Local_Address,'Description':i.Description,'Rent':i.Rent,'Mobile':i.Mobile}
        list.append(dict)

    return JsonResponse(list,safe=False)


def showapi2(request):
    fetch=Python.objects.all()
    list=[]
    for i in fetch:
     dict1 =  [{'Punjabi':i.Punjabi}, {'Hindi': i.Hindi},{'English':i.English}, {'Math': i.Math}]
     dict={"id":i.id,'Name':i.Name,'Class':i.Class,'Course':i.Course,"Marks":dict1}
     list.append(dict)
    dict2={'Student_Details':list}
    return JsonResponse(dict2,safe=False)

def showapi3(request):
    fetch=Python.objects.all()
    list=[]
    list1=[]
    for i in fetch:
        dict={"id":i.id,"Name":i.Name,'Course':i.Course,'Marks':[{'Punjabi':i.Punjabi},{'Math':i.Math},{'Hindi':i.Hindi},{'English':i.English}]}
        list.append(dict)
        dict1={'Student_Details':list}
        return JsonResponse(dict1,safe=False)