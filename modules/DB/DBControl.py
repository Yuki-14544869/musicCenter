import sqlite3

# DATABASE = 'D:/Project/FlaskLearning/DB/flaskDB.db'
DATABASE = '/home/yukint/projects/flask/learning/DB/flaskDB.db'


def connect_db():
    return sqlite3.connect(DATABASE)


def close_db(conn, c):
    c.close()
    conn.commit()
    conn.close()
