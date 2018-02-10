from bottle import route, static_file

## Static dist css
@route('/static/js/<filename>')
def dist_css_static(filename):
    return static_file(filename, root='./public/dist/js/')

## Static dist css
@route('/static/css/<filename>')
def dist_css_static(filename):
    return static_file(filename, root='./public/dist/css/')