import pymysql

db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'haegu',
                     passwd = '950713',
                     db = 'test_db',
                     charset='utf8')

cursor = db.cursor()

sql_str = """
    CREATE TABLE 210827_table(
    job VARCHAR(255) PRIMARY KEY,
    page INT(10),
    char_cnt INT(10),
    now_rank INT(10),
    ex_rank INT(10)
    )
    """

sql = sql_str

# SQL query 실행
cursor.execute(sql)
cursor.execute("show tables")

db.commit()
db.close()
