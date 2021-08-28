import pymysql

def grap_data():
    db = pymysql.connect(host='localhost',
                         port = 3306,
                         user = 'haegu',
                         passwd = '950713',
                         db = 'test_db',
                         charset='utf8')

    cursor = db.cursor(pymysql.cursors.DictCursor)
    
    #Select Query

    
    # select에 모든 테이블 이름을 담기
    sql = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'test_db'"
    cursor.execute(sql)
    select = list(cursor.fetchall())
    data = {}

    db.commit()
    for index, i in enumerate(select):
        table_name = i['TABLE_NAME']
        # now_rank 칼럼을 기준으로 오름차순 정렬하여 값을 받아온다.
        sql = """select * from {} order by now_rank asc """.format(table_name)
        cursor.execute(sql)
        select2 = list(cursor.fetchall())
        db.commit()
        data[table_name] = select2
    #Insert Query
    
    db.close()

    return data

if __name__ == '__main__':
    grap_data()
    