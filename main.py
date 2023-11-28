from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Replace the following placeholders with your actual Azure Database for MySQL details
database_username = "rizwan"
database_password = "Mysql@3916"
database_host = "final-project-sql.mysql.database.azure.com"
database_port = 3306
database_name = "{your_database}"

#ssl_ca_filename = "{path/to/ca-cert-file.pem}"  # Replace with the path to your CA certificate file

# Construct the SQLAlchemy Database URI
app.config['SQLALCHEMY_DATABASE_URI'] = f"mysql+mysqlconnector://{database_username}:{database_password}@{database_host}:{database_port}/{database_name}?ssl_ca="{ca-cert filename}""

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
