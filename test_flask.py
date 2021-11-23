import crud
from unittest import TestCase
from server import app
from test_model import connect_to_test_db, test_db, example_data
from flask import session


class FlaskTestBasic(TestCase):

    def setUp(self):
        self.client = app.test_client()
        app.config['Testing'] = True

    def test_homepage(self):
        result = self.client.get('/')
        self.assertIn(b'Log In', result.data)
    
    def test_log_out(self):
        result = self.client.get('/log_out', follow_redirects = True)
        self.assertIn(b'logged out', result.data)

class FlaskTestDatabase(TestCase):

    def setUp(self):
        self.client = app.test_client()
        app.config['TESTING'] = True
        connect_to_test_db(app, 'postgresql:///test_monies')

        test_db.create_all()
        example_data()

    def tearDown(self):
        test_db.session.remove()
        test_db.drop_all()
        test_db.engine.dispose()
    

class FlaskTestLoggenIn(TestCase):
    def setUp(self):
        self.client = app.test_client()
        app.config['TESTING'] = True
        app.config['SECRET_KEY'] = 'WHATaTESTkey'
        connect_to_test_db(app, 'postgresql:///test_monies')
        

    def test_log_in(self):
        result = self.client.post('/user_login', data={'email':'thevet@email.com', 'password': 'Pword1!'},
                                                        follow_redirects =True)
        self.assertIn(b'Interested in logging some money today?', result.data)

class FlaskTestDashboard(TestCase):
    def setUp(self):
        self.client = app.test_client()
        app.config['TESTING'] = True
        app.config['SECRET_KEY'] = 'WHATaTESTkey'
        connect_to_test_db(app, 'postgresql:///test_monies')

        with self.client as c:
            with c.session_transaction() as sess:
                sess['email'] = 'tester1@email.com'
    
    def test_dashboard(self):
        #testing dashboard for all years and both missed and found money
        # result = self.client.get('/dashboard', data = {'year': 'All', 'missed': 'both', 'total': crud.total_money('tester1@email.com', 'All'), 
        #                             'day_avg': crud.daily_average('tester1@email.com', 'All', 'both'),
        #                             'money_deets': crud.most_freq_money_and_year('tester1@email.com', 'All', 'both'),
        #                             'dow': crud.most_freq_dow('tester1@email.com', 'All', 'both'), 'years_list': crud.years_list('tester1@email.com')},
        #                             follow_redirects = True)

        result = self.client.get('/dashboard',
                            follow_redirects = True)
        self.assertIn(b'The most frequent year of a coin/bill is 2021 and it was found 1 times!', result.data)

if __name__ == '__main__':
    import unittest
    unittest.main()
