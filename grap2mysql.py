import pymysql


db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'haegu',
                     passwd = '950713',
                     db = 'rank_db',
                     charset='utf8')

cursor = db.cursor(pymysql.cursors.DictCursor)

#Select Query

# now_rank 칼럼을 기준으로 오름차순 정렬하여 값을 받아온다.
sql = """select * from rank_table order by now_rank asc """
cursor.execute(sql)
select = list(cursor.fetchall())
db.commit()

for i in select:
    print(i)

#Insert Query

db.close()