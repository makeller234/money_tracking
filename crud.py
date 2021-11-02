"""CRUD Operations"""
from model import db, User, Monies, connect_to_db
from collections import Counter

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
    for elem in all_user_results:
        money_years.append(elem.money_year)

    money_year_counter = Counter(money_years)

    return money_year_counter
#stats function that does all stats, to have fewer queries and returns dictionary of all stats, or one function per stat

if __name__ == "__main__":
    from server import app
    connect_to_db(app)