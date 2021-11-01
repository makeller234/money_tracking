
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
    email = request.form.get('email')
    first_name = request.form.get('fname')
    last_name = request.form.get('lname')

    session['email'] = email

    return render_template('coin_entry.html', email = email, first_name = first_name, last_name = last_name)



if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)