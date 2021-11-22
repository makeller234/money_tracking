from flask_sqlalchemy import SQLAlchemy

test_db = SQLAlchemy()

class User(test_db.Model):
    """Model for a User"""
    __tablename__ = 'users'

    email = test_db.Column(test_db.String(30), primary_key = True)
    fname = test_db.Column(test_db.String(30), nullable = False)
    lname = test_db.Column(test_db.String(30), nullable = False)
    password = test_db.Column(test_db.String(30), nullable = False)

    user = test_db.relationship("Monies", back_populates = 'monies')

    def __repr__(self):
        return f'<email = {self.email} fname = {self.fname}>'

class Monies(test_db.Model):
    """Model For the Money"""
    __tablename__= 'monies'

    id = test_db.Column(test_db.Integer, primary_key = True, autoincrement = True)
    email = test_db.Column(test_db.String(30), test_db.ForeignKey('users.email'))
    date = test_db.Column(test_db.Date, nullable = False)
    amount = test_db.Column(test_db.Numeric, nullable = False)
    address = test_db.Column(test_db.String(30))
    city = test_db.Column(test_db.String(30))
    state = test_db.Column(test_db.String(3), nullable = False)
    zip = test_db.Column(test_db.String(30))
    locname = test_db.Column(test_db.String(50))
    missed = test_db.Column(test_db.Boolean)
    money_year = test_db.Column(test_db.Integer)
    money_type = test_db.Column(test_db.String(15), nullable = False)

    monies = test_db.relationship("User", back_populates = 'user')

    def __repr__(self):
        return f'<email = {self.email}, amount = {self.amount}, locname = {self.locname}, id = {self.id}>'

def example_data():

    #In case the tests are run more than one, this empties the existing data.
    User.query.delete()
    Monies.query.delete()

    # add sample data
    test_user_1 = User(email = 'tester1@email.com', fname = 'Test1', lname = 'McTest1', password = 'Pword1!')
    test_user_2 = User(email = 'tester2@email.com', fname = 'Test2', lname = 'McTest2', password = 'Pword2@')
    test_user_3 = User(email = 'tester3@email.com', fname = 'Test3', lname = 'McTest3', password = 'Pword3#')

    tu1_money1 = Monies(email = test_user_1.email, date = '2021-11-22', amount = 0.1, address = '3601 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip = 55406, locname ='Merlins', missed = True,
                        money_year = 2021, money_type = 'dime')
    tu1_money2 = Monies(email = test_user_1.email, date = '2021-10-22', amount = 0.01, address = '3601 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip = 55406, locname ='Merlins', missed = False,
                        money_year = 2015, money_type = 'penny')

    tu2_money1 = Monies(email = test_user_2.email, date = '2015-05-04', amount = .05, address = '4320 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip =55406, locname = 'Speedway', missed = True,
                        money_year = 2012, money_type = 'nickel')
    
    tu2_money2 = Monies(email = test_user_2.email, date = '2015-05-04', amount = 1, address = '4320 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip =55406, locname = 'Speedway', missed = False,
                        money_year = 2012, money_type = 'dollar')


    test_db.session.add_all([test_user_1, test_user_2, test_user_3, tu1_money1, tu1_money2, tu2_money1, tu2_money2])
    test_db.session.commit()

def connect_to_test_db(app, db_uri='postgresql:///test_monies'):
    app.config['SQLALCHEMY_DATABASE_URI'] = db_uri
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    test_db.app = app
    test_db.init_app(app)

if __name__ == '__main__':
    from test_server import app
    connect_to_test_db(app)
    print('Connected to db')

