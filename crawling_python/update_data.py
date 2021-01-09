# mysql의 rank 데이터를 업데이트 하는 모듈

import pymysql
from return_full_database import read_data
from crawling import for_crawling_mysql
from grap_mysql import grap_data
from operator import itemgetter

# 데이터 저장 예시 ->
# data = [{'job': '히어로', 'page': 30, 'char_cnt': 291, 'now_rank': 0, 'ex_rank': 0}, {'job': '팔라딘', 'page': 15, 'char_cnt': 200, 'now_rank': 0, 'ex_rank': 0}, ...]

data = for_crawling_mysql()
print("크롤링 완료하였습니다.")

# data = [{'job': '히어로', 'page': 30, 'char_cnt': 291, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '팔라딘', 'page': 19, 'char_cnt': 181, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '다크나이트', 'page': 19, 'char_cnt': 181, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '불독', 'page': 77, 'char_cnt': 761, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '썬콜', 'page': 39, 'char_cnt': 381, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '비숍', 'page': 67, 'char_cnt': 661, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '보마', 'page': 14, 'char_cnt': 131, 'now_rank': 0, 'ex_rank': 0},
#         {'job': '신궁', 'page': 6, 'char_cnt': 51, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '패파', 'page': 41, 'char_cnt': 401, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '나로', 'page': 66, 'char_cnt': 651, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '섀도어', 'page': 50, 'char_cnt': 491, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '듀블', 'page': 99, 'char_cnt': 981, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '바이퍼', 'page': 31, 'char_cnt': 300, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '캡틴', 'page': 6, 'char_cnt': 51, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '캐슈', 'page': 35, 'char_cnt': 341, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '소마', 'page': 17, 'char_cnt': 161, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '플위', 'page': 20, 'char_cnt': 191, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '윈브', 'page': 34, 'char_cnt': 331, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '나워', 'page': 9, 'char_cnt': 80, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '스커', 'page': 7, 'char_cnt': 61, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '미하일', 'page': 3, 'char_cnt': 21, 'now_rank': 0, 'ex_rank': 0}, {'job': '아란', 'page': 28, 'char_cnt': 271, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '에반', 'page': 25, 'char_cnt': 241, 'now_rank': 0, 'ex_rank': 0}, {'job': '배메', 'page': 7, 'char_cnt': 61, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '와헌', 'page': 10, 'char_cnt': 91, 'now_rank': 0, 'ex_rank':0}, {'job': '메카', 'page': 9, 'char_cnt': 81, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '데슬', 'page': 19, 'char_cnt': 180, 'now_rank': 0, 'ex_rank': 0}, {'job': '데벤', 'page': 23, 'char_cnt': 221, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '제논', 'page': 21, 'char_cnt':201, 'now_rank': 0, 'ex_rank': 0}, {'job': '블래', 'page': 7, 'char_cnt': 61, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '메르', 'page': 22, 'char_cnt': 211, 'now_rank': 0, 'ex_rank': 0}, {'job': '팬텀', 'page': 40, 'char_cnt': 391, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '루미', 'page': 18, 'char_cnt': 171, 'now_rank': 0, 'ex_rank': 0}, {'job': '카이저', 'page': 13, 'char_cnt': 121, 'now_rank': 0, 'ex_rank': 0},
#         {'job': '엔버', 'page': 44, 'char_cnt': 431, 'now_rank': 0, 'ex_rank': 0}, {'job': '제로', 'page': 37, 'char_cnt': 361, 'now_ank': 0, 'ex_rank': 0}, 
#         {'job': '은월', 'page': 47, 'char_cnt': 461, 'now_rank': 0, 'ex_rank': 0}, {'job': '키네', 'page': 16, 'char_cnt': 151, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '카데나', 'page': 16, 'char_cnt': 151, 'now_rank': 0, 'ex_rank': 0}, {'job': '일리움','page': 4, 'char_cnt': 31, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '아크', 'page': 39, 'char_cnt': 381, 'now_rank': 0, 'ex_rank': 0}, {'job': '호영', 'page': 8, 'char_cnt': 71, 'now_rank': 0, 'ex_rank': 0}, 
#         {'job': '아델', 'page': 37, 'char_cnt': 361, 'now_rank': 0, 'ex_rank': 0}]

# i['char_cnt'] 를 기준으로 정렬
data = sorted(data, key=itemgetter('char_cnt'), reverse = True)
print("정렬 완료")

# mysql에 현재 저장되어 있는 데이터 가져오기
rank_database = grap_data()
print("mysql 로드 완료")

# now_rank 수정, ex_rank 수정
cnt = 1
for i in data:
    i['now_rank'] = cnt
    cnt += 1
    mysql_now_rank = next(item for item in rank_database if (item["job"] == i["job"]))['now_rank']
    i['ex_rank'] = mysql_now_rank
print("rank 삽입 완료")

db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'haegu',
                     passwd = '950713',
                     db = 'rank_db',
                     charset='utf8')

cursor = db.cursor()

sql = """update rank_table 
         set page=%s, char_cnt=%s, now_rank=%s, ex_rank=%s
         where job = %s"""

for i in data:
    job      = i['job']
    page     = i['page']
    char_cnt = i['char_cnt']
    now_rank = i['now_rank']
    ex_rank  = i['ex_rank']
    
    print(page,char_cnt,now_rank,ex_rank, job)
    
    #SQL query 실행
    #직업 이름, 페이지, 캐릭터 수, 현재 등수, 과거 등수
    cursor.execute(sql, (page, char_cnt, now_rank, ex_rank, job))
print("데이터 베이스에 push 완료")

db.commit()

db.close()
