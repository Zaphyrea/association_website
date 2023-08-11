import mysql.connector as mysqlpy

class Connection :
    __USER = 'association'
    __PWD = 'example'
    __HOST = 'localhost'
    __PORT = '3307'
    __DB = 'association'
    __cursor = None
    __bdd = None

# Connection to database
    @classmethod
    def connect(cls):
        if cls.__cursor == None : 
            cls.__bdd = mysqlpy.connect(user = cls.__USER, password = cls.__PWD, host = cls.__HOST, port = cls.__PORT, database = cls.__DB)
            cls.__cursor = cls.__bdd.cursor()

        return cls.__cursor

# Disconnection to database
    @classmethod
    def disconnect(cls):
        # to close the connection we have to read the whole database
        if cls.__bdd.in_transaction:
            cls.__bdd.commit()
        cls.__cursor.fetchall()
        cls.__cursor.close()
        cls.__bdd.close()
        cls.__cursor = None

