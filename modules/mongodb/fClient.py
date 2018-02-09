from pymongo import MongoClient
from datetime import datetime

import hashlib


client = MongoClient() #"mongodb://localhost:27017"
db = client.FAS

class FASClient:
    
    def __init__(self):
        pass

    def FasRegister(self, name, password):

        if name == "" and password == "":
            return False
        else:
            pass

        try:
            result = db.FasUsers.insert_one(
                {       
                    "_id": hashlib.sha1(name).hexdigest(),
                    "name": name,
                    "password": hashlib.sha224(password).hexdigest(),
                    "validate": False       
                }
            )

            return True
        except:
            return False

        return False
    

    def FasLogin(self, name, password):

        if name == "" and password == "":
            return False
        else:
            pass

        try:
            # result db
            result = db.FasUsers.find({"name": name})
            
            # parse sha224 passwrod
            parsePassword = hashlib.sha224(password).hexdigest()
            print parsePassword

            if result.count() == 0:
                return False
            elif result[0]['password'] == parsePassword:
                #print result[0]['password']
                return True
            else:
                return False
        except:
            return False
        

        return False
        