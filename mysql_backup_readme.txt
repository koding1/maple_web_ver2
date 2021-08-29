# 구름 데이터 백업 95
mysqldump -u root -p --default-character-set=utf8 rank_db > 0807.sql

# pythonanywhere 데이터 올리기 jh9
mysql -h haegu99.mysql.pythonanywhere-services.com -u haegu99 -p 'haegu99$rank_db' < '0807.sql'
# 구름에 올리기 (테이블 생성까지 되는 것 같네용)
mysql -h localhost -u root -p --default-character-set=utf8 test_db < 210702.sql


# pythonanywhere mysql 접속
mysql -u haegu99 -h haegu99.mysql.pythonanywhere-services.com -p 'haegu99$rank_db'


# 데이터 확인
use rank_db
select * from rank_table

# 업데이트 메뉴얼
service mysql restart
mysql -p
crawling.py 에 for_crawling_mysql function 내의 PAGE_NUM_PLUS 를 설정 (검색 시 넘길 페이지 숫자)
update_data.py 실행
mysqldump -u root -p --default-character-set=utf8 rank_db > 0624.sql
해당 데이터 pythonanywhere 에 업로드 및 pythonanywhere 환경의 mysql에 업데이트
서비스 새로고침