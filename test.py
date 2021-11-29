import unittest
from server import app
from model import db, connect_to_db, User, Monies
from seed_database import example_data

class FlaskTestBasic(unittest.TestCase):
    def setUp(self):
        #setting up connection to app
        self.client = app.test_client()
        app.config['Testing'] = True

    def test_homepage(self):
        """Test the landing page"""
        result = self.client.get('/')
        self.assertIn(b'Log In', result.data)

    def test_log_out(self):
        """Test user log out"""
        result = self.client.get('log_out', follow_redirects = True)
        self.assertIn(b"even logged in", result.data)

class FlaskTestDatabase(unittest.TestCase):
    def setUp(self):
        """Before every test."""
        #set up connection to app database
        self.client = app.test_client()
        app.config['TESTING'] = True
        connect_to_db(app,'postgresql:///test_monies')

        #create sample data
        db.create_all()
        example_data()

        #set up test session info
        with self.client as c:
            with c.session_transaction() as sess:
                sess['email'] = 'tester1@email.com'
                sess['fname'] = 'Test1'
                sess['lname'] = 'McTest1'
    
    def tearDown(self):
        """Do at end of every test."""
        db.session.remove()
        db.drop_all()
        db.engine.dispose()

    def test_dashboard(self):
        """Test User Dashboard"""
        result = self.client.get('/dashboard')     
        self.assertIn(b'You Found: $0.01', result.data)

    def test_login(self):
        """Test User Log In"""
        result = self.client.post('/user_login', data = {'email': 'tester1@email.com', 'password': 'Pword1!'},
                                    follow_redirects = True)
        self.assertIn(b'Interested in logging some money today?', result.data)

    def test_money_entries(self):
        """Test that the user can get to the money entries page to update their entries"""
        result = self.client.get('/return_update_entry')
        self.assertIn(b'always be right on the money', result.data)

    def test_user_update(self):
        """Testing update user info page"""
        result = self.client.get('/user_update')
        self.assertIn(b'Current info: Test1 McTest1', result.data)


if __name__ == "__main__":
    import unittest
    unittest.main()