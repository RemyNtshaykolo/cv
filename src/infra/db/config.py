import os


class Config(object):
    SQLALCHEMY_DATABASE_URI = os.environ["DATABASE_URL"]


class ProductionConfig(Config):
    DEBUG = False


class DevConfig(Config):
    DEVELOPEMENT = True
    DEBUG = True


class TestingConfig(Config):
    TESTING = True


# "postgres://postgres:postgres@127.0.0.1:5432/local-db"
