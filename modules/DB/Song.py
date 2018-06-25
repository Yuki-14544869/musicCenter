# coding:utf-8
from modules.DB.DBControl import connect_db, close_db


class Song(object):
    def __init__(self, song_id, name, album_id,
                 song_id_in_album, path):
        self.songId = song_id
        self.name = name
        self.albumId = album_id
        self.song_id_in_album = song_id_in_album
        self.path = path


def show_all():
    global ans
    conn = connect_db()
    c = conn.cursor()
    sql = "SELECT * FROM song"
    try:
        c.execute(sql)
        ans = format_into_json(c.fetchall())
        # print(ans)
    except TypeError:
        pass
    close_db(conn)
    return ans


def format_into_json(songs):
    # print(songs)
    return_ans = []
    for song in songs:
        return_ans.append({'id': song[0], 'name': song[1], 'albumId': song[2], 'songIdInAlbum': song[3]})
    print(return_ans)
    return return_ans
