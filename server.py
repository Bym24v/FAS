from bottle import route, run, template
from modules.static import staticFile
from modules.adb.adbBin import StartADB
from modules.api.api import *

@route('/')
def service_login():
    return template('login')

@route('/home')
def service_index():
    return template('index')

@route('/adb')
def service_adb():
    
    StartADB();
    #return template('index')

run(host='localhost', port=8000)