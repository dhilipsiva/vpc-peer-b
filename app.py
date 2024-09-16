from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "service-b is reachable"

if __name__ == '__main__':
    app.run(debug=True)

