import pymysql
from return_full_database import read_data

# 데이터 읽어오기
rank_database_dict = read_data()

db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'haegu',
                     passwd = '950713',
                     db = 'rank_db',
                     charset='utf8')

cursor = db.cursor()


    
sql = """insert into rank_table(job, page, char_cnt, now_rank, ex_rank)
         values (%s, %s, %s, %s, %s)"""

    
for k, v in rank_database_dict.items():
    job      = k
    page     = v[0]
    char_cnt = v[1]
    now_rank = v[2]
    ex_rank  = v[3]
    
    print(job, page, char_cnt, now_rank, ex_rank)
    
    # SQL query 실행
    # 직업 이름, 페이지, 캐릭터 수, 현재 등수, 과거 등수
    cursor.execute(sql, (job, page, char_cnt, now_rank, ex_rank))



db.commit()

db.close()
