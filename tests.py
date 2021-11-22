import crud
from unittest import TestCase
from test_server import app
from test_model import connect_to_test_db, test_db, example_data
from flask import session


class FlaskTestBasic(TestCase):

    def setUp(self):
        self.client = app.test_client()
        app.config['Testing'] = True

    def test_homepage(self):

        result = self.client.get('/')
        self.assertIn(b'Log In', result.data)


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
    
    # def test_user_update(self):
    #     result = self.client.get('/user_update', data={'fname': 'Test1', 'lname': 'McTest1', 'email':'tester1@email.com'},
    #                                 follow_redirects=True)
    #     self.assertIn(b'Update Your Account', result.data)

# class CreateUserTest(TestCase):
#     def test_create_user(self):
#         assert crud.create_user('test@test.com', 'TestUser', 'McTest', 'Password1!')\
#             == '<email = test@test.com fname = TestUser>'

class FlaskTestLoggenIn(TestCase):
    def setUp(self):
        app.config['TESTING'] = True
        app.config['SECRET_KEY'] = 'WHATaTESTkey'
        self.client = app.test_client()

        with self.client as c:
            with c.session_transaction() as sess:
                sess['email'] = 'tester1@email.com'


    def test_user_update(self):
        result = self.client.get('/user_update', data={'fname': 'Test1', 'lname': 'McTest1', 'email':'tester1@email.com'},
                                    follow_redirects=True)
        self.assertIn(b'Update Your Account', result.data)


if __name__ == '__main__':
    import unittest
    unittest.main()
