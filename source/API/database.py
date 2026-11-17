import mysql.connector

def get_connection():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="hanhtrinhgiacngo",
        port=3306
    )

    return conn