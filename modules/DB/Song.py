import sqlite3
from modules.DB.DBControl import connect_db, close_db


class Song(object):
    def __init__(self, song_id, name, album_id,
                 song_id_in_album, path):
        self.songId = song_id
        self.name = name
        self.albumId = album_id
        self.song_id_in_album = song_id_in_album
        self.path = path


def show_all(self):
    conn = connect_db()
    c = conn.cursor()
    close_db(conn, c)
