
import re
from flask import Flask, render_template, request, flash, session, redirect
from jinja2 import StrictUndefined

app = Flask(__name__)
app.secret_key = 'picklesaretastey'
app.jinja_env.undefined = StrictUndefined

@app.route('/')
def homepage():
    """View Homepage"""

    return render_template('login.html')

@app.route('/user_login', methods=['POST'])
def login():

    ## SET UP catch for if they need ot create an account versus already have one
    email = request.form.get('email')
    password = request.form.get('password')
    first_name = request.form.get('fname')
    last_name = request.form.get('lname')

    session['email'] = email
    session['password'] = password

    return render_template('coin_entry.html', email = email, first_name = first_name, last_name = last_name)



if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)