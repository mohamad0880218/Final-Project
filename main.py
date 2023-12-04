from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
import os
# Initializing Flask app
app = Flask(__name__)
PASSWORD = "Root_User"
PUBLIC_IP_ADDRESS = "34.105.101.145"
#DBNAME = "appdata"
PROJECT_ID = "grounded-pager-400600"
INSTANCE_NAME = "my-sql"
# Google Cloud SQL (change this accordingly)
#PASSWORD = os.environ.get("PASSWORD")
#PUBLIC_IP_ADDRESS = os.environ.get("PUBLIC_IP_ADDRESS")
DBNAME = os.environ.get("DBNAME","testappdb")
#PROJECT_ID = os.environ.get("PROJECT_ID")
#INSTANCE_NAME = os.environ.get("INSTANCE_NAME")


# Configuration
app.config["SQLALCHEMY_DATABASE_URI"] = f"mysql+pymysql://root:{PASSWORD}@{PUBLIC_IP_ADDRESS}/{DBNAME}"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False  # Disable Flask-SQLAlchemy event tracking

# Initialize SQLAlchemy without the app
db = SQLAlchemy(app)




class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)

@app.route('/')
def index():
    with app.app_context():
        users = User.query.all()
    return render_template('index.html', users=users)

@app.route('/add_user', methods=['POST'])
def add_user():
    username = request.form['username']
    new_user = User(username=username)
    with app.app_context():
        db.session.add(new_user)
        db.session.commit()
    return redirect(url_for('index'))

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(host='0.0.0.0', port=5000, debug=True)
