mul_func <- function(x, y) {
  return (x * y)
}

result <- mul_func(5, 3)
print(result)

sub_func <- function(x, y) {
  return (abs(x - y))
}

result <- sub_func(3, 5)
print(result)

sub_func2 <- function(x,y) {
  if (x < y) {
    return (y-x)
  } else {
    return (x-y)
  }
}

result <- sub_func2(3, 5)
print(result)
result <- sub_func2(5, 3)
print(result)

n1 <- 10; n2 <- 20
(n1 <- n1+10) > n2 & n1 < (n2 <-  n2 +10) # FALSE
n1
n2

n1 <- 10; n2 <- 20
(n1 <- n1+10) > n2 && n1 < (n2 <-  n2 +10) # FALSE short-circuit
n1
n2

a <- c(1,2,3,NA)
a*2
b <- c(1,2,3,NaN)
b*2
c <- c(1,2,3,NULL)
c*2
d <- c(1,2,3,Inf)
d*2