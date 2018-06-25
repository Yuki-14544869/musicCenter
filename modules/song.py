from flask import Blueprint, render_template, jsonify
import json
from modules.DB.Song import show_all

song = Blueprint('song', __name__)


@song.route('/', methods=['GET'])
def show_index():
    return render_template('song.html')


@song.route('/get', methods=['GET', 'POST'])
def get_all_music():
    return json.dumps(show_all())
