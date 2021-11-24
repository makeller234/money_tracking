import unittest
from server import app
import server
from model import db, connect_to_db, User, Monies
from seed_database import example_data
from flask import session

class FlaskTestBasic(unittest.TestCase):
    def setUp(self):
        self.client = app.test_client()
        app.config['Testing'] = True

    def test_homepage(self):

        result = self.client.get('/')
        self.assertIn(b'Log In', result.data)

    def test_log_out(self):
        result = self.client.get('log_out', follow_redirects = True)
        self.assertIn(b'logged out', result.data)

class FlaskTestDatabase(unittest.TestCase):
    def setUp(self):
        """Before every test."""
        self.client = app.test_client()
        app.config['TESTING'] = True
        connect_to_db(app,'postgresql:///test_monies')

        db.create_all()
        example_data()

        with self.client as c:
            with c.session_transaction() as sess:
                sess['email'] = 'tester1@email.com'
    
    def tearDown(self):
        """Do at end of every test."""
        db.session.remove()
        db.drop_all()
        db.engine.dispose()

    def test_dashboard(self):
        """Test User Dashboard"""
        result = self.client.get('/dashboard')

        self.assertIn(b'The most frequent coin/bill is penny and it has been found 1 times!', result.data)


    def test_login(self):
        """Test User Log In"""
        result = self.client.post('/user_login', data = {'email': 'tester1@email.com', 'password': 'Pword1!'},
                                    follow_redirects = True)
        self.assertIn(b'Interested in logging some money today?', result.data)

    def test_money_entries(self):
        """Test that the user can get to the money entries page to update their entries"""
        result = self.client.get('/return_update_entry')
        self.assertIn(b'What needs to be updated?', result.data)


if __name__ == "__main__":
    import unittest

    unittest.main()