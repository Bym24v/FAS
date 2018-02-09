from bottle import route, run, template, redirect, request, post, response
from modules.static import staticFile
from modules.adb.adbBin import StartADB
from modules.mongodb.fClient import FASClient
from modules.api.api import *
import datetime
import hashlib
import uuid


instClient = FASClient()
instClient.token = None

#clients = []

# path redirect login
@route('/')
def service_home():
    
    cookie = request.get_cookie('cookie')

    if cookie == None:
        return redirect('/login')
    elif cookie:
        return template('home')

# route login 
@route('/login')
def service_login():
        return template('login')

@post('/login')
def service_post_login():

    # time expiracion de la cookie
    ts = datetime.datetime.utcnow() + datetime.timedelta(days=30)

    # generate user uuid
    instClient.token = uuid.uuid4().hex

    username = request.forms.get('username')
    password = request.forms.get('password')

    #clients.append(
    #    {   
    #        'uuid': instClient.token,
    #        'name': username
    #    })

    #print len(clients)

    # check password
    if instClient.FasLogin(username, password):
        response.set_cookie('cookie', instClient.token, path='/', expires=ts)
        return redirect('/') # yes
    else:
        return redirect('/login') # no

# Register
@route('/register')
def service_register():
    return template('register')

@post('/register')
def service_post_register():

    username = request.forms.get('username')
    password = request.forms.get('password')

    if instClient.FasRegister(username, password):
        print "Registrado!"
        return redirect('/login')
    else:
        print "No Registrado!"
        return redirect('/register')

    return redirect('/login')









#@route('/home')
#def service_index():
#    return template('home')

@route('/adb')
def service_adb():
    
    StartADB();
    #return template('index')

if __name__ == '__main__':
    run(host='localhost', port=8000, debug=True)