from flask import Blueprint, render_template

user = Blueprint('user', __name__)


@user.route('/')
def show_index():
    return render_template('user.html')
