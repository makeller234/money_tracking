
from datetime import datetime
from flask import Flask, render_template, request, flash, session, redirect, jsonify
from test_model import connect_to_test_db
from jinja2 import StrictUndefined
import os, re
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
    """Creates an account for the user, by adding them to the database, after checking that one doesn't already exist
    Then logs them in by saving their email to the session. Also checks if the password contains an upper and lower case letter, number and symbol.
    If log in is successful, the user is routed to the coin entry page."""

    email = request.form.get('email').lower()
    first_name = request.form.get('fname')
    last_name = request.form.get('lname')
    password = request.form.get('password')

    #Sets up regex search for any lower case character, upper case character, any digit and any symbol that's in the final list of the pass_criteria.
    pass_criteria = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])"
    pass_crit_compiled = re.compile(pass_criteria)
    pass_crit_bool = re.search(pass_crit_compiled, password)
    #pass_crit_bool will be True is valid password and False if not

    user = crud.get_user_by_email(email)

    if user:
        flash(f'{email} is already associated with an account. Please log in')
        return redirect('/')

    elif not pass_crit_bool:
        flash('Not a valid password, please try again')
        return redirect('/')

    else:
        new_user = crud.create_user(email, first_name, last_name, password)
        session['email'] = email
        session['fname'] = new_user.fname
        return render_template('coin_entry.html', first_name = session['fname'], API_KEY=API_KEY)

@app.route('/user_login', methods=['POST'])
def login():
    """Uses the user's email and password to log them in.
    Gives message if info is incorrect and stores email as session if logged in successfully. Then routes the ser to the coin entry page"""

    email = request.form.get('email').lower()
    password = request.form.get('password')

    user = crud.get_user_by_email(email)

    if not user or user.password != password:
        flash(f'The email or password you entered is not correct. Please try again')

        return redirect('/')

    else:
        session['email'] = email
        session['fname'] = user.fname

        return render_template('coin_entry.html',  API_KEY = API_KEY)

@app.route('/dashboard')
def dashboard():
    """Displays the user's information: basic stats, stacked bar graph, and a map of where the money was found."""
    year = request.args.get('years')
    missed = request.args.get('missed')
    if year == None and missed == None:
        year = 'All'
        missed = 'both'

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

@app.route('/coin_entry', methods =['POST'])
def places_api():
    """Allows the user to enter money information with an abbreviated address and the places API will find the full address, minus zip code.
    The entry is then saved in the database."""

    place = request.form.get('places_api')
    place_percent = place.replace(' ', '%20')
  

    query_url = f'https://maps.googleapis.com/maps/api/place/queryautocomplete/json?input={place_percent}&key={API_KEY}'

    response = requests.request('GET', query_url, headers={}, data={})
    res_json = json.loads(response.text)

    addr_split = res_json['predictions'][0]['description'].split(", ") #space is necessary to eliminate the spaces from the words

    date = request.form.get('date')
    #Check if date is empty and assign it today's date, format to YYYY-MM-DD
    #If it isn't blank, format it to correct format
    if date == '':
        d1 = datetime.today() 
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
        money_year = None
    else:
        missed = False
        money_year = request.form.get('money_year')

    
    money_type = request.form.get('money_type')

    crud.create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type)
    flash("You've successfully added money, add some more?")

    return render_template('coin_entry.html', first_name = session['fname'], API_KEY=API_KEY)

@app.route('/return_update_entry')
def return_update_entry():
    data  = crud.all_addresses(session['email'])

    return render_template('update_entry.html', data = data)


@app.route('/update_entry', methods=['POST'])
def update_monies_entry():
    
    if request.form.get('date') != '':
        date = datetime.strptime(request.form.get('date'), '%Y-%m-%d')
        crud.update_date(request.form.get('entry_id'), date)
    
    if request.form.get('amount') != '':
        crud.update_amount(request.form.get('entry_id'), request.form.get('amount'))

    if request.form.get('address') != '':
        crud.update_address(request.form.get('entry_id'), request.form.get('address'))

    if request.form.get('city') != '':
        crud.update_city(request.form.get('entry_id'), request.form.get('city'))
    
    if request.form.get('state') != '':
        crud.update_state(request.form.get('entry_id'), request.form.get('state'))
    
    if request.form.get('zipcode') != '':
        crud.update_zipcode(request.form.get('entry_id'), request.form.get('zipcode'))

    if request.form.get('locname') != '':
        crud.update_locname(request.form.get('entry_id'), request.form.get('locname'))

    if request.form.get('missed') != '':
        missed = request.form.get('missed')
        if missed =='y':
            missed = True
        else:
            missed = False
        crud.update_missed(request.form.get('entry_id'), missed)

    if request.form.get('money_year') != '':
        crud.update_money_year(request.form.get('entry_id'), request.form.get('money_year'))

    if request.form.get('money_type') != '':
        crud.update_money_type(request.form.get('entry_id'), request.form.get('money_type'))

    if request.form.get('del_entry') == 'y':
        crud.delete_entry(request.form.get('entry_id'))


    #data  = crud.all_addresses(session['email'])
    return render_template('update_entry.html')

@app.route('/update_account', methods = ['POST'])
def update_user():

    if request.form.get('fname') != '':
        crud.update_user_fname(session['email'], request.form.get('fname'))
    if request.form.get('lname') != '':
        crud.update_user_lname(session['email'], request.form.get('lname'))

    pass_criteria = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])"
    pass_crit_compiled = re.compile(pass_criteria)
    pass_crit_bool = re.search(pass_crit_compiled, request.form.get('new_pass'))

    if request.form.get('cur_pass') == crud.get_user_password(session['email']) and \
        request.form.get('new_pass') != '':
        if pass_crit_bool:
            crud.update_user_password(session['email'], request.form.get('new_pass'))
        else:
            flash('Not a valid password, please try again.')

    return render_template('/update_user.html', user = crud.get_user_by_email(session['email']))

@app.route('/user_update')
def user_update():
    return render_template('/update_user.html', user = crud.get_user_by_email(session['email']))

@app.route('/return_coin_entry')
def return_coin_entry():
    """A route that allows the user to get from the dashboard to the coin entry page"""

    return render_template('coin_entry.html', first_name = session['fname'], API_KEY = API_KEY)


@app.route('/data_by_user.json')
def data_by_user():
    """returns a json of the coin amounts by day by user"""

    totals_by_day = crud.daily_coin_amounts(session['email'])

    return jsonify({'data':totals_by_day})

@app.route('/all_addresses.json')
def all_user_addresses():
    """Returns a json of the money information that is used for the map and the update entry page"""
    addresses = crud.all_addresses(session['email'])

    return jsonify({'data':addresses})

@app.route('/coin_counts.json')
def coin_counts():
    """Returns a json that is only used in the Polar Graph"""
    coins = crud.coin_polar(session['email'])

    return jsonify({'data': coins})



if __name__ == "__main__":

    connect_to_test_db(app)
    app.run(host="0.0.0.0", debug=True)