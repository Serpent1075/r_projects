#자료형
#1) 숫자형
#2) 문자형
#3) 논리형
#김함수/남/35/183/72
#박산술/남/27/177/69
#이비교/남/42/175/78
#송논리/여/33/167/58
#최검정/여/25/155/47
#유반복/여/47/173/65
#벡터
#데이터프레임 : 벡터를 연결해서 만드는 자료구조조
#console 지우기 : ctrl + L
#코드 실행 : ctrl + Enter
#변수 지우기 : 빗자루
name=c('김함수', '박산술','이비교', '송논리','최검정','유반복')
gender=c('남','남','남','여','여','여')
age=c(35,27,42,33,25,47)
height=c(183,177,175,167,155,173)
weight=c(72,69,78,58,47,65)
a=3
bb=10

mydf=data.frame(name,gender,age,height,weight)

#신술연산자
# + - * / **(^)
#비교연산자
# == != < <= > >=
#논리연산자
# & | !

#조건문
x=2
if (x >= 3) {
  print("hello")
} else if (x <= 2 & x >1) {
  print("how are you")
} else {
  print("bye")
}

#반복문
for (i in c(1,2,3,4,5)){
  print(i*10)
}

for (i in 1:10) {
  print(2*i+3)
}

#함수
cal_bmi=function(ww,hh){
  bmi=ww/(hh/100)^2
  return(bmi)
}
cal_bmi(80,180)

#패키지(함수, 데이터)
#install.packages("readxl")

library(readxl)

#그래프(박스플롯), t검정
df=data.frame(name,gender,age,height,weight)

#상자 수염 그림 (각 성별의 키)
boxplot(height~gender,df)

t.test(height~gender,df)








