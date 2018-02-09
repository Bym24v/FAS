from bottle import route, run, template



@route('/api/savedata')
def api_savedata():
    
    return "savedata"

@route('/api/getdata')
def api_getdata():
    
    return "false"
