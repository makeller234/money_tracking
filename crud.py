"""CRUD Operations"""
from model import db, User, Monies, connect_to_db, uri
from sqlalchemy import extract, func
from collections import Counter #counter takes in a list and returns a dictionary where the key is the count of an item and the value is the item
import calendar
from datetime import date, datetime


def create_user(email, fname, lname, password):
    """Creates and returns a new user"""

    user = User(email = email, fname = fname, lname = lname, password = password)

    db.session.add(user)
    db.session.commit()

    return user


def get_user_by_email(email):
    """Returns a user given their email.  
    Since email is the id so .get was used in the query"""

    return User.query.get(email)


def get_user_password(user_email):
    """Takes in user email and gets the password"""

    return User.query.get(user_email).password


def create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type):
    """Adds the money entry to the database for a specific user"""

    money = Monies(email=email, date=date, amount=amount, address=address, city=city, state=state, zip=zip,
                    locname=locname, missed=missed, money_year=money_year, money_type=money_type)

    db.session.add(money)
    db.session.commit()

    return money


def user_query(user_email):
    """Queries the Monies table to get all the information from the user associated with user_email"""

    return Monies.query.filter_by(email=user_email).all()
    

def user_query_filters(user_email, year, missed):
    """Queries the Monies table to get all the information from the user associated with user_email and filters on year and missed status"""

    miss = True
    if missed == 'found':
        miss = False

    if year == 'All' and missed == 'both':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    elif year == 'All' and miss == True:
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).all()
    elif year == 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).all()
    elif year !='All' and missed == 'both':  
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
    elif year !='All' and miss == True:    
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).filter(extract('year', Monies.date)==year).all()
    elif year != 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).filter(extract('year', Monies.date)==year).all()

    return all_user_results


def total_money(user_email, year): 
    """Returns the total money found and missed for that user in that year"""

    if year == 'All':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    else:
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
 
    total_found = 0
    total_missed = 0
    for elem in all_user_results:
        if elem.missed == False:
            total_found += elem.amount
        elif elem.missed == True:
            total_missed += elem.amount

    return {'Total_Found': total_found, "Total_Missed": total_missed}


def daily_average(user_email, year, missed):
    """Returns an average based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)
 
    if len(all_user_results) == 0:
        return 'N/A'
    else:
        total = 0
        unique_days = set()
        #loops over the user results and totals the amounts
        for elem in all_user_results:
            total += elem.amount
            #add the days to a set (to be used to calculate min day for average)
            unique_days.add(elem.date)

        # calculates how many days. Need +1 b/c ex: 11/4-11/1 = 3 in timedelta, but it's 4 days.
        if year == 'All':
            days_for_avg = (date.today()-min(unique_days)).days+1
        else:
            days_for_avg = (datetime(year,12,31)-datetime(year,1,1)).days+1

        return round((total / days_for_avg), 3)


def most_freq_money_and_year(user_email, year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns a dictionary of the most frequent occurrence for money year and money type based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)

    money_years = []
    money_type = []
    
    # Loops over the query results and adds each money year and money type to their corresponding lists
    for elem in all_user_results:
        money_years.append(elem.money_year)
        money_type.append(elem.money_type)

    # Counter creates a dictionary where the key is the count and the value is the year or type
    money_year_counter = Counter(money_years)
    money_type_counter = Counter(money_type)
    
    # Arrange the data in a dict where the key is the count and matching values are added to the values list
    max_type_dict = {}
    for v_type in money_type_counter.values():
        max_type_dict[v_type] = []
    for k,v in money_type_counter.items():
        max_type_dict[v].append(k)

    max_year_dict = {}
    for v_year in money_year_counter.values():
        max_year_dict[v_year] = []
    for k,v in money_year_counter.items():
        max_year_dict[v].append(k)

    if len(max_year_dict) <= 1:
        return {'year_count': 'N/A', 'money_year': 'N/A',
            'type_count': 'N/A', 'money_type': 'N/A'}
    else:
        #find the max key in the dictionary, and check to make sure it's not none
        max_year = max(max_year_dict, key=int)
        max_type = max(max_type_dict, key=int)
        if max_year_dict[max_year] == [None]:
            del max_year_dict[max_year]
            max_year = max(max_year_dict, key=int)
        
        if max_type_dict[max_type] == [None]:
            del max_type_dict[max_type]
            max_type = max(max_type_dict, key=int)


        return {'year_count': max_year, 'money_year': max_year_dict[max_year],
                'type_count': max_type, 'money_type': max_type_dict[max_type]}


def most_freq_dow(user_email,year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns the most frequent day of the week based on the year and missed status"""

    all_user_results = user_query_filters(user_email, year, missed)

    dates = []
    #loops through user query results and adds each weekday number (0 = Monday, 6 = Sunday) to the dates list
    for item in all_user_results:
        dates.append(item.date.weekday())

    #turn the dates list into a dictionary where the key is the count frequency and the value is the day of the week
    dow_counter = Counter(dates)

    #create a dict that has the keys as the counts and the values as a list and groups if they're the same
    dow_dict = {}
    for v in dow_counter.values():
        dow_dict[v] = []
    for k,v in dow_counter.items():
        dow_dict[v].append(k)
    
   #check if it's empty and return N/A
    if len(dow_dict)==0:
        return 'N/A'
    else:
         #find the max key and add the values to a list
        max_dow = max(dow_dict, key=int)
        dow_list_nums = [dow for dow in dow_dict[max_dow]]
    
        #make a list and loop over the calendar names and add them to the list if they match the number from the down_list_nums
        dow_list_days = []
        for idx, val in enumerate(list(calendar.day_name)):
            if idx in dow_list_nums:
                dow_list_days.append(val)

        return dow_list_days

    
def daily_coin_amounts(user_email):
    """Takes in the user email and returns a dictionary with the years as keys and the values as a dictionary which 
    contains the money found or missed on those specific days of the week"""

    all_user_results = user_query(user_email)
    
    dict_by_year_dow = {}
    # Create the first dictionary with the year as the key and the value as 0 as a placeholder.
    for result in all_user_results:
        dict_by_year_dow[result.date.year] = dict_by_year_dow.get(result.date.year, 0)
    
    # Create a dictionary that will hold the missed and found information by day
    # 0=Monday, 6=Sunday
    totals_by_day = {0:{'missed':{}, 'found':{}}, 1:{'missed':{}, 'found':{}}, 2:{'missed':{}, 'found':{}}, 
                    3:{'missed':{}, 'found':{}}, 4:{'missed':{}, 'found':{}}, 5:{'missed':{}, 'found':{}}, 6:{'missed':{}, 'found':{}}}

    # Loop through each key/year, and then all the query results.  If the item from the query result matches the key and the missed boolean, the money type from that item is added
    # to the totals_by_day dict and the amount is incremented
    for key in dict_by_year_dow.keys():
        for item in all_user_results:
            if key == item.date.year and item.missed == True:
                totals_by_day[item.date.weekday()]['missed'][item.money_type] = totals_by_day[item.date.weekday()]['missed'].get(item.money_type, 0) + float(item.amount)
  
            elif key == item.date.year and item.missed == False:
                totals_by_day[item.date.weekday()]['found'][item.money_type] = totals_by_day[item.date.weekday()]['found'].get(item.money_type, 0) + float(item.amount)

        # the totals_by_day dict is set as the value to the correspinding year key of the dict_by_year
        dict_by_year_dow[key] = totals_by_day

        #totals by day is reset so that it will be clean for the next time through the loop of years.
        totals_by_day = {0:{'missed':{}, 'found':{}}, 1:{'missed':{}, 'found':{}}, 2:{'missed':{}, 'found':{}}, 
                        3:{'missed':{}, 'found':{}}, 4:{'missed':{}, 'found':{}}, 5:{'missed':{}, 'found':{}}, 6:{'missed':{}, 'found':{}}}
        
    return dict_by_year_dow


def update_date(entry_id, new_date):
    """Takes in the ID from the Monies table and a date. Updates that entry in the table to have the new date."""

    money_entry = Monies.query.get(entry_id)
    money_entry.date = new_date
    db.session.commit()

    return money_entry


def update_amount(entry_id, new_amount):
    """Takes in the ID from the Monies table and an amount. Updates that entry in the table to have the new amount."""

    money_entry = Monies.query.get(entry_id)
    money_entry.amount = new_amount
    db.session.commit()

    return money_entry


def update_address(entry_id, new_address):
    """Takes in an ID from the Monies table and a new address.
    Updates the entry with the new address."""

    money_entry = Monies.query.get(entry_id)
    money_entry.address = new_address
    db.session.commit()

    return money_entry


def update_city(entry_id, new_city):
    """Takes in an ID from the Monies table and a new city.
    Updates the entry with the new city."""

    money_entry = Monies.query.get(entry_id)
    money_entry.city = new_city
    db.session.commit()

    return money_entry


def update_zipcode(entry_id, new_zipcode):
    """Takes in an ID from the Monies table and a new zipcode.
    Updates the entry with the new zipcode."""

    money_entry = Monies.query.get(entry_id)
    money_entry.zip = new_zipcode
    db.session.commit()

    return money_entry

def update_state(entry_id, new_state):
    """Takes in an ID from the Monies table and a new state.
    Updates the entry with the new state."""

    money_entry = Monies.query.get(entry_id)
    money_entry.state = new_state
    db.session.commit()

    return money_entry


def update_locname(entry_id, new_locname):
    """Takes in an ID from the Monies table and a new location name.
    Updates the entry with the new location name."""

    money_entry = Monies.query.get(entry_id)
    money_entry.locname = new_locname
    db.session.commit()

    return money_entry

def update_missed(entry_id, new_missed):
    """Takes in an ID from the Monies table and a new missed/found status.
    Updates the entry with the new missed/found status."""

    money_entry = Monies.query.get(entry_id)
    money_entry.missed = new_missed
    db.session.commit()

    return money_entry


def update_money_year(entry_id, new_money_year):
    """Takes in an ID from the Monies table and a new money year.
    Updates the entry with the new money year."""

    money_entry = Monies.query.get(entry_id)
    money_entry.money_year = new_money_year
    db.session.commit()

    return money_entry

def update_money_type(entry_id, new_money_type):
    """Takes in an ID from the Monies table and a new money type.
    Updates the entry with the new money type."""

    money_entry = Monies.query.get(entry_id)
    money_entry.money_type = new_money_type
    db.session.commit()

    return money_entry


def delete_entry(entry_id):
    """Deletes an entry from the monies table."""

    Monies.query.filter_by(id=entry_id).delete()
    db.session.commit()

def update_user_fname(user_email, new_fname):
    """Takes in an ID (user_email) and new first name and updates the users table."""

    user_entry = User.query.get(user_email)
    user_entry.fname = new_fname
    db.session.commit()

    return user_entry

def update_user_lname(user_email, new_lname):
    """Take in an ID (user_email) and new last name and updates the users table."""

    user_entry = User.query.get(user_email)
    user_entry.lname = new_lname
    db.session.commit()

    return user_entry


def update_user_password(user_email, new_password):
    """Takes in an ID (user_email) and new password and updates the users table"""

    user_entry = User.query.get(user_email)
    user_entry.password = new_password
    db.session.commit()

    return user_entry

def all_addresses(user_email):
    """Returns a dictionary with an arbitrary key and has the value of another dictionary with information needed to populate the maps graph."""

    all_user_results = user_query(user_email)

    addresses = {}
    i = 0
    for address in all_user_results:
        addresses[i] = {'loc':address.locname,'addr':address.address, 'city':address.city,
                        'state':address.state, 'zip':address.zip, 'id':address.id, 'year':address.date.year,
                        'amount':address.amount, 'missed': address.missed, 'date':address.date,
                        'money_year': address.money_year, 'money_type': address.money_type}
        i+=1

    return addresses


def years_list(user_email):
    """Returns a unique list of all the years in the database, given a specific user."""

    all_user_results = user_query(user_email)

    years_set = set()
    for result in all_user_results:
        years_set.add(result.date.year)
    
    return sorted(list(years_set))


if __name__ == "__main__":
    from server import app
    connect_to_db(app, uri)