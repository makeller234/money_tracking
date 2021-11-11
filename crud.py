"""CRUD Operations"""
from model import db, User, Monies, connect_to_db
from sqlalchemy import extract
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
    Since email is the id, .get was used in the query"""

    return User.query.get(email)

def create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type):
    """Adds the money entry to the database for that user"""

    money = Monies(email=email, date=date, amount=amount, address=address, city=city, state=state, zip=zip,
                    locname=locname, missed=missed, money_year=money_year, money_type=money_type)

    db.session.add(money)
    db.session.commit()

    return money

#def total_money(user_email):
def total_money(user_email, year): 
    """takes in 2 parameters, email and year, and returns the total money found and missed for that user in that year"""

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
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns an average based on the year and missed status"""
    miss = True
    if missed == 'found':
        miss = False

    if year == 'All' and missed == 'both':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    elif year == 'All' and miss ==True:
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).all()
    elif year == 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).all()
    elif year !='All' and missed == 'both':  
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
    elif year !='All' and miss==True:    
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).filter(extract('year', Monies.date)==year).all()
    elif year != 'All' and miss ==False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).filter(extract('year', Monies.date)==year).all()


    total = 0
    unique_days = []
    for elem in all_user_results:
        total += elem.amount

        if elem.date not in unique_days:
            unique_days.append(elem.date)
    if year == 'All':
        days_for_avg = (date.today()-min(unique_days)).days+1
    else:
        days_for_avg = (datetime(year,12,31)-datetime(year,1,1)).days+1

    #returns total divided by the difference between the  min date and today's date +1.  Need +1 b/c ex: 11/4-11/1 = 3 in timedelta, but it's actually 4 days
    return round((total / days_for_avg), 3)

def most_freq_money_and_year(user_email, year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns the most frequent occurance for money year and moeny type based on the year and missed status"""
    miss = True
    if missed == 'found':
        miss = False

    if year == 'All' and missed == 'both':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    elif year == 'All' and miss ==True:
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).all()
    elif year == 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).all()
    elif year !='All' and missed == 'both':  
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
    elif year !='All' and miss==True:    
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).filter(extract('year', Monies.date)==year).all()
    elif year != 'All' and miss ==False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).filter(extract('year', Monies.date)==year).all()

    money_years = []
    money_type = []
    for elem in all_user_results:
        money_years.append(elem.money_year)
        money_type.append(elem.money_type)

    money_year_counter = Counter(money_years)
    money_type_counter = Counter(money_type)
    

    max_year_found = [(v,k) for k,v in money_year_counter.items()]
    for item in max_year_found:
        if item[1] == None:
            max_year_found.remove(item)

    max_type_found = [(v,k) for k,v in money_type_counter.items()]
    for item in max_type_found:
        if item[1] == None:
            max_type_found.remove(item)

    print(money_year_counter)
    print(money_type_counter)

    print(max_year_found)
    print(max_type_found)


    if year == 2017:
        max_yr_count,  max_money_yr, max_type_cnt, max_money_type ='N/A','N/A','N/A','N/A'

    elif len(max_year_found) == 0:
        max_yr_count,  max_money_yr = 'N/A','N/A'
        max_type_cnt, max_money_type = max(max_type_found)[0], max(max_type_found)[1]

    else:
        max_yr_count,  max_money_yr, max_type_cnt, max_money_type = max(max_year_found)[0], max(max_year_found)[1], max(max_type_found)[0], max(max_type_found)[1]

    return {'year_count': max_yr_count, 'money_year': max_money_yr,
            'type_count': max_type_cnt, 'money_type': max_money_type}


def most_freq_dow(user_email,year, missed):
    """Takes in 3 parameters, email, year and if the money was missed, found or both.
    Returns the most frequent day of the week based on the year and missed status"""

    miss = True
    if missed == 'found':
        miss = False

    if year == 'All' and missed == 'both':
        all_user_results = Monies.query.filter_by(email = user_email).all()
    elif year == 'All' and miss ==True:
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).all()
    elif year == 'All' and miss == False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).all()
    elif year !='All' and missed == 'both':  
        all_user_results = Monies.query.filter_by(email = user_email).filter(extract('year', Monies.date)==year).all()
    elif year !='All' and miss==True:    
        all_user_results = Monies.query.filter_by(email = user_email, missed=True).filter(extract('year', Monies.date)==year).all()
    elif year != 'All' and miss ==False:
        all_user_results = Monies.query.filter_by(email = user_email, missed=False).filter(extract('year', Monies.date)==year).all()

    dates = []
    for item in all_user_results:
        dates.append(item.date.weekday())
    dow_counter = Counter(dates)
    max_dow = [(v,k) for k,v in dow_counter.items()]
    for idx, val in enumerate(list(calendar.day_name)):
        if idx == max(max_dow)[1]:
            dow = val

    return dow
    
def daily_coin_amounts(user_email):
    """takes in the user email and returns a diction with the years as keys and the values as a dictionary which contains the money found on those specific days of the week"""
  
    all_user_results = Monies.query.filter_by(email = user_email).all()

    dict_by_year_dow = {}
    
    
    for result in all_user_results:
        dict_by_year_dow[result.date.year] = dict_by_year_dow.get(result.date.year, 0)

    # 0=Monday, 6=Sunday
    totals_by_day = {0:{}, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}}
    for key in dict_by_year_dow.keys():
 
        for item in all_user_results:

            if key == item.date.year:
               
                coins_found_on = totals_by_day[item.date.weekday()]
                coins_found_on[item.money_type] = coins_found_on.get(item.money_type, 0) + float(item.amount)

        dict_by_year_dow[key] = totals_by_day
        totals_by_day = {0:{}, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}}


    return dict_by_year_dow

def all_addresses(user_email):
    """Returns a dictionary with an arbitrary key and has the value of another dictionary with information needed to populate the maps graph"""

    all_user_results = Monies.query.filter_by(email=user_email).all()
    addresses = {}
    i = 0
    for address in all_user_results:
        addresses[i] = {'loc':address.locname,'addr':address.address, 'city':address.city,
                        'state':address.state, 'zip':address.zip, 'id':address.id, 'year':address.date.year,
                        'amount':address.amount, 'missed': address.missed}
        i+=1
    #print(addresses)
    return addresses

def coin_polar(user_email):
    """Takes in a users email and returns a dictionary that has a count of the coin types"""
    all_user_coins = Monies.query.filter_by(email=user_email).all()
    coin_list = []
    for item in all_user_coins:
        coin_list.append(item.money_type)
    coin_counts = Counter(coin_list)

    return coin_counts

def years_list(user_email):
    """returns a unique list of all the years in the database, given a specific user"""
    all_user_results = Monies.query.filter_by(email=user_email).all()
    years_list = []
    for result in all_user_results:
        if result.date.year not in years_list:
            years_list.append(result.date.year)
    
    return years_list


if __name__ == "__main__":
    from server import app
    connect_to_db(app)