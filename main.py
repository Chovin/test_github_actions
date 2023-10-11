from flask import Flask

app = Flask(__name__)

@app.route("/")
def ok():
    return '<h1>v6</h1>'

app.run(host="0.0.0.0",port=5000)
