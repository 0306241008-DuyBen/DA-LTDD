from fastapi import FastAPI
import mysql.connector
from database import get_connection

# Lenh run: uvicorn main:app --reload

# Ket noi MySQL
try:
    conn = get_connection()

    if conn.is_connected():
        print("Kết nối MySQL thành công!")
    conn.close()

except mysql.connector.Error as e:
    print("Lỗi kết nối:", e)

###################### Chay API
app = FastAPI()
@app.get("/accounts")
def get_accounts():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM accounts")
    result = cursor.fetchall()

    cursor.close()
    conn.close()

    return result
