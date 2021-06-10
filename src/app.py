from flask import Flask
from flask_sqlalchemy import SQLAlchemy

from infra.db.config import DevConfig
from flask_migrate import Migrate


app = Flask(__name__)
app.config.from_object(DevConfig)
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
db = SQLAlchemy(app)
migrate = Migrate(app, db)

from infra.db.models import User


@app.route("/")
def hello():
    return "Hello world"


@app.route("/add-todatabase")
def my_projects():
    u = User(name="Rémy")
    db.session.add(u)
    db.session.commit()
    return "<h1> Mes projets</h1>"
