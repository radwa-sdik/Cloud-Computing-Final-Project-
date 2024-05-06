from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

# Database connection
def get_db_connection():
    mydb = mysql.connector.connect(
        host='host.docker.internal',
        user='root',
        password='1234',
        port='3306',
        database='student_data'
    )
    return mydb

# Route for the home page
@app.route('/')
def home():
    return render_template('home.html')

# Route for displaying SQL data
@app.route('/sql_table')
def sql_table():
    mydb = get_db_connection()
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM student;")
    myresult = mycursor.fetchall()
    mycursor.close()
    mydb.close()
    
    # Pass the student data directly to the template
    return render_template('sql-data.html', students=myresult)
@app.route('/courses')
def courses():
    mydb = get_db_connection()
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM courses;")
    course_data = mycursor.fetchall()
    mycursor.close()
    mydb.close()
    
    return render_template('courses.html', courses=course_data)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8000, debug=True)
