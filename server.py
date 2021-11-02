
import re
import crud
from flask import Flask, render_template, request, flash, session, redirect
from model import connect_to_db
from jinja2 import StrictUndefined

app = Flask(__name__)
app.secret_key = 'picklesaretastey'
app.jinja_env.undefined = StrictUndefined

@app.route('/')
def homepage():
    """View Homepage"""

    return render_template('login.html')

@app.route('/create_account', methods=['POST'])
def create_account():
    """Creates an account for the user after checking that it doens't already exist
    Then logs them in by saving their email to the session"""

    email = request.form.get('email').lower()
    print('************************')
    print(f'create user email {email}')
    fname = request.form.get('fname')
    lname = request.form.get('lname')
    password = request.form.get('password')

    user = crud.get_user_by_email(email)
    print('************************')
    print(f'user email after get function {user.email}')

    if user.email == email:
        flash(f'{email} is already associated with an account. Please log in')
    else:
        crud.create_user(email, fname, lname, password)
        session['email'] = email

    
    return render_template('coin_entry.html', first_name = user.fname)

@app.route('/user_login', methods=['POST'])
def login():
    """Uses the user's email and password to log them in.
    Gives message if info is incorrect and stores email as cookie if logged in successfully"""

    email = request.form.get('email').lower()
    password = request.form.get('password')


    user = crud.get_user_by_email(email)
    if not user or user.password != password:
        flash(f'The email or password you entered is not correct. Please try again')
    else:
        session['email'] = email
        flash(f'Welcome back, {user.fname} {user.lname}!')

    return render_template('coin_entry.html', first_name = user.fname)



if __name__ == "__main__":
    connect_to_db(app)
    app.run(host="0.0.0.0", debug=True)