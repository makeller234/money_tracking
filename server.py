
from datetime import datetime
from flask import Flask, render_template, request, flash, session, redirect
from model import connect_to_db
from jinja2 import StrictUndefined
import re
import crud

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
    first_name = request.form.get('fname')
    last_name = request.form.get('lname')
    password = request.form.get('password')

    user = crud.get_user_by_email(email)

    if user:
        flash(f'{email} is already associated with an account. Please log in')
        return redirect('/')
        
    else:
        new_user = crud.create_user(email, first_name, last_name, password)
        session['email'] = email
        session['fname'] = new_user.fname
        return render_template('coin_entry.html', first_name = session['fname'])

@app.route('/user_login', methods=['POST'])
def login():
    """Uses the user's email and password to log them in.
    Gives message if info is incorrect and stores email as cookie if logged in successfully"""

    email = request.form.get('email').lower()
    password = request.form.get('password')

    user = crud.get_user_by_email(email)

    if not user or user.password != password:
        flash(f'The email or password you entered is not correct. Please try again')

        return redirect('/')

    else:
        session['email'] = email
        session['fname'] = user.fname
        #flash(f'Welcome back, {user.fname} {user.lname}!')

        return render_template('coin_entry.html', first_name = session['fname'])

@app.route('/coin_entry', methods=['POST'])
def coin_entry():
    """takes coin entry info and adds to db. Coverts the year to correct formatting
    and infers day of week(dow)"""

    date = request.form.get('date')
    #check if date is empty and assign it today's date, format to YYYY-MM-DD
    #if it isn't blank, format it to correct format
    if date == '':
        d1 = datetime.today()
        dow = d1.weekday()
        date = d1.strftime('%Y-%m-%d')
    else:
        date = datetime.strptime(date,'%Y-%m-%d')
        dow = date.weekday()

    email = session['email']
    amount = request.form.get('amount')
    address = request.form.get('address')
    city = request.form.get('city')
    state = request.form.get('state')
    zip = request.form.get('zip')
    locname = request.form.get('locname')
    missed = request.form.get('missed')
    if missed =='y':
        missed = True
    else:
        missed = False

    money_year = request.form.get('money_year')
    money_type = request.form.get('money_type')

    #crud.create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type, dow)
    flash('You"ve successfully added money, add some more?')

    return render_template('coin_entry.html', first_name = session['fname'])

@app.route('/dashboard')
def dashboard():

    stat_choice = request.args.get('stats')
    print('TESTING STAT CHOICE')
    print(stat_choice)
    day_avg = crud.daily_average(session['email'])

    return render_template('dashboard.html', day_avg = day_avg)



if __name__ == "__main__":
    connect_to_db(app)
    app.run(host="0.0.0.0", debug=True)