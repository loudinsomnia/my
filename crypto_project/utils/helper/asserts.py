import json
import os
import pytest



class APIAssert:

    def response_checker(self, status_code, text):
        assert "<html>" not in text, f"html in response"
        assert status_code == 201 or status_code == 200