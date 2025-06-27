import mysql.connector

try:
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='test'
    )

    if connection.is_connected():
        cursor = connection.cursor()
        try:
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        except mysql.connector.Error as e:
            print(f"Failed to create database: {e}")
        finally:
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

except mysql.connector.Error as e:
    print(f"Error connecting to MySQL: {e}")
