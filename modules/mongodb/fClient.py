from pymongo import MongoClient
from datetime import datetime

import hashlib


client = MongoClient() #"mongodb://localhost:27017"
db = client.FAS

class FASClient:

    def FasRegister(self, name, password):

        if name == "" and password == "":
            return False
        else:
            pass

        try:

            tokenPasswrod = hashlib.sha512(password).hexdigest()

            result = db.FasUsers.insert_one(
                {       
                    "_id": hashlib.sha1(name).hexdigest(),
                    "name": name,
                    "password": hashlib.sha512(password).hexdigest(),
                    "token": hashlib.sha224(tokenPasswrod).hexdigest()      
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
            parsePassword = hashlib.sha512(password).hexdigest()

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
    
    def FasCheckToken(self, token):

        if token == "":
            return False
        else:
            pass

        try:
            # result db
            result = db.FasUsers.find({"token": token})
            #print result[0]['token']

            # parse sha224 token
            tokenClient = hashlib.sha224(result[0]['password']).hexdigest()
            #print tokenClient

            if result.count() == 0:
                return False
            elif result[0]['token'] == tokenClient:
                #print result[0]['token']
                return True
            else:
                return False
        except:
            return False
        

        return False

    def FasSaveRawData(self, priority, tag, pid, msg):

        try:

            result = db.FasRawData.insert_one(
                {       
                    "_id": hashlib.md5(msg+pid).hexdigest(),
                    "priority": priority,
                    "tag": tag,
                    "pid": pid,
                    "msg": msg
                }
            )

            return True
        except:
            return False

        return False

    def FasGetRawData(self):
        pass