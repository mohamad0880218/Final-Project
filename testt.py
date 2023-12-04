import unittest
from main import app, db, User
PASSWORD = "Root_User"
PUBLIC_IP_ADDRESS = "34.105.101.145:3306"
DBNAME = "testappdb"
PROJECT_ID = "grounded-pager-400600"
INSTANCE_NAME = "my-sql"

class TestApp(unittest.TestCase):

    def setUp(self):
        # Use a separate test database
        app.config['TESTING'] = True
        app.config["SQLALCHEMY_DATABASE_URI"] = f"mysql+pymysql://root:{PASSWORD}@{PUBLIC_IP_ADDRESS}/{DBNAME}"
        #app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///app.db'


        self.app = app.test_client()

        # Initialize the app context and create the test database
        with app.app_context():
            db.drop_all()
            db.create_all()

    def tearDown(self):
        # Drop the test database after the tests
        with app.app_context():
            db.session.remove()
            db.drop_all()

    def test_index(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)

    def test_add_user(self):
    # Print the current users before adding a new one
        with app.app_context():
            existing_users = User.query.all()
            print("Existing Users:", existing_users)

        response = self.app.post('/add_user', data={'username': 'test_user'})
        self.assertEqual(response.status_code, 302)  # Redirect status code

    # Ensure the user was added to the test database
        with app.app_context():
            users = User.query.all()
            print("New Users:", users)
            self.assertEqual(len(users), 1)
            self.assertEqual(users[0].username, 'test_user')


if __name__ == '__main__':
    unittest.main()

