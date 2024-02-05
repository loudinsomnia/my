from faker import Faker
import json
import pytest
from utils.config_reader import log_pass_config

# fill some data + parametrize
login = log_pass_config()
fake = Faker()


class User:
    '''Data for User methods
    Faker generate random email to register'''
    register = [{
        "email": fake.email(),
        "password": "Some1test@gmail.com"
    }]


class SessionLogin:
    '''Data for Session methods'''
    login = [{
        "email": login["log_pass"]["login"],
        "password": login["log_pass"]["password"]
    }, ]


class AccountData:
    '''Data for account methods'''


class InvoicesData:
    '''Data for invoice methods'''


class OnlineStoreData:
    '''Data for online_store methods'''


class Withdraw:
    '''Data for withdraw methods'''
