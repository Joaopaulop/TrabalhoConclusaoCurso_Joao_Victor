import mysql.connector
import datetime


connection = mysql.connector.connect(
    host="localhost",
    user="user",
    password="1234",
    database="bancodados"
)

cursor = connection.cursor()

sql = ""
data = (
    'Primeiro Usuário',
    'primeirousuário@teste.com',
    datetime.datetime.today()
)

cursor.execute(sql, data)
connection.commit()

userid = cursor.lastrowid

cursor.close()
connection.close()

print("Novo usuário: ", userid)

