from flask import Flask
from modules.index import index
from modules.user import user
from modules.song import song
from modules.album import album
from modules.singer import singer
app = Flask(__name__)

app.register_blueprint(index)
app.register_blueprint(index, url_prefix='/index')
app.register_blueprint(user, url_prefix='/user')
app.register_blueprint(song, url_prefix='/song')
app.register_blueprint(album, url_prefix='/album')
app.register_blueprint(singer, url_prefix='/singer')

if __name__ == '__main__':
    app.run(debug=True)
