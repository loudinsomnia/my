import pytest
from utils.test_classAPI import Session
from utils.helper.asserts import APIAssert
from src.API_DATA.test_data import SessionLogin
import allure


class TestLogIn:
    session = Session()
    login = SessionLogin()
    asserts = APIAssert()

    @pytest.mark.xdist_group("login")
    @pytest.mark.parametrize("login",login.login)
    @pytest.mark.dependency(name="login")
    def test_login(self,login):
        login = self.session.CreateSession(login)
        allure.attach(name="response", body=f"{login.status_code}")
        self.asserts.response_checker(login.status_code,login.text)

    @pytest.mark.xdist_group("login")
    @pytest.mark.dependency(depends=["login"])
    def test_logout(self):
        logout = self.session.DeleteCurrentSession()
        allure.attach(name="response", body=f"{logout.status_code}")
        self.asserts.response_checker(logout.status_code, logout.text)