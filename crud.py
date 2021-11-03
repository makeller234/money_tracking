"""CRUD Operations"""
from model import db, User, Monies, connect_to_db
from collections import Counter
import calendar
#from datetime import datetime

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

def create_money_entry(email, date, amount, address, city, state, zip, locname, missed, money_year, money_type, dow):

    money = Monies(email=email, date=date, amount=amount, address=address, city=city, state=state, zip=zip,
                    locname=locname, missed=missed, money_year=money_year, money_type=money_type, dow=dow)
    db.session.add(money)
    db.session.commit()

    return money

def total_money(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()
    total_found = 0
    total_missed = 0
    for elem in all_user_results:
        if elem.missed == False:
            total_found += elem.amount
        elif elem.missed == True:
            total_missed += elem.amount
    
    return {'Total_Found': total_found, "Total_Missed": total_missed}

def daily_average(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()
    total = 0
    unique_days = []
    for elem in all_user_results:
        total += elem.amount

        if elem.date not in unique_days:
            unique_days.append(elem.date)

    return round(total / len(unique_days), 2)

def most_freq_money_and_year(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()

    money_years = []
    money_type = []
    for elem in all_user_results:
        money_years.append(elem.money_year)
        money_type.append(elem.money_type)
    #better to use this already made counter function, or build the dictionary myself to prove I know how...
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

    return {'year_count': max(max_year_found)[0], 'money_year':max(max_year_found)[1],
            'type_count': max(max_type_found)[0], 'money_type': max(max_type_found)[1]}
#stats function that does all stats, to have fewer queries and returns dictionary of all stats, or one function per stat

def dow(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()

    dates = []
    for item in all_user_results:
        dates.append(item.date.weekday())
    dow_counter = Counter(dates)
    max_dow = [(v,k) for k,v in dow_counter.items()]
    for idx, val in enumerate(list(calendar.day_name)):
        if idx == max(max_dow)[1]:
            dow = val

    return dow
    
def json(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()
    # 0=Monday, 6=Sunday
    totals_by_day = {0:{}, 1:{}, 2:{}, 3:{}, 4:{}, 5:{}, 6:{}}
 
    for item in all_user_results:
        coins_found_on = totals_by_day[item.date.weekday()]
        coins_found_on[item.money_type] = coins_found_on.get(item.money_type, 0) + float(item.amount)


    return totals_by_day



if __name__ == "__main__":
    from server import app
    connect_to_db(app)