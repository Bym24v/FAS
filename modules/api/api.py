from bottle import route, run, template
from modules.mongodb.home import HomeData

insHome = HomeData()


@route('/api/savedata')
def api_savedata():
    
    return "savedata"

@route('/api/getdata')
def api_getdata():
    
    return "false"
