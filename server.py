from bottle import route, run, template, redirect, request, post, response, error
from modules.static import staticFile
from modules.adb.adbBin import StartADB
from modules.mongodb.fClient import FASClient
from modules.api.api import *
import datetime
import hashlib
import uuid


instClient = FASClient()
instClient.token = "None"

#clients = []

# path redirect login
@route('/')
def service_home():
    
    # get token
    token = request.get_cookie('token')

    # check token 
    if token == None:
        return redirect('/login')
    elif token:
        if instClient.FasCheckToken(token):
            return template('home')
        else:
            return template('login')

# Login 
@route('/login')
def service_login():
        return template('login')

@post('/login')
def service_post_login():

    # expirate token
    ts = datetime.datetime.utcnow() + datetime.timedelta(days=30)

    # get data
    username = request.forms.get('username')
    password = request.forms.get('password')

    # generate hash 512 
    tokenPassword = hashlib.sha512(password).hexdigest()

    # generate user token hash 224
    instClient.token = hashlib.sha224(tokenPassword).hexdigest()

    # check password
    if instClient.FasLogin(username, password):
        response.set_cookie('token', instClient.token, path='/', expires=ts)
        return redirect('/') 
    else:
        return redirect('/login')

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

@post('/logout')
def service_logout():
    value = ""
    response.set_cookie('token', value, path='/', expires=1000)
    return template('login')



@route('/adb')
def service_adb():
    
    StartADB();
    #return template('index')


@error(404)
def error404(error):
    return "ERROR"

@error(500)
def error500(error):
    return "ERROR"

if __name__ == '__main__':
    run(host='localhost', port=8000, debug=True)