x <- c(1, 2, 3, 4, 5)
x
y <- c(2, 4, 6, 8, 10)
y
class(x)    # x변수의 데이터 타입을 리턴
y <- c(1.2, 2.3, 3.4, 4.5)
y
class(y)
x <- c(1L, 2L, 3L)
class(x)

x <- c("a", "b", "c", "d")
x
class(x)

x <- "2024-07-24"
x
class(x)
x <- as.Date("2024-07-24")
x
class(x)
y <- as.Date("2024-06-11")
y
x - y
y - x
x > y

x <- true
x <- TRUE
class(x)
y <- FALSE

x + y   # TRUE + FALSE 결과 : 1
x * y   # TRUE * FALSE 결과 : 0
x - y   # TRUE - FALSE 결과 : 1
x / y   # TRUE / FALSE 결과 : Inf
y / x   # FALSE / TRUE 결과 : 0
# TRUE는 1로 FALSE는 0으로 대치하여 연산이 이루어 짐

# 논리연산도 가능(&:AND연산, |:OR연산, !:NOT연산)
x & x  # TRUE
x & y  # FALSE
x | y  # TRUE
x & !y # TRUE
!x | y # FALSE

a <- 10; b <- 12   # ;으로 연결하면 여러 개의 명령을 한 번에 실행
(a < b) & (a > b)  # FALSE
(a < b) | (a > b)  # TRUE
!(a > b)   # TRUE

