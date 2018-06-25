from flask import Flask
from modules.index import index
from modules.user import user
from modules.song import song
app = Flask(__name__)

app.register_blueprint(index)
app.register_blueprint(index, url_prefix='/index')
app.register_blueprint(user, url_prefix='/user')
app.register_blueprint(song, url_prefix='/song')

if __name__ == '__main__':
    app.run(debug=True)
