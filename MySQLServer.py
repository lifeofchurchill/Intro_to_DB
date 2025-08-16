import mysql.connector            # Import the MySQL connector library
from mysql.connector import Error # Import Error class for handling exceptions

try:
    # Step 1: Connect to MySQL server without specifying a database
    # We only need host, username, and password to connect
    connection = mysql.connector.connect(
        host="localhost",     # MySQL server address (local machine)
        user="root",          # MySQL username
        password="Thearthurmorgan1"  # MySQL password
    )

    # Step 2: Check if the connection was successful
    if connection.is_connected():
        cursor = connection.cursor()  # Create a cursor to execute SQL statements

        # Step 3: Create database if it does not already exist
        # This avoids an error if the database is already there
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    # Step 4: Handle errors that occur during connection or execution
    print(f"Error: {e}")

finally:
    # Step 5: Close the cursor and connection to free resources
    try:
        if cursor:
            cursor.close()  # Close the cursor
        if connection and connection.is_connected():
            connection.close()  # Close the connection
            print("MySQL connection closed.")
    except NameError:
        # This runs if cursor/connection were never created (connection failed)
        pass
