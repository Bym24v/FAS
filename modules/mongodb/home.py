from pymongo import MongoClient

client = MongoClient()
db = client.fuzzer

class HomeData():
    
    def __init__(self, *args):

        try:
            client = MongoClient('localhost', 27017)
            print "Conectado a mongoDb"
        except:
            print "Error al conectar con mongoDb"


    def savedata(self, priority, tag, pid):
        
        
        try:

            result = db.data.insert_one(
            {
                "_id": "32984793",
                "priority": priority,
                "tag": tag,
                "pid": pid
            
            })

            return True
        except :
            print("Error save data db")
            return False

        return False

    def getdata():
        pass

        