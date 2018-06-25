from flask import Blueprint
from flask import redirect, render_template, request

from modules.DB.User import User, insert_user

index = Blueprint('index', __name__)


@index.route('/')
def show_index():
    return render_template('index.html')


@index.route('/login', methods=['POST'])
def login():
    username = request.form['username']
    password = request.form['password']
    if username == "":
        return redirect("#UserNameIsNull")
    if password == "":
        return redirect('#PwdIsNull')
    user = User(username, password)
    if user.get_pwd(user):
        return redirect('/user')
    else:
        return redirect('#loginFailure')


@index.route('/login', methods=['GET'])
def login_get():
    return redirect('#login')


@index.route('/signup', methods=['POST'])
def signup():
    username = request.form['username']
    password = request.form['password']
    if username == "":
        return '用户名不能为空！'
    if password == "":
        return '密码不能为空！'
    if password == request.form['password2']:
        user = User(username, password)
        if not insert_user(user):
            return '用户名已存在，请更换用户名！'
    else:
        return '两次输入密码不同，请重新输入！'
    if user.get_pwd(user):
        return '注册成功！'
    else:
        return '注册失败！请重新注册！'


@index.route('/lse')
def lse():
    return render_template('user.html')


@index.route('/shows')
def shows():
    return render_template('shows.html')


@index.route('/usr/edit')
def user_edit():
    return render_template('userEdit.html')

