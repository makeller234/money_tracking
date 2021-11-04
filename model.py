
from datetime import date, datetime
from types import CoroutineType
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    """Model for a User"""
    __tablename__ = 'users'

    email = db.Column(db.String(30), primary_key=True)
    fname = db.Column(db.String(30), nullable = False)
    lname = db.Column(db.String(30), nullable = False)
    password = db.Column(db.String(30), nullable = False)

    user = db.relationship("Monies", back_populates = 'monies')

    def __repr__(self):
        return f'<email = {self.email} fname = {self.fname}>'

class Monies(db.Model):
    """Model For the Money"""
    __tablename__= 'monies'

    id = db.Column(db.Integer, primary_key = True, autoincrement = True)
    email = db.Column(db.String(30), db.ForeignKey('users.email'))
    date = db.Column(db.Date, nullable = False)
    amount = db.Column(db.Numeric, nullable = False)
    address = db.Column(db.String(30))
    city = db.Column(db.String(30))
    state = db.Column(db.String(3), nullable = False)
    zip = db.Column(db.String(30))
    locname = db.Column(db.String(50))
    missed = db.Column(db.Boolean)
    money_year = db.Column(db.Integer)
    money_type = db.Column(db.String(15), nullable = False)

    monies = db.relationship("User", back_populates = 'user')

    def __repr__(self):
        return f'<email = {self.email}, amount = {self.amount}, locname = {self.locname}, id = {self.id}>'


def connect_to_db(app):
    """Connect the database to our Flask app."""

    app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql:///money"
    app.config["SQLALCHEMY_ECHO"] = False
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    db.app = app
    db.init_app(app)
    print("Connected to db!")


if __name__ == "__main__":
    from server import app

    connect_to_db(app)