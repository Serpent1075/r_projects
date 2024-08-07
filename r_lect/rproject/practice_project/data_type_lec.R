# Vector : 벡터는 크기와 순서(인덱스를 의미하며 R에서 인덱스 번호는 1번 부터 시작)가 있는 데이터 집합 - 1차원 집합
# 벡터는 기본적으로 c()함수를 사용하여 생성함
# 벡터는 한 가지 종류의 데이터만 저장할 수 있음
v1 = c(1, 2, 3, 4, 5)
v1  # 결과 : [1] 1 2 3 4 5
class(v1)  # 결과 : [1] "numeric"
v2 = c(1, 2, 3, "a", "b")   # 모든 데이터가 문자열로 변경됨
v2  # 결과 : [1] "1" "2" "3" "a" "b"
class(v2)  # 결과 : [1] "character"

v1[2]  # 2  v1벡터의 2번 인덱스에 해당하는 값 추출
v1[-2] # 1 3 4 5  v1벡터의 2번 인덱스를 제외한 모든 값 추출
v1[c(2, 4)] # 2 4  v1벡터의 2번과 4번 인덱스에 해당하는 값 추출
v1[2:4] # 2 3 4  v1벡터의 2번부터 4번 인덱스까지의 값 추출
v2[v2 == "a"] # "a"  v2벡터의 값이 "a"인 값 추출
v1[v1 %% 2 == 0] # 2 4  v1벡터의 값이 짝수인 값 추출
v1[v1 %% 3 == 0] # 3  v1벡터의 값이 3의 배수인 값 추출


# factor : 팩터는 카테고리로 분류할 수 있는 데이터 값, 즉 범주형 데이터를 관리하는 데이터 구조
# 범주형 : 정해진 유형이나 정해진 값만을 사용하는 데이터를 의미
f1 <- factor(c("M", "F", "M", "F"))
f1 # [1] M F M F  => f1팩터에 들어있는 값
# Levels: F M  => f1팩터의 범주
levels(f1) <- c("A", "B")  # f1팩터의 범주를 변경
f1 # [1] B A B A  => f1팩터에 들어있는 변경된 값
# Levels: A B  => f1팩터의 변경된 범주

f1[2] # [1] A  f1팩터의 2번 인덱스에 해당하는 값 추출
# Levels: A B  f1팩터의 범주
f1[1:3] # [1] B A B  f1팩터의 1번부터 3번 인덱스까지 추출
# Levels: A B  f1팩터의 범주


# matrix : 행렬로 행(row)과 열(column)으로 구성된 2차원 구조
# DB의 테이블과 같은 구조로 한 가지 종류의 데이터만 저장 가능
# 문법 : matrix(데이터, 행수, 열수)
m1 <- matrix(1:20, 5, 4)
m1
#      [,1] [,2] [,3] [,4]
# [1,]    1    6   11   16
# [2,]    2    7   12   17
# [3,]    3    8   13   18
# [4,]    4    9   14   19
# [5,]    5   10   15   20
# 행렬의 위와 왼쪽에 각각 열과 행의 인덱스 번호가 보임
class(m1)  # [1] "matrix" "array"
m1[3, 4]   # [1] 18  m1행렬의 3행 4열의 값 추출
m1[2:4, ]  # 2행~4행까지의 모든 데이터 추출
#      [,1] [,2] [,3] [,4]
# [1,]    2    7   12   17
# [2,]    3    8   13   18
# [3,]    4    9   14   19
m1[, 2:4]  # 2열~4열까지의 모든 데이터 추출
#      [,1] [,2] [,3]
# [1,]    6   11   16
# [2,]    7   12   17
# [3,]    8   13   18
# [4,]    9   14   19
# [5,]   10   15   20

a1 <- array(1:3, c(5,4,2))
a1
