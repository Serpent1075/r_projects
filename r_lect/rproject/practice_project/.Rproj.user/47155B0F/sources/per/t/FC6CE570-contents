x <- read.csv("D:/adsp/projects/sample/r_practice/reservation_r_csv.csv", header = T, encoding = "UTF-8")
# 특정 위치의 csv파일을 읽어들여 x에 저장(로딩)
head(x)  # x에 들어있는 데이터들 중 윗 부분 일부를 출력

install.packages("readxl") # 엑셀을 로딩하기 위한 패키지 설치
library(readxl)  # readxl패키지의 라이브러리를 현 프로그램으로 로딩
y <- read_excel("D:/adsp/projects/sample/r_practice/reservation_r_excel.xlsx")
# 특정 위치의 excel파일을 읽어들여 y에 저장(로딩)
head(y)

write.csv(reservation_r_csv, "csv_output.csv")
# reservation_r_csv : RStudio를 통해 생성한 데이터 프레임
# 현 프로젝트 폴더에 "csv_output.csv"라는 파일 생성

sink("../output.txt")
# 현 프로젝트 폴더의 상위폴더에 "output.txt" 파일 생성 후 실행되는 명령들을 콘솔창에 보여주지 말고 새로 생성된 파일에 저장하라는 명령
a <- 1
b <- 2
a
b
a + b
sink() # sink()를 이용한 기록을 마침


# save() : 변수를 파일에 저장, load() : 파일에 저장된 변수를 불러옴
x <- c(1, 2, 3)
y <- c(4, 5, 6)
save(x, y, file = "./save.Rdata")
# 현 프로젝트 위치에 "./save.Rdata"라는 이름의 파일에 x, y 변수 저장

rm(list = ls())  # 메모리의 모든 변수를 삭제시키는 명령
x  # 에러: 객체 'x'를 찾을 수 없습니다
y  # 에러: 객체 'y'를 찾을 수 없습니다

load("save.Rdata")
# save()함수로 저장한 변수를 불어와서 메모리에 로딩시킴
x  # [1] 1 2 3
y  # [1] 4 5 6


# 데이터 확인용 함수들(179 page)
head(iris) # iris 데이터셋의 윗부분을 일부(기본값 6) 가져와 출력
head(iris, 10) # iris 데이터셋의 윗부분 10행을 출력

tail(iris) # iris 데이터셋의 아랫부분을 일부(기본값 6) 가져와 출력
tail(iris, 10) # iris 데이터셋의 아랫부분 10행을 출력

summary(iris)  # iris 데이터셋의 요약 통계값 출력
summary(iris$Sepal.Length)
# iris의 컬럼들 중 Sepal.Length의 요약 통계량

str(iris) # 지정한 데이터셋의 구조를 출력
# 'data.frame':	150 obs. of  5 variables:
## iris는 데이터 프레임이며 150행 5열로 이루어져 있다.
# $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
## Sepal.Length라는 컬럼은 숫자형이고, 값은 5.1, 4.9 등이 있다.
# $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
# $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
# $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
# $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 ...
## Species라는 컬럼은 팩터형이며 3가지 값(3levels)중 하나가 나옴

str(head(iris, 3)) # iris의 시작부분 3행에 대한 구조를 출력
str(tail(iris, 3)) # iris의 끝부분 3행에 대한 구조를 출력

View(iris) # iris의 내용을 별도 창에 띄워 줌

dim(iris)  # [1] 150   5   150행, 5열
nrow(iris) # [1] 150   150행
ncol(iris) # [1] 5     5열
length(iris) # [1] 5     iris에 들어있는 열(컬럼)의 개수

x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
length(x)  # [1] 10    x에 들어있는 데이터의 개수

ls()  # [1] "x" "y"   현재 사용중인 변수 목록

object.size(x)  # 176 bytes   변수 x의 크기

v1 <- c(1, 2, 3)
is.na(v1)  # [1] FALSE FALSE FALSE   데이터가 NA(결측치)인지 여부
is.null(v1)    # [1] FALSE   데이터가 null인지 여부
is.vector(v1)  # [1] TRUE    데이터가 vector인지 여부
is.factor(v1)  # [1] FALSE   데이터가 factor인지 여부
is.infinite(v1)# [1] FALSE FALSE FALSE  데이터가 INF(무한대)인지 여부
# is.array(), is.list(), is.matrix(), is.data.frame()


# 데이터 조작 함수(R기본 제공 함수들)

v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
rbind(v1, v2)  # v1과 v2를 행으로 합침
#    [,1] [,2] [,3]
# v1    1    2    3
# v2    4    5    6

cbind(v1, v2)  # v1과 v2를 열로 합침
#      v1 v2
# [1,]  1  4
# [2,]  2  5
# [3,]  3  6

df <- data.frame(name = c("a", "b"), score = c(80, 60))
df
#   name score
# 1    a    80
# 2    b    60

cbind(df, rank = c(1, 2))  # df에 rank열 추가(실제 df는 변하지 않음)
#   name score rank
# 1    a    80    1
# 2    b    60    2
df
#   name score
# 1    a    80
# 2    b    60

# df에 name은 "c", socre는 90인 행을 추가하여 출력
rbind(df, c("c", 90))
#   name score
# 1    a    80
# 2    b    60
# 3    c    90
df
#   name score
# 1    a    80
# 2    b    60

# df에 rank열을 추가한 결과를 유지하도록 작업
df2 <- cbind(df, rank = c(1, 2))
# 열 추가후 다른 데이터프레임에 저장(자기 자신(df)에게 저장해도 됨)
df2
#   name score rank
# 1    a    80    1
# 2    b    60    2

df3 <- rbind(df, c("c", 99))
# 행 추가후 다른 데이터프레임에 저장(자기 자신(df)에게 저장해도 됨)
df3
#   name score
# 1    a    80
# 2    b    60
# 3    c    99

split(iris, iris$Species)
# iris를 Species 컬럼의 값(factor형이어야 함)을 기준으로 구분함
# $setosa
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1        5.1         3.5          1.4         0.2  setosa
# 2        4.9         3.0          1.4         0.2  setosa
# ...
# $versicolor
# Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 51       7.0         3.2          4.7         1.4 versicolor
# 52       6.4         3.2          4.5         1.5 versicolor
# ...
# $virginica
# Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
# 101      6.3         3.3          6.0         2.5 virginica
# 102      5.8         2.7          5.1         1.9 virginica

# subset() : 벡터, 배열, 데이터 프레임 데이터셋에서 조건을 주어 필요한 데이터 추출
subset(iris, Sepal.Length >= 7.5)
# iris의 Sepal.Length 컬럼의 값이 7.5이상인 데이터만 추출
#     Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
# 106          7.6         3.0          6.6         2.1 virginica
# 118          7.7         3.8          6.7         2.2 virginica
# 119          7.7         2.6          6.9         2.3 virginica
# 123          7.7         2.8          6.7         2.0 virginica
# 132          7.9         3.8          6.4         2.0 virginica
# 136          7.7         3.0          6.1         2.3 virginica

subset(iris, Sepal.Length >= 7.5, select = c("Sepal.Length", "Species"))
# iris의 Sepal.Length 컬럼의 값이 7.5이상인 데이터에서 Sepal.Length컬럼과 Species컬럼만 추출
#     Sepal.Length   Species
# 106          7.6 virginica
# 118          7.7 virginica
# 119          7.7 virginica
# 123          7.7 virginica
# 132          7.9 virginica
# 136          7.7 virginica

# iris에서 Sepal.Length컬럼과 Species컬럼만 추출
subset(iris, select = c("Sepal.Length", "Species"))
#     Sepal.Length    Species
# 1            5.1     setosa
# 2            4.9     setosa
# ...
# 149          6.2  virginica
# 150          5.9  virginica

substr(iris$Species, 1, 3)
# iris의 Species컬럼의 값을 1번째 부터 3번째까지 잘라내어 추출
substr(iris$Species, 7, 10)
# iris의 Species컬럼의 값을 7번째 부터 10번째까지 잘라내어 추출
# 자릿수에 문자가 없으면 빈 문자열 리턴
substr("abcdefg", 2, 4) # [1] "bcd" 지정한 문자열의 2~4번째 문자열 추출


# merge() : 두 데이터 프레임의 겹치는 열 이름 또는 행 이름으로 데이터 프레임을 합쳐주는 함수
df1 <- data.frame(name = c("a", "b", "c"), height = c(170, 180, 160))
df1
#   name height
# 1    a    170
# 2    b    180
# 3    c    160
df2 <- data.frame(name = c("c", "b", "a"), weight = c(50, 70, 60))
df2
#   name weight
# 1    c     50
# 2    b     70
# 3    a     60
merge(df1, df2)
#   name height weight
# 1    a    170     60
# 2    b    180     70
# 3    c    160     50

cbind(df1, df2) # cbind는 컬럼명에 구애받지 않고 그냥 열합침
#   name height name weight
# 1    a    170    c     50
# 2    b    180    b     70
# 3    c    160    a     60


# sort() : 데이터셋의 값들을 순서대로 나열시키는 함수
x <- c(20, 10, 30, 50, 40)
sort(x, decreasing = FALSE)
# [1] 10 20 30 40 50   x벡터의 값들을 오름차순 정렬 시킴
# 오름차순일 경우 decreasing = FALSE는 생략가능(쉼표를 적어도 됨)
# sort(x) == sort(x, )
x  # [1] 20 10 30 50 40   원본은 변하지 않음
sort(x, decreasing = TRUE)
# [1] 50 40 30 20 10   x벡터의 값들을 내림차순 정렬 시킴

# order() : 데이터를 정렬시키는 것이 아닌 정렬되는 값의 인덱스를 리턴
order(x, decreasing = FALSE)
# [1] 2 1 3 5 4    x벡터의 값들을 오름차순 정렬에 해당하는 인덱스 번호
# sort()와 마찬가지로 두번째 인수는 오름차순일 경우 생략가능
order(x, decreasing = TRUE)
# [1] 4 5 3 1 2    x벡터의 값들을 내림차순 정렬에 해당하는 인덱스 번호
iris[order(iris$Sepal.Length), ]
# order() 함수는 인덱스를 리턴하므로 데이터 프레임의 좌푯값으로 활용가능
# iris를 Sepal.Length 컬럼의 값을 기준으로 오름차순 정렬
#     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 14           4.3         3.0          1.1         0.1     setosa
# 9            4.4         2.9          1.4         0.2     setosa
# ...
# 136          7.7         3.0          6.1         2.3  virginica
# 132          7.9         3.8          6.4         2.0  virginica


# unique() : 벡터나 데이터 프레임에서 중복 값을 제거한 유일값을 리턴하는 함수(sql의 distinct 명령과 동일)
x <- c(1, 1, 2, 2, 3, 3, 3)
x  # [1] 1 1 2 2 3 3 3
unique(x)  # [1] 1 2 3
# iris의 Species컬럼의 값을 유일한 값으로 출력
unique(iris$Species)
# [1] setosa     versicolor virginica 
# Levels: setosa versicolor virginica


# rm() : 지정한 특정 변수(들)를 메모리에서 제거
x <- c(1, 2, 3, 4, 5)
y <- 10
x  # [1] 1 2 3 4 5
y  # [1] 10
rm(x, y)  # 메모리에서 x와 y라는 변수를 삭제
x  # 에러: 객체 'x'를 찾을 수 없습니다
y  # 에러: 객체 'y'를 찾을 수 없습니다


# aggregate() : 기준열로 그룹화하여 지정한 열에 대한 지정한 요약 통계를 계산하는 함수
# aggregate(계산할 컬럼 ~ 그룹화할 컬럼, 데이터셋, 적용할 통계)
aggregate(Petal.Length ~ Species, iris, mean)
#      Species Petal.Length
# 1     setosa        1.462
# 2 versicolor        4.260
# 3  virginica        5.552

# 여러 컬럼에 대해 계산하려면 cbind() 함수를 이용하면 됨
aggregate(cbind(Petal.Length, Sepal.Length) ~ Species, iris, mean)
#      Species Petal.Length Sepal.Length
# 1     setosa        1.462        5.006
# 2 versicolor        4.260        5.936
# 3  virginica        5.552        6.588


# apply계열 : 조건을 통해 함수를 적용

# tapply(통계를 계산할 컬럼, 그룹화할 기준 컬럼, 통계함수) : 그룹별로 요약 통계를 적용
tapply(iris$Petal.Length, iris$Petal.Width, mean)
#      0.1      0.2      0.3      0.4      0.5      0.6        1 
# 1.380000 1.444828 1.428571 1.571429 1.700000 1.600000 3.628571 
# 1.1      1.2      1.3      1.4      1.5      1.6      1.7 
# 3.566667 4.240000 4.176923 4.637500 4.658333 5.025000 4.750000 
# 1.8      1.9        2      2.1      2.2      2.3      2.4 
# 5.333333 5.320000 5.550000 5.783333 6.033333 5.700000 5.433333 
# 2.5 
# 5.933333 

# mapply(통계함수, 통계를 계산할 컬럼) : 인수에 대한 요약 통계를 적용하는 함수
# iris에서 1~4번 열에서 각각의 최대값을 구함
mapply(max, iris[1:4])
# iris는 데이터 프레임이므로 열번호만 입력해도 행번호 없이 동작함
# 행번호가 없다는 의미로 iris[, 1:4]해야 하나 쉼표없이 입력해도 열번호라고 인식함
# Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
#          7.9          4.4          6.9          2.5 

# apply(통계를 계산할 객체, 계산할 방향-1:행2:열, 통계함수)
mt <- matrix(c(1, 2, 3, 7, 7, 7), 3, 2)
mt
#      [,1] [,2]
# [1,]    1    7
# [2,]    2    7
# [3,]    3    7
apply(mt, 1, mean)  # mt의 행을 기준으로 평균을 구함
# [1] 4.0 4.5 5.0   값들 중 실수가 있으므로 전체 값들을 실수로 표현
apply(mt, 2, mean)  # mt의 열을 기준으로 평균을 구함
# [1] 2 7   값들 모두가 정수이므로 그냥 정수로 표현


# as.~계열 함수 : 자료형과 데이터 구조에 대해 형 변환을 해주는 함수
# 출제빈도가 높지는 않음
x <- c(1, 1, 1, 2, 2, 2)
x  # [1] 1 1 1 2 2 2
class(x)  # [1] "numeric"

x <- as.character(x)  # 문자형으로 변환
x  # [1] "1" "1" "1" "2" "2" "2"
class(x)  # [1] "character"

x <- as.numeric(x)  # 문자형으로 변환된 x를 다시 숫자형으로 변환
x  # [1] 1 1 1 2 2 2
class(x)  # [1] "numeric"

x <- as.factor(x)
x  # [1] 1 1 1 2 2 2    Levels: 1 2
class(x)  # [1] "factor"

x <- as.data.frame(x)  # x를 데이터 프레임으로 변환
x
#   x
# 1 1
# 2 1
# 3 1
# 4 2
# 5 2
# 6 2
class(x)  # [1] "data.frame"


# 기초 수학 함수
x <- c(10, 20, 30, 40, 50) / 4
x  # [1]  2.5  5.0  7.5 10.0 12.5

round(x)    # [1]  2  5  8 10 12    반올림으로 정수부분만 취함
round(x, 0) # [1]  2  5  8 10 12    2번째 인수는 자릿수로 0이 기본
round(x, 1) # [1]  2.5  5.0  7.5 10.0 12.5  소수 첫째자리까지 구함
round(x, -1)# [1]  0  0 10 10 10    10자리로 끊음

ceiling(x)  # [1]  3  5  8 10 13    올림(자릿수 없음)
floor(x)    # [1]  2  5  7 10 12    내림(자릿수 없음)
trunc(x)    # [1]  2  5  7 10 12    버림(소수이하 자리를 버림)

floor(1.2)  # [1] 1(현 숫자보다 작거나 같은 숫자들 중 가장 큰 값)
trunc(1.2)  # [1] 1(소수이하 자리를 버린 후 정수 부분을 리턴)
floor(-1.2) # [1] -2(현 숫자보다 작거나 같은 숫자들 중 가장 큰 값)
trunc(-1.2) # [1] -1(소수이하 자리를 버린 후 정수 부분을 리턴)

abs(-10)    # [1] 10    절대값
log(10)     # [1] 2.302585    밑이 10인 로그값
log(10, 2)  # [1] 3.321928    밑이 2인 로그값
sqrt(10)    # [1] 3.162278    제곱근

sum(x)      # [1] 37.5     합계
mean(x)     # [1] 7.5      평균
median(x)   # [1] 7.5      중간값
max(x)      # [1] 12.5     최대값
min(x)      # [1] 2.5      최소값
range(x)    # [1] 2.5 12.5 범위
sd(x)       # [1] 3.952847 표준편차
var(x)      # [1] 15.625   분산


# paste() : 문자열 연결 함수(여러 문자열을 하나의 문자열로 합침)
paste("abc", "def")  # [1] "abc def"  문자열들 사이에 공백문자 추가
paste0("abc", "def") # [1] "abcdef"   문자열들을 그대로 연결
substr("abcdefg", 2, 5)  # [1] "bcde"  2번째 부터 5번째 까지 잘라옴

a <- c(1, 2, 3, NA)    # [1]  2  4  6 NA  결측치(NA)는 연산 불가
a * 2
b <- c(1, 2, 3, NaN)   # [1]  2  4  6 NaN  NaN은 연산불가
b * 2
c <- c(1, 2, 3, NULL)  # [1]  2  4  6      NULL은 빈 값
c * 2
d <- c(1, 2, 3, Inf)   # [1]  2  4  6 Inf  무한대(Inf)는 연산해도 무한대
d * 2


