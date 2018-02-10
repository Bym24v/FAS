import os, threading
from subprocess import Popen, PIPE
from modules.fmongodb.fClient import FASClient

instFas = FASClient()

def runAdb():
    
    # Path
    path =  os.getcwd() + "/tools/adb/./adb"
    arg = "logcat"
    arg2 = "-v"
    arg3 = "brief"
    
    # Open
    p = Popen([path, arg, arg2, arg3], stdout=PIPE)

    # Loop
    for line in iter(p.stdout.readline, b''):
        
        line = " ".join(line.split())
        priority = line[0]
        tag = line[2:line.find('(')]
        pid = line[line.find('(')+1:line.find(')')]
        msg = line[line.find(':')+2:: ]
        #print 'PRIORITY: ' + priority + '\t TAG: ' + tag +  '\t PID: ' + pid + '\t MESSAGE: ' + msg
        #instFas.FasSaveRawData(priority, tag, pid, msg)

    p.terminate()
    

# Start adb
def StartADB():
    
    # New Thread
    t = threading.Thread(target=runAdb)
    t.start()
    