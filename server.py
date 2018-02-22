from bottle import route, run, template, redirect, request, post, response, error
from modules.fstatic import staticFile
from modules.fadb.adbBin import StartADB
from modules.fmongodb.fClient import FASClient
from modules.fapi.api import *
import datetime
import hashlib
import uuid


instClient = FASClient()
instClient.token = "None"

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
    instClient.token = hashlib.sha224(tokenPassword + username).hexdigest()

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

    # get data
    username = request.forms.get('username')
    password = request.forms.get('password')

    # check register user
    if instClient.FasRegister(username, password):
        print "Registrado!"
        return redirect('/login')
    else:
        print "No Registrado!"
        return redirect('/register')

    return redirect('/login')

# Logout
@post('/logout')
def service_logout():
    response.set_cookie('token', "", path='/', expires=1000)
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