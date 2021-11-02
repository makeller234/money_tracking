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

def daily_average(user_email):
    all_user_results = Monies.query.filter_by(email = user_email).all()
    total = 0
    unique_days = []
    for elem in all_user_results:
        total += elem.amount

        if elem.date not in unique_days:
            unique_days.append(elem.date)

    return total / len(unique_days)


if __name__ == "__main__":
    from server import app
    connect_to_db(app)