from model import User, Monies, db

def example_data():
    """Add sample data to the testing database for the test"""
    #In case the tests are run more than one, this empties the existing data.
    Monies.query.delete()
    User.query.delete()

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

    tu1_money3 = Monies(email = test_user_1.email, date = '2021-10-21', amount = 0.1, address = '4320 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip = 55406, locname ='Speedway', missed = True,
                        money_year = 2015, money_type = 'dime')

    tu1_money2 = Monies(email = test_user_1.email, date = '2021-10-22', amount = 0.01, address = '3601 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip = 55406, locname ='Merlins', missed = False,
                        money_year = 2015, money_type = 'penny')

    tu2_money1 = Monies(email = test_user_2.email, date = '2015-05-04', amount = .05, address = '4320 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip =55406, locname = 'Speedway', missed = True,
                        money_year = 2012, money_type = 'nickel')
    
    tu2_money2 = Monies(email = test_user_2.email, date = '2015-05-04', amount = 1, address = '4320 E Lake Street',
                        city = 'Minneapolis', state = 'MN', zip =55406, locname = 'Speedway', missed = False,
                        money_year = 2012, money_type = 'dollar')


    db.session.add_all([test_user_1, test_user_2, test_user_3, tu1_money1, tu1_money2, tu1_money3, tu2_money1, tu2_money2])
    db.session.commit()