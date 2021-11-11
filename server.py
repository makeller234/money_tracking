
from datetime import datetime
from flask import Flask, render_template, request, flash, session, redirect, jsonify
from model import connect_to_db
from jinja2 import StrictUndefined
import os
import crud
import requests, json


app = Flask(__name__)
app.secret_key = 'picklesaretastey'
app.jinja_env.undefined = StrictUndefined

API_KEY = os.environ['API_KEY']


@app.route('/')
def homepage():
    """View Homepage"""

    return render_template('login.html')

@app.route('/log_out')
def log_out():
    """Removes the stored session info and returns user to log in page"""
    session.pop('email', None)
    session.pop('fname', None)
    flash("You've successfully logged out.")
    return redirect('/')

@app.route('/create_account', methods=['POST'])
def create_account():
    """Creates an account for the user after checking that one doesn't already exist
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
        return render_template('coin_entry.html', first_name = session['fname'], API_KEY=API_KEY)

@app.route('/user_login', methods=['POST'])
def login():
    """Uses the user's email and password to log them in.
    Gives message if info is incorrect and stores email as session if logged in successfully"""

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

        return render_template('coin_entry.html', first_name = session['fname'], API_KEY = API_KEY)

@app.route('/return_coin_entry')
def return_coin_entry():
    return render_template('coin_entry.html', first_name = session['fname'], API_KEY = API_KEY)

@app.route('/coin_entry', methods=['POST'])
def coin_entry():
    """Takes coin entry info and adds to db. Coverts the date to correct formatting"""

    date = request.form.get('date')
    #Check if date is empty and assign it today's date, format to YYYY-MM-DD
    #If it isn't blank, format it to correct format
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
    flash("You've successfully added money, add some more?")

    return render_template('coin_entry.html', first_name = session['fname'], API_KEY = API_KEY)

@app.route('/dashboard')
def dashboard():
    year = request.args.get('years')
    missed = request.args.get('missed')
    if year == None:
        year = 'All'

    if year == 'All':
        year = year
    else:
        year = int(year)

    total = crud.total_money(session['email'], year)
    day_avg = crud.daily_average(session['email'],year, missed)
    money_deets = crud.most_freq_money_and_year(session['email'],year, missed)
    dow = crud.most_freq_dow(session['email'],year, missed)
    years_list = crud.years_list(session['email'])

    
    

    return render_template('dashboard.html', day_avg = day_avg, total_found = total['Total_Found'],
                                            total_missed = total['Total_Missed'], money_year = money_deets['money_year'],
                                            money_count = money_deets['year_count'], type_count = money_deets['type_count'],
                                            money_type = money_deets['money_type'], dow = dow, API_KEY=API_KEY,
                                            years_list = years_list, year = year, missed = missed)

@app.route('/places_api', methods =['POST'])
def places_api():

    place = request.form.get('places_api')
    #place_plus = place.replace(' ', '+')
    place_percent = place.replace(' ', '%20')
  
    #places_url = f'https://maps.googleapis.com/maps/api/place/autocomplete/json?input={place_plus}&key={API_KEY}'
    query_url = f'https://maps.googleapis.com/maps/api/place/queryautocomplete/json?input={place_percent}&key={API_KEY}'

    response = requests.request('GET', query_url, headers={}, data={})
    res_json = json.loads(response.text)
    #print(res_json['predictions'][0]['description'])
    addr_split = res_json['predictions'][0]['description'].split(", ") #space is necessary to eliminate the spaces from the words

    date = request.form.get('date')
    #Check if date is empty and assign it today's date, format to YYYY-MM-DD
    #If it isn't blank, format it to correct format
    if date == '':
        d1 = datetime.today() #maybe this line can be combined with the line right below it
        date = d1.strftime('%Y-%m-%d')
    else:
        date = datetime.strptime(date,'%Y-%m-%d')


    email = session['email']
    amount = request.form.get('amount')
    address = addr_split[0]
    city = addr_split[1]
    state = addr_split[2]
    zip = None
    locname = request.form.get('locname')
    missed = request.form.get('missed')
    if missed =='y':
        missed = True
    else:
        missed = False

    money_year = request.form.get('money_year')
    money_type = request.form.get('money_type')

    crud.create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type)
    flash("You've successfully added money, add some more?")




    return render_template('coin_entry.html', first_name = session['fname'], API_KEY=API_KEY)


@app.route('/data_by_user.json')
def data_by_user():

    totals_by_day = crud.daily_coin_amounts(session['email'])

    return jsonify({'data':totals_by_day})

@app.route('/all_addreses.json')
def all_user_addresses():
    addresses = crud.all_addresses(session['email'])

    return jsonify({'data':addresses})

@app.route('/coin_counts.json')
def coin_counts():
    coins = crud.coin_polar(session['email'])

    return jsonify({'data': coins})



if __name__ == "__main__":
    connect_to_db(app)
    app.run(host="0.0.0.0", debug=True)