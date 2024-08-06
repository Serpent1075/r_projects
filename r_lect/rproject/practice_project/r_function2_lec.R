# 130page

install.packages("reshape2")
# 데이터 프레임의 형태를 재변환하기 위한 reshape2패키지 설치
library(reshape2)  # reshape2 패키지의 함수들을 사용하기 위해 로딩

df <- data.frame(uid = c("test1", "test2", "test3", "test4"), uname = c("홍길동", "전우치", "채영신", "임꺽정"), grade = c(1, 2, 3, 4), score = c(86, 75, 91, 94))
df
#     uid  uname grade score
# 1 test1 홍길동     1    86
# 2 test2 전우치     2    75
# 3 test3 채영신     3    91
# 4 test4 임꺽정     4    94

# melt(변환할 데이터 프레임, id.var = 키로 사용할 컬럼(들), [measure.vars = 값으로 사용할 컬럼(들), na.rm = FALSE])
# id.var에서 키로 지정한 컬럼을 중심으로 measure.vars에서 지정한 컬럼(들)을 데이터로 사용하는 데이터 프레임으로 변환하는 함수로 na.rm의 값을 TRUE로 하면 결측치인 'NA'값을 빼고 작업하겠다는 의미로 기본값은 FALSE
# measure.vars를 생략하면 키로 지정한 컬럼들을 제외한 모든 컬럼이 데이터로 사용됨
# 철을 녹인다는 의미로 melt라 하며, 데이터 프레임의 모양을 변형가능하게 녹인다는 의미로 변환된 새로운 데이터 프레임을 리턴하는 함수(원본 데이터 프레임은 변하지 않음)

md <- melt(df, id.var = c("uid", "uname"), measure.vars = c("grade", "score"), na.rm = TRUE)
# uid와 uname을 key로 하고, grade와 score를 값으로 사용하며 NA(결측치)는 제외한다는 의미
md
#     uid  uname variable value
# 1 test1 홍길동    grade     1
# 2 test2 전우치    grade     2
# 3 test3 채영신    grade     3
# 4 test4 임꺽정    grade     4
# 5 test1 홍길동    score    86
# 6 test2 전우치    score    75
# 7 test3 채영신    score    91
# 8 test4 임꺽정    score    94


# cast(데이터 프레임, 키로 사용할 컬럼(들) ~ 값으로 사용한 컬럼(들))
# melt() 함수로 변환된 데이터를 되돌리는 함수로 dcast(데이터 프레임으로 리턴)와 acast(벡터, 행렬, 배열 등으로 리턴) 함수가 있다.

md2 <- dcast(md, uid + uname ~ variable)
md2
#     uid  uname grade score
# 1 test1 홍길동     1    86
# 2 test2 전우치     2    75
# 3 test3 채영신     3    91
# 4 test4 임꺽정     4    94


# 데이터분석을 위해 만들어진 요약변수 예시
# (요약변수 예시를 숙지하고 나머지는 파생변수라 생각하면 됨)
# 기간별 구매금액, 횟수 : 고객의 구매 패턴을 볼 수 있는 변수
# 상품별 구매금액, 횟수 : 고객으 라이프 스테이지와 라이프 스타일 등을 이해하는 도움이 됨
# 상품별 구매순서 : 고객에 대한 이해와 해석력을 높일 수 있음
# 유통 채널별 구매금액 : 온라인과 오프라인 사용 고객에게 모두 사용하도록 유도하는 활용
# 단어 빈도 : 텍스트 자료에서 단어들의 출현 빈도를 데이터화하여 사용
# 초기 행동변수 : 고객 가입 또는 첫 거래 초기 1개월 간 거래 패턴에 대한 변수로 1년 후에 어떤 행동을 보일지를 평가하는 지표로 활용
# 트렌드 변수 : 추이값을 나타내는 변수
# 결측값과 이상값 처리 : 결측값과 이상값은 무리해서 처리하려고 하면 시간과 위험이 커질 수 있으므로 데이터의 내용을 파악하여 처리해야 함
# 연속형 변수의 구간화 : 분석후 적용 단계를 고려한 데이터 분석을 위해 연령이나 비용등 연속형 변수를 구간화 하는 것이 필요하다. 꼭 10, 100 단위로 구간화 하지 말고 의미있는 구간으로 구간화


# 데이터 분석 패키지 132page
# sqldf 패키지 : R에서 sql 명령어를 사용하게 해주는 패키지(SAS의 PROC SQL과 같은 역할)
install.packages("sqldf")
library(sqldf)
sqldf("select * from iris") # 테이블 대신 데이터 프레임을 사용하면 됨
#     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 1            5.1         3.5          1.4         0.2     setosa
# 2            4.9         3.0          1.4         0.2     setosa
# ...
# 149          6.2         3.4          5.4         2.3  virginica
# 150          5.9         3.0          5.1         1.8  virginica

# iris에서 Species, Sepal.Length, Sepal.Width 컬럼의 데이터들중 Sepal.Width의 값이 4이상인 데이터 추출
sqldf('select Species, "Sepal.Length", "Sepal.Width" from iris where "Sepal.Width" >= 4')
# 컬럼명에 점(.)이 있어서 컬럼명을 인식하지 못하므로 입력시 따옴표로 묶어야 함
#   Species Sepal.Length Sepal.Width
# 1  setosa          5.8         4.0
# 2  setosa          5.7         4.4
# 3  setosa          5.2         4.1
# 4  setosa          5.5         4.2

# iris에서 상위 10개의 데이터 추출
sqldf("select * from iris limit 10")
# MySQL의 limit명령 사용가능(MS-SQL의 top이나 Oracle의 rownum은 안됨)

# iris에서 상위 11번째 부터 20번째 까지 데이터 추출
sqldf("select * from iris limit 10, 10")
# 10번 인덱스(11번째 데이터 - 0번 부터 시작) 부터 10개를 추출

# iris에서 Species별 Sepal.Length의 합과 평균을 출력
sqldf("select Species, sum(\"Sepal.Length\") 합계, avg(\"Sepal.Length\") 평균 from iris group by Species")
#      Species  합계  평균
# 1     setosa 250.3 5.006
# 2 versicolor 296.8 5.936
# 3  virginica 329.4 6.588

# 고객과 주문 데이터 프레임 생성
customers <- data.frame(uid = c("test1", "test2", "test3", "test4"), uname = c("홍길동", "전우치", "채영신", "임꺽정"), gender = c("남", "남", "여", "여"))
customers
#     uid  uname gender
# 1 test1 홍길동     남
# 2 test2 전우치     남
# 3 test3 채영신     여
# 4 test4 임꺽정     여

orders <- data.frame(oid = c("a01", "a02", "a03", "a04", "a05", "a06"), uid = c("test1", "test2", "test2", "test1", "test3", "test1"), pay = c(2000, 2500, 3500, 1500, 5500, 6000))
orders
#   oid   uid  pay
# 1 a01 test1 2000
# 2 a02 test2 2500
# 3 a03 test2 3500
# 4 a04 test1 1500
# 5 a05 test3 5500
# 6 a06 test1 6000

# customers와 orders를 조인하여 uid, uname, oid, pay를 출력
sqldf("select a.uid, a.uname, b.oid, b.pay from customers a, orders b where a.uid = b.uid")
#     uid  uname oid  pay
# 1 test1 홍길동 a01 2000
# 2 test1 홍길동 a04 1500
# 3 test1 홍길동 a06 6000
# 4 test2 전우치 a02 2500
# 5 test2 전우치 a03 3500
# 6 test3 채영신 a05 5500

# 회원별 아이디와 주문 총액 출력(주문 총액이 적은 순으로)
sqldf("select a.uid, sum(b.pay) total from customers a, orders b where a.uid = b.uid group by a.uid order by total")
#     uid total
# 1 test3  5500
# 2 test2  6000
# 3 test1  9500

# 회원별 아이디와 주문 총액 출력(단, 총액이 6000 이상인 회원만)
sqldf("select a.uid, sum(b.pay) total from customers a, orders b where a.uid = b.uid group by a.uid having total >= 6000")
#     uid total
# 1 test1  9500
# 2 test2  6000

# 회원별 아이디와 주문 총액 출력(단, 총액이 5000~6000인 회원만)
sqldf("select a.uid, sum(b.pay) total from customers a, orders b where a.uid = b.uid group by a.uid having total between 5000 and 6000")
sqldf("select a.uid, sum(b.pay) total from customers a, orders b where a.uid = b.uid group by a.uid having total >= 5000 and total <= 6000")
#     uid total
# 1 test2  6000
# 2 test3  5500



#회원별 아이디와 주문 총액 출력(단, 주문액 없어도 아이디는 출력)
sqldf("select a.uid, sum(b.pay) 주문총액 from customers a left join orders b on a.uid = b.uid group by a.uid")

#한번이라도 구매한 회원의 아이디와 이름 출력
sqldf("select uid, uname from customers where uid in (select uid from orders)")

#데이터의 각 그룹에 대해 지정된 함수를 적용한 후 결과를 다시 합치는 일련의 작업을 자동화한다.
install.packages("plyr")
library(plyr)

# ddply(데이터 프레임, 기준 컬럼, 내부함수, 적용함수-통계함수)
# 내부함수: summarise - 그룹화(group by와 비슷), transform - 원본과 그룹 연산 결과 조인
# 회원별 구매 총액, 평균 구매액 
ddply(orders, "uid", transform, total=round(sum(pay, avg=mean(pay)),digits=0))

# 회원별 구매 총액, 평균 구매액(정수로 연산-반올)
mapply(sum, 1:10, 101:110)
mapply('+', 1:10, 101:110)

#data.table 패키지 : R에서 가장 많이 사용하는 데이터 핸들링 패키지 중 하나
#탐색, 연산, 병합하는데 유용하며 data.frame 보다 빠름
#빠른 그루핑과 ordering 등에서 data.frame 보다 유용함
install.packages("data.table")
library(data.table)
head(as.data.table(iris))

dt <- data.table(piid = c(1,2,3,4), piname = c("상품1","상품2","상품3","상품4"),piprice=c(1000,2000,1500,3000))
dt
dt[1:2]

dt[,c("piid", "piprice")] # dt에서 원하는 컬럼명으로 추출
dt[,list(piid,piprice)] #dt[,.(piid,piprice)] 와 같이 .으로 대체가능
dt[piprice>=2000] #dt에서 piprice의 값이 2000이상인 데이터 추출
#dt에서 piprice의 값이 1000~2000 인 데이터 추출
dt[piprice >=1000 & piprice<2000]

install.packages("dplyr")
library(dplyr)
#select(데이터, 추출할 컬럼(들))
select(orders, oid, uid, pay) #orders에서 지정한 3컬럼 추출
orders %>% select(oid, uid, pay)

select(dt, piid, piname, piprice)
# piid piname piprice
# filter(데이터, 필터링 조건)
filter(orders, pay >= 3000)
orders %>% filter(pay>=3000)

#mutate(데이터, 추가할 컬럼명 = 컬럼값)
mutate(orders, cnt=pay/100) # cnt 컬럼을 추가하지만 원본이 변하지는 않음
# 컬럼을 추가하는 함수지만 원본이 변하지는 않음

orders %>% mutate(cnt=pay/100)
#arrange(데이터, 정렬기준 컬럼)
arrange(orders, desc(pay)) 
orders %>% arrange(desc(pay))
#summarize(데이터, 요약 통계 계산 컬럼)
summarize(orders, mean_pay = mean(pay, na.rm=TRUE))
# order %>% summarize(orders, mean_pay = mean(pay, na.rm=TRUE)) 동일한 결과
#층화추출법
#- 모집단을 서로 겹치지 않게 여러 개의 집단 또는 층으로 나누고, 그 안에서 단순 랜덤 추출법으로 추출
#- 이질적인 원소들로 구성된 모집단에서 각 계층을 고루 대표할 수있도록 표본을 추출하는 방법

#비율척도
#- 절대 0이 존재하여 측정값 사이의 비율 계산이 가능한 척도
# 최빈값 > 중앙값 > 평균: 음의 왜도(Negative-Skewed)
#  대칭 : Symmetric
# 최빈값 < 중앙값 < 평균: 양의 왜도(Positive-skewed)


#통계적 추록
# - 모집단에 대한 추론을 위한것 (모집단을 다른 단어로 써서 틀린 답 유도)
#가설설정 -> 유의 수준 결정 -> 검정 통계량산출 -> 기각/채택 판단(의사결정)



















