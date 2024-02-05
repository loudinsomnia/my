import json
import os


def api_config():
    directory = os.path.dirname(os.path.abspath("api_config.json"))
    config = os.path.join(*[directory, "config", "api_config.json"])
    with open(config, 'r', encoding="utf-8") as conf:
        data = json.loads(conf.read())
        return data

def log_pass_config():
    directory = os.path.dirname(os.path.abspath("log_pass.json"))
    config = os.path.join(*[directory, "config", "log_pass.json"])
    with open(config,'r',encoding="utf-8") as conf:
        data = json.loads(conf.read())
        return data