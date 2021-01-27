import requests
from bs4 import BeautifulSoup
import time
import random

# j, d, page 순서
job = {"히어로" : [1, 12, 30], "팔라딘" : [1, 22, 19], "다크나이트" : [1, 32, 19] , 
       "불독" : [2, 12, 77], "썬콜" : [2, 22, 38], "비숍" : [2, 32, 63], 
       "보마" : [3, 12, 14] , "신궁" : [3, 22, 6], "패파" : [3, 32, 41], 
       "나로" : [4, 12, 66] , "섀도어" : [4, 22, 49], "듀블" : [4, 34, 99], 
       "바이퍼" : [5, 12, 30] , "캡틴" : [5, 22, 6], "캐슈" : [5, 32, 35],
       "소마" : [6, 11, 17] , "플위" : [6, 12, 20], "윈브" : [6, 13, 34],"나워" : [6, 14, 9] , "스커" : [6, 15, 7], "미하일" : [6, 16, 3],
       "아란" : [7, -1, 28],
       "에반" : [8, -1, 25] , 
       "배메" : [10, 32, 7] , "와헌" : [10, 33, 10], "메카" : [10, 35, 9],"데슬" : [10, 31, 18] , "데벤" : [10, 131, 23], "제논" : [10, 36, 21], "블래" : [10, 37, 7],
       "메르" : [11, -1, 22] ,
       "팬텀" : [12, -1, 40] ,
       "루미" : [13, -1, 18] ,
       "카이저" : [14, -1, 13] ,
       "엔버" : [15, -1, 43] ,
       "제로" : [17, -1, 37] ,
       "은월" : [18, -1, 47] ,
       "키네" : [20, -1, 16] ,
       "카데나" : [21, -1, 16] ,
       "일리움" : [22, -1, 4] ,
       "아크" : [23, -1, 38] ,
       "호영" : [24, -1, 8] ,
       "아델" : [25, -1, 37] ,
      }

# 유저 설정
headers = {'User-Agent' : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'}

FIND_LEVEL = 260

def page_serch(val):
    
    re_data = []
    j = val[0]
    d = val[1]
    page_num = val[2]
    re_page_num = page_num
    
    while page_num <= 1000:
        print(page_num, "페이지를 탐색 합니다.")
        url = 'https://maplestory.nexon.com/Ranking/World/Total?page=' + str(page_num) + '&j=' + str(j) + '&d=' + str(d)
        # User 설정
        res = requests.get(url, headers = headers)
        # res.content 주의
        soup = BeautifulSoup(res.content, 'html.parser')
        
        # span.item_title 정보를 선택
        data = soup.select('.rank_table > tbody > tr')
        
        # 해당 페이지의 마지막 캐릭터 레벨 >= FIND_LEVEL 이라면
        if int(str(data[9].select('td')[2])[7:10]) >= FIND_LEVEL:
            re_page_num = page_num
            page_num += 3
        else:
            i = 8
            while i >= 0:
                # 올라가던 중 FIND_LEVEL 과 같거나 큰 레벨이 있다면 해당 페이지의 해당 인덱스가 마지막으로 검사 된다
                if int(str(data[i].select('td')[2])[7:10]) >= FIND_LEVEL:
                    re_data = [page_num, int(data[0].select('td > p')[0].get_text())]
                    return re_data
                i -= 1
            
            
            if (page_num - 1) != re_page_num:
                page_num -= 1
            else:
                re_data = [page_num, int(data[0].select('td > p')[0].get_text())-1]
                return re_data
                
        time.sleep(random.uniform(1, 2))
        
def for_crawling_mysql():
    re_data = []
    for key, val in job.items():
        print(key)
        j = val[0]
        d = val[1]
        page_num = val[2]
        re_page_num = page_num

        while page_num <= 1000:
            print(page_num, "페이지를 탐색 합니다.")
            url = 'https://maplestory.nexon.com/Ranking/World/Total?page=' + str(page_num) + '&j=' + str(j) + '&d=' + str(d)
            # User 설정
            res = requests.get(url, headers = headers)
            # res.content 주의
            soup = BeautifulSoup(res.content, 'html.parser')

            # span.item_title 정보를 선택
            data = soup.select('.rank_table > tbody > tr')

            # 해당 페이지의 마지막 캐릭터 레벨 >= FIND_LEVEL 이라면
            if int(str(data[9].select('td')[2])[7:10]) >= FIND_LEVEL:
                re_page_num = page_num
                page_num += 1
            else:
                i = 8
                while i >= 0:
                    # 올라가던 중 FIND_LEVEL 과 같거나 큰 레벨이 있다면 해당 페이지의 해당 인덱스가 마지막으로 검사 된다
                    if int(str(data[i].select('td')[2])[7:10]) >= FIND_LEVEL:
                        re_data.append({'job' : key, 'page' : page_num, 'char_cnt' : int(data[0].select('td > p')[0].get_text()), 'now_rank' : 0, 'ex_rank' : 0})
                        page_num = 99999
                        break
                    i -= 1


                if (page_num - 1) != re_page_num:
                    page_num -= 1
                else:
                    re_data.append({'job' : key, 'page' : page_num, 'char_cnt' : int(data[0].select('td > p')[0].get_text())-1, 'now_rank' : 0, 'ex_rank' : 0})
                    page_num = 99999
                    break
                    
            time.sleep(0.3)
        print(re_data[-1])
    return re_data

if __name__ == '__main__':

    find_job = input("찾고 싶은 직업이 있다면 입력 (없다면 '없음' 입력): ")
    if find_job == '없음':
        for key, val in job.items():
            print("직업 :" + key)
            re = page_serch(val)
            print(re[0], re[1])
    else:
        print("직업 :" + find_job)
        print(job[find_job])
        re = page_serch(job[find_job])
        print(re[0], re[1])
    

