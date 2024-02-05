import pytest
import requests
import json
from .config_reader import api_config


class BaseAPI:
    def __init__(self):
        self.api = api_config()
        self.url = self.api["base_url"]
        self.api_header = self.api["headers"]["api_header"]
        self.header = self.api["headers"]["header"]
        self.user = self.api["methods"]["Users"]
        self.session = self.api["methods"]["Sessions"]
        self.account = self.api["methods"]["account"]
        self.invoices = self.api["methods"]["invoices"]
        self.online_stores = self.api["methods"]["online_stores"]
        self.withdraw = self.api["methods"]["withdraw"]
        self.mailhog = self.api["mailhog_url"]



class Users(BaseAPI):
    def CreateUser(self, registration):
        return requests.request("POST", url=self.url + self.user["CreateUser"], headers=self.header,
                                data=json.dumps(registration))

    def GetCurrentUser(self):
        return requests.request("GET", url=self.url + self.user["GetCurrentUser"])

    def VerifyUser(self, verify):
        return requests.request("POST", url=self.url + self.user["VerifyUser"], data=json.dumps(verify))

    def ResetUserVerification(self, reset_verify):
        return requests.request("PUT", url=self.url + self.user["ResetUserVerification"],
                                data=json.dumps(reset_verify))

    def RequestResetUserPassword(self, request_reset_password):
        return requests.request("POST", url=self.url + self.user["RequestResetUserPassword"],
                                data=json.dumps(request_reset_password))

    def ResetUserPassword(self, reset_password):
        return requests.request("PUT", url=self.url + self.user["ResetUserPassword"],
                                data=json.dumps(reset_password))


class Session(BaseAPI):
    def CreateSession(self, login):
        return requests.request("POST", url=self.url + self.session["CreateSession"], data=json.dumps(login))

    def DeleteCurrentSession(self):
        return requests.request("DELETE", url=self.url + self.session["DeleteCurrentSession"])


class Account(BaseAPI):
    def GetAccount(self):
        return requests.request("GET", url=self.url + self.account["GetAccount"])


class Invoices(BaseAPI):
    def CreateInvoice(self, invoice):
        return requests.request("POST", url=self.url + self.invoices["CreateInvoice"], data=json.dumps(invoice))

    def GetInvoices(self):
        return requests.request("GET", url=self.url + self.invoices["GetInvoices"])

    def CreateInvoiceExternal(self, invoice):
        return requests.request("POST", url=self.url + self.invoices["CreateInvoiceExternal"],
                                headers=self.api_header, data=json.dumps(invoice))

    def GetInvoice(self, invoiceId):
        return requests.request("GET", self.url + self.invoices["GetInvoice"] + f"{invoiceId}")

    def UpdateInvoiceBlockchain(self, invoiceId):
        return requests.request("PUT", self.url + self.invoices["GetInvoice"] + f"{invoiceId}")


class OnlineStore(BaseAPI):
    def GetOnlineStores(self):
        return requests.request("GET", url=self.url + self.online_stores["GetOnlineStores"])

    def GetOnlineStore(self, online_storeId):
        return requests.request("GET", url=self.url + self.online_stores["GetOnlineStore"] + f"{online_storeId}")

    def CreateOnlineStore(self, online_store):
        return requests.request("POST", url=self.url + self.online_stores["CreateOnlineStore"],
                                data=json.dumps(online_store))

    def UpdateOnlineStore(self, online_store, storeId):
        return requests.request("PUT", url=self.url + self.online_stores["UpdateOnlineStore"] + f"{storeId}",
                                data=json.dumps(online_store))

    def GenerateApiKey(self, online_storeId):
        return requests.request("POST",
                                url=self.url + self.online_stores["GenerateApiKey"] + f"{online_storeId}/api_keys")

    def GenerateCallbackKey(self, online_storeId):
        return requests.request("POST", url=self.url + self.online_stores[
            "GenerateCallbackKey"] + f"{online_storeId}/callback_keys")


class Withdraw(BaseAPI):
    def GetWithdrawals(self, withdraw_param):
        return requests.request("GET", url=self.url + self.withdraw["GetWithdrawals"],
                                params=json.dumps(withdraw_param))

    def CreateWithdrawal(self, withdraw):
        return requests.request("POST", url=self.url + self.withdraw["CreateWithdrawal"], data=json.dumps(withdraw))
