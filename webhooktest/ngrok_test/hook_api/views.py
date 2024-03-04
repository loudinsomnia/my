from django.shortcuts import render
import json
from rest_framework.decorators import api_view
from rest_framework.response import Response
import hashlib
import hmac


@api_view(["GET", "POST"])
def webhooks(request):
    api_secret = ""
    signature = hmac.new(api_secret.encode('utf-8'),
                         (request.headers['X-Api-Key'] + json.dumps(request.data, separators=(',', ':'))).encode(
                             'utf-8'), hashlib.sha512).hexdigest()
    if request.headers['X-Api-Signature'] == signature:
        return Response(data={"eventName": f"{request.data['eventName']}", "signature": True}, status=200)
    else:
        return Response(data={"eventName": f"{request.data['eventName']}", "signature": False}, status=200, )


@api_view(["GET", "POST"])
def webhooks_some(request):
    print(request)
    return Response(status=200)


@api_view(["GET"])
def redirect_url(request):
    print(request)
    return Response("OK")


@api_view(["GET"])
def some_date(request):
    params = request.query_params
    if params['id'] != "1":
        return Response(data={"some": "data"}, status=200)
    else:
        return Response(data={"data": "some"}, status=200)
