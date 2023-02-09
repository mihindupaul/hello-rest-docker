import os
import requests

from flask import Flask, abort
from flask_cors import CORS

application = Flask(__name__)
CORS(application)

@application.route('/')
def hello_world():
    return 'Hi There Its Working'

@application.route('/health')
def health():
    return 'OK'

@application.route('/catfact')
def world():
    try:
        return requests.get('https://catfact.ninja/fact').json()
    except Exception as e:
        abort(400, str(e))

