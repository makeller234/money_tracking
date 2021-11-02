"""CRUD Operations"""
from model import db, User, Monies, connect_to_db

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


if __name__ == "__main__":
    from server import app
    connect_to_db(app)