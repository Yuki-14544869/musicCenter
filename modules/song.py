from flask import Blueprint, render_template

song = Blueprint('song', __name__)


@song.route('/')
def show_index():
    return render_template('song.html')
