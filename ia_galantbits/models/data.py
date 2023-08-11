from models.connection import Connection

# Here is the link between the database and the website
class Data :
# no __init__, so no self
    
   # take back the 10 last donors from the database (in order to display them on the website) 
    def get_all_donors():
        cursor = Connection.connect()
        query = "SELECT * FROM donors ORDER BY id DESC LIMIT 10;"
        cursor.execute(query)
        donors = []
        for registering in cursor:   
            donor = {                     # dictionary list (do not forget to begin at 1 to avoid taking the ID column)
                'surname': registering[1],
                'name': registering[2],
                'address': registering[3],
                'e_mail': registering[4],
                'amount': registering[5],
                'date' : registering[6],
                'comment': registering[7],
            }
            donors.append(donor)
            print(donor)
        Connection.disconnect()
        return donors

# take back the amount of each donor from the database and add them
    def total_amount():
        total=0
        cursor=Connection.connect()
        query = "SELECT amount FROM donors"
        cursor.execute(query)
        for amount in cursor:
            total+=amount[0]
        return total

# add a new donor to the database
    def add_donor(surname, name, address, e_mail, amount, comment=None):
        cursor = Connection.connect()
        query = "INSERT INTO donors(surname, name, address, e_mail, amount, date, comment) VALUES (%s, %s,%s, %s, %s, NOW(), %s);"
        data = (surname, name, address, e_mail, amount, comment)
        cursor.execute(query, data)
        Connection.disconnect()
