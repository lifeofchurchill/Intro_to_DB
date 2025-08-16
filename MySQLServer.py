import mysql.connector   # Import the MySQL connector library

try:
    # Step 1: Connect to MySQL server without specifying a database
    connection = mysql.connector.connect(
        host="localhost",     # MySQL server address
        user="root",          # MySQL username
        password="Thearthurmorgan1"  # MySQL password
    )

    # Step 2: Check if the connection was successful
    if connection.is_connected():
        cursor = connection.cursor()  # Create a cursor to execute SQL commands

        # Step 3: Create database if it does not already exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    # Step 4: Handle MySQL-specific errors
    print(f"Error: {e}")

finally:
    # Step 5: Always close resources properly
    try:
        if cursor:
            cursor.close()  
        if connection and connection.is_connected():
            connection.close()
            print("MySQL connection closed.")
    except NameError:
        # In case connection or cursor were never created
        pass
