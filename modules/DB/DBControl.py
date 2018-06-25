# coding:utf-8
import pymysql
host = "localhost"
user = "root"
password = "archlinux"
database = "music"
port = 3306
charset = 'utf8'


def connect_db():
    return pymysql.connect(host, user, password, database, charset='utf8')


def close_db(db):
    db.close()
