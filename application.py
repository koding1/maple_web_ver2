from flask import Flask, render_template
import sys
from read_data import read_data
application = Flask(__name__)

@application.route("/")
def hello2():
    
    return render_template("hello2.html", rank_data=data)

@application.route("/table")
def hello():
    return render_template("table.html", rank_data=data)


if __name__ == "__main__":
    data = read_data()
    
    for k, v in data.items():
        print(k, v)
        
    application.run(host='0.0.0.0', port=5000)


# https://osasf.net/discussion/610 -> mysql latin1 에서 utf8로 바꾸는 설정