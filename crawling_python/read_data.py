
def list2dict(full_data):
    data_dict = {}
    
    for i in full_data:
        data_dict[i[0]] = [int(i[1]), int(i[2])]
    
    data_dict = sorted(data_dict.items(), key=lambda x : x[1], reverse = True)
    data_dict = dict(data_dict)

    final_dict = {}
    rank = 1
    for k, v in data_dict.items():
        final_dict[k] = [rank, v[1]]
        rank += 1
    
    print(final_dict)
        
    return final_dict

def read_data():
    # 파일 열기
    f = open("crawling_data.txt", 'r+', encoding ='utf-8-sig')
    
    lines = f.readlines()
    full_data = []
    for line in lines:
        
        line = line.replace("\n","")
        
        # txt 파일 맨 아래 '*' 를 써두고, 해당 문자가 왔다면, 마지막 라인으로 인식함.
        if line[0] == '*':
            f.close()
            return list2dict(full_data);
        else:
            data = []
            # 공백을 기준으로 문자열을 분리함 (직업 이름, page, 랭킹 순)
            full_data.append(line.split(' '))
            

    f.close()
    return list2dict(full_data);
    
if __name__ == "__main__" :
    data_dict = read_data()
    
    
    
    
    