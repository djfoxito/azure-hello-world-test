# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello World from NEW Minimal Azure Container App!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
