import sqlite3

from modules.DB.DBControl import connect_db, close_db


class User(object):
    def __init__(self, username, password):
        self.username = username
        self.password = password

    @staticmethod
    def get_pwd(user):
        conn = connect_db()
        c = conn.cursor()
        sql = "SELECT password FROM user WHERE username='%s'" % user.username
        try:
            c.execute(sql)
            ans = c.fetchall()[0][0]
            close_db(conn, c)
            if ans == user.password:
                return True
            else:
                return False
        except IndexError:
            print(sql)
            print('list index out of range')
            return False


def insert_user(user):
    conn = connect_db()
    c = conn.cursor()
    sql = "INSERT INTO user(username, password) " \
          "VALUES ('%s','%s')" % (user.username, user.password)
    try:
        c.execute(sql)
        close_db(conn, c)
        return True
    except sqlite3.IntegrityError:
        print('UNIQUE constraint failed: user.username')
        return False
