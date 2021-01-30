# 구름 데이터 백업 95
mysqldump -u root -p --default-character-set=utf8 rank_db > data.sql

# pythonanywhere 데이터 올리기 jh95
mysql -h haegu99.mysql.pythonanywhere-services.com -u haegu99 -p 'haegu99$rank_db' < '0130.sql'

# pythonanywhere mysql 접속
mysql -u haegu99 -h haegu99.mysql.pythonanywhere-services.com -p 'haegu99$rank_db'


# 데이터 확인
use rank_db
select * from rank_table