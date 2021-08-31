from flask import Flask, render_template
from flask_scss import Scss
import sys
from grap_mysql2 import grap_data

application = Flask(__name__)

@application.route("/")
def main():
    return render_template("job_rank_0825.html", rank_data=data['210827_table'])

@application.route("/job_rank")
def job_rank():
    return render_template("job_rank_0825.html", rank_data=data['210827_table'])

@application.route("/mbti")
def navi():
    return render_template("mbti_0825.html")

@application.route("/chart")
def chart():
    return render_template("chart.html")

@application.route("/chart2")
def chart2():
    return render_template("chart2.html", rank_data=data, job_name = job_name, len_ = len(job_name), div_id = div_id)

@application.route("/update_history")
def update_history():
    return render_template("update_history.html", rank_data=data)

@application.route("/s")
def statistics():
    return render_template("statistics.html", rank_data=data, job_name = job_name, len_ = len(job_name), div_id = div_id)



if __name__ == "__main__":
    data = grap_data()
    job_name = []
    div_id = []
    cnt = 0
    for i in data['210310_table']:
        job_name.append(i['job'])
        div_id.append("job"+str(cnt))
        cnt += 1
    print(div_id)
    application.run(host='0.0.0.0', port=5000)

# https://tutorial-extensions.djangogirls.org/ko/domain
# http://www.inven.co.kr/board/maple/2299
# https://osasf.net/discussion/610 -> mysql latin1 에서 utf8로 바꾸는 설정 
# http://jchamill.github.io/jquery-quiz/
# https://blog.naver.com/PostView.nhn?blogId=altmshfkgudtjr&logNo=221581049939&from=search&redirect=Log&widgetTypeCall=true&directAccess=false