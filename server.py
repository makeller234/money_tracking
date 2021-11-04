
from datetime import datetime
from flask import Flask, render_template, request, flash, session, redirect, jsonify
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

    #logic here to have user create "strong" password
    # if symbol not in passowrd: message
    #elif capital not in password: message
    #elif lower not in password: message
    #elis number not in password: message
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
        d1 = datetime.today() #maybe this line can be combined with the line right below it
        date = d1.strftime('%Y-%m-%d')
    else:
        date = datetime.strptime(date,'%Y-%m-%d')


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

    crud.create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type)
    flash('You"ve successfully added money, add some more?')

    return render_template('coin_entry.html', first_name = session['fname'])

@app.route('/dashboard')
def dashboard():
    total = crud.total_money(session['email'])
    day_avg = crud.daily_average(session['email'])
    money_deets = crud.most_freq_money_and_year(session['email'])
    dow = crud.most_freq_dow(session['email'])
    

    return render_template('dashboard.html', day_avg = day_avg, total_found = total['Total_Found'],
                                            total_missed = total['Total_Missed'], money_year = money_deets['money_year'],
                                            money_count = money_deets['year_count'], type_count = money_deets['type_count'],
                                            money_type = money_deets['money_type'], dow = dow)


@app.route('/data_by_user.json')
def data_by_user():
    totals_by_day = crud.json(session['email'])

    return jsonify({'data':totals_by_day})



if __name__ == "__main__":
    connect_to_db(app)
    app.run(host="0.0.0.0", debug=True)