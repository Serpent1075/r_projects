x <- 1
y <- 2

print(x)
if (x > 10) {
  print('x is smaller than 10')
}

a <- as.Date("2024-07-24")
b <- as.Date("2024-06-11")
a
b
a-b
b-a

x_mix <- c(1,2,"A",3,4,5)
class(x_mix)

x_mix[2]
x_mix[-2]
x_mix[1:3]
x_mix[x==3]

x_factor <- factor(c("M","F","F","M"))
x_factor
levels(x_factor)
levels(x_factor) <- c("A","B")

x_factor[1]

x_matrix <- matrix(1:20, 5, 4)
x_matrix
x_matrix[1,2]
x_matrix[2:4,]
x_matrix[2:4,2]
x_matrix[-2,]
matrix(1:20,5,4,byrow=TRUE)

x_array <- array(1:2, c(5,4,2))
x_array
x_array[1,2,2]
x_array[1:3,2:4,1:2]

x_list <- list(c(1:5), c(1:50))
x_list

x_flower_list <- list(flower = "rose", color = c("red", "white"))
x_flower_list[1]
x_flower_list[[1]]
x_flower_list[2]
x_flower_list[[2]]

x_flower_list$flower[1]

df <- data.frame(name = c("kim","lee","choi","park"),age = c(32,25,18,39), height = c(170,175,168,180), weight = c(63,66,59,70))
df[1, ]
df[c(1,3), ]
df[, 2, drop = FALSE]
df[c(1,3), c(1,2)]

rownames(df) <- c("one", "two", "three", "four")
df[c("one","three"),]

install.packages("dplyr")
install.packages("tidyr")
install.packages("data.table")
install.packages("rmarkdown")
install.packages("shiny")
install.packages("ggplot2")
install.packages("readxl")
install.packages("writexl")
library(dplyr)
summarise(iris, avg = mean(Sepal.Length))
class(iris)
print(iris)
update.packages("dplyr")
remove.packages("dplyr")

library(tidyr)
library(data.table)
library(rmarkdown)
library(shiny)
library(readxl)
x_read_csv <- read.csv("D:/jhoh/rproject/practice_project/r_practice/reservation_r_csv.csv", header = T, encoding="UTF-8") #UTF-8인코딩된 파일이 아닐 경우 에러 발생
head(x_read_csv)
x_read_excel <- read_excel("D:\\jhoh\\rproject\\practice_project\\samples\\samples.xlsx")
x_read_excel
head(x_read_excel,1:2)
tail(x_read_excel,1:2)
str(x_read_excel)
summary(x_read_excel)
View(x_read_excel)
dim(x_read_excel)
ncol(x_read_excel)
nrow(x_read_excel)
length(x_read_excel)
ls()
ls(x_read_excel)
object.size(x_read_excel)
class(x_read_excel)
is.na(x_read_excel)
is.null(x_read_excel)
is.numeric(x_read_excel)
is.character(x_read_excel)
is.logical(x_read_excel)
is.factor(x_read_excel)
is.data.frame(x_read_excel)
library(writexl)
write.csv(x_read_csv, "./result/csv_output.csv")
write_xlsx(x_read_excel,"./result/excel_output.xlsx")

df
168 %in% df[c("one"),]

sink("./result/output.txt")
x
y
df
head(x_read_csv)
sink()
connect <- file("./result/output.txt","w")
x_cat <- iris$Sepal.Length
x_cat
summary(x_cat)
cat(summary(x_cat), file = connect)
close(connect)

x_save <- c(1,2,3)
y_save <- c(4,5,6)
save(x_save,y_save, file ="save.Rdata")
rm(list=ls())
load("save.Rdata")
z_save <- c(7,8,9)
save(list = ls(), file="save.Rdata")
rm(list=ls())
load("save.Rdata")

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)
rbind(x,y)
cbind(x,y)
df_bind <- data.frame(name=c("a","b"), score=c(80,60))
df_bind
cbind(df_bind, rank=c(1,2))
cbind(df, rank=c(1,2))
split(iris, iris$Species)
subset(iris, Sepal.Length >= 7, select = c("Sepal.Length","Species"))
substr(iris$Species,1,3)
x_data <- data.frame(name=c("a","b","c"), height=c(170,180,160))
y_data <- data.frame(name=c("c","a","b"), weight=c(60,70,80))
merge(x_data,y_data)

x <- c(20,10,30,50,40,10,20,70,80,50,40)
sort(x, decreasing=FALSE)
sort(x, decreasing=TRUE)
x
order(x, decreasing=FALSE)
order(x, decreasing=TRUE)
unique(x)
rm(x)
aggregate(Petal.Length ~ Species, iris, mean)
aggregate(cbind(Petal.Length, Sepal.Length) ~ Species, iris, mean)
x <- unique(iris$Petal.Width)
sort(x)
tapply(iris$Petal.Length,iris$Petal.Width,mean)
iris[,1:4]
mapply(max, iris[,1:4])

class(x)
as.character(x)
as.numeric(x)
as.factor(x)
as.data.frame(x)
as.logical(x)

x <- c(1,2,3,4,5) /4
x
round(x,0)
floor(x)
trunc(x)
abs(-10)

log(10,base=2)
sqrt(10)
exp(10)
x <-c(1,2,3,4,5)
sum(x)
mean(x)
median(x) #중앙값
max(x) #최대값
min(x) #최솟값
range(x) #범위
sd(x) #표준편차
var(x) #분산

#그래프
plot(iris$Petal.Length, iris$Petal.Width, main = "iris data", xlab = "Petal Length", ylab = "Petal Width", col = iris$Species)
pairs(~ Sepal.Width + Sepal.Length + Petal.Width + Petal.Length, data = iris, col = iris$Species)
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, freq=FALSE)
x <- aggregate(Petal.Length ~ Species, iris, mean)
barplot(x$Petal.Length, names = x$Species)
x <- aggregate(Petal.Length ~ Species, iris, sum)
pie(x$Petal.Length, labels = x$Species)
x <- tapply(iris$Petal.Length, iris$Petal.Width, mean)
x
#선 그래프 : 시간에 따른 데이터 추이를 확인하는데 유용한 그래프
plot(x, type='o')
#상자 그림그래프: 최대값, 최소값, 중앙값, 사분위수, 이상치등을 알아보기 쉽게 나타내는 그래프(NA는 제거하고 그려짐)
boxplot(iris$Sepal.Width)

for (i in 1:5) {
  print(i)
  if (i == 3) {
    break
  }
}

while (i <= 5) {
  i <- i+1
  if (i == 2) {
    next
  }
  if (i==4) {
    break
  }
  print(i)
}

i <- 1
repeat {
  print(i)
  if (i >=5 ) {
    break
  }
  i <- i+1
}

rm(score)
score <- 78
grade <- "N"
if (score >= 90) {
  grade <- "A"
} else if ( score >= 80) {
  grade <- "B"
} else if ( score >= 70) {
  grade <- "C"
} else if ( score >= 60) {
  grade <- "D"
} else {
  grade <- "F"
}
print(grade)

df <-  data.frame(
  name <- c("홍길동","전우치","채영신","임꺽정","고길동"),
  age <- c(32,33,28,36,41),
  division <- c("기획부","총무부","자재부","총무부","자재부"),
  position <- c("과장","대리","대리","사원","부장"),
  sal <- c(4500000, 2800000, 2500000, 1800000, 4000000)
)
tmp <- ifelse(df$age <35 & df$sal <= 3000000, df$name, "no")
print(tmp)
class(tmp)
rm(tmp)
result <- subset(df, age < 25 & sal <= 3000000)
if (nrow(result) > 0) {
  print(result$name)
} else {
  print("탈락")
}

sum <- 0
for (i in seq(1,100)) {
  sum <- sum +i
}
print(sum)

num <- 1
for (i in seq(1,100)) {
  if (num %% 5 == 0 & num %% 7 == 0 ) {
    print(num)
    break
  }
  num <- num + 1
}

for (i in seq(1,10)) {
  if(i %% 2 == 1) {
    print(i)
  }
}

seq(1, 10, by = 2)

for (i in c(1:10)) {
  if (i %% 2 == 0) {
    next
  } 
  print(i)
}

sum <- 0; i <- 1
while(i <= 100) {
  sum <-  sum +i
  i <- i+1
}
sum
i

i <- 1
while(i <= 100) {
  if (i%%5 == 0 & i %% 7 ==0) {
    print(i)
  }
  i <- i+1
}

prime_number <- function(a) {
  for (i in seq(2,a-1)) {
    if(a%%i==0) {
      return(FALSE)
    }
  }
  return (TRUE)
}
for (i in c(1:100)) {
  if (prime_number(i)) {
    print(i)
  }
}

v1 <- c(2,4,6,8,10)
for (i in 1:length(v1)) { #length(v1 : v1 벡터의 데이터 개수)
  print(v1[i])
}

#엑셀 읽기
library(readxl)
rm(list=ls())
customer_r<- read_excel("D:\\jhoh\\rproject\\practice_project\\r_practice\\customer_r.xlsx")
item_r <- read_excel("D:\\jhoh\\rproject\\practice_project\\r_practice\\item_r.xlsx")
order_info_r <- read_excel("D:\\jhoh\\rproject\\practice_project\\r_practice\\order_info_r.xlsx")
reservation_r <- read_excel("D:\\jhoh\\rproject\\practice_project\\r_practice\\reservation_r.xlsx")


colnames(customer_r) <- tolower(colnames(customer_r))
colnames(reservation_r) <- tolower(colnames(reservation_r))
colnames(order_info_r) <- tolower(colnames(order_info_r))
colnames(item_r) <- tolower(colnames(item_r))
head(customer_r)


#dplyr 패키지
library(dplyr)

customer_r %>% count()
summarise(order_info_r, avg = mean(sales))
summarise(order_info_r, min_value = min(sales), max_value = max(sales))
order_info_r %>% summarise(min_value = min(sales), max_value = max(sales))

reservation_r %>% group_by(customer_id) %>% summarise(avg = mean(visitor_cnt))
order_info_r %>% filter(item_id == "M0001")
order_info_r %>% filter(item_id == "M0001" & sales >= 150000)
head(order_info_r)
order_info_r %>% distinct(item_id)
order_info_r %>% slice(2:4)
order_info_r %>% slice(c(1,3))
order_info_r %>% arrange(sales)
table_added_row <- order_info_r %>% add_row(order_no = "1", item_id = "1", reserv_no = "1")
table_added_row %>% arrange(order_no)
order_info_r %>% sample_frac(0.1, replace=TRUE)
order_info_r %>% select(reserv_no, sales)
order_info_r %>% group_by(reserv_no) %>% mutate(avg=mean(sales))
order_info_r %>% group_by(reserv_no) %>% transmute(avg=mean(sales))
order_info_r %>% mutate_if(is.numeric, funs(log(.)))
order_info_r %>% mutate(across(sales,max))
order_info_r %>% rename(amt = sales)
order_info_r
tmp_order_info_r <- order_info_r
bind_cols(order_info_r, tmp_order_info_r)
bind_rows(order_info_r, tmp_order_info_r)
bind_rows(order_info_r, reservation_r)
inner_join(reservation_r, order_info_r, by = "reserv_no") %>% arrange(reserv_no, item_id)
inner_join(reservation_r, order_info_r, by = "reserv_no") %>% arrange(reserv_no, item_id) %>% select(customer_id, visitor_cnt, cancel, order_no, item_id, sales)
left_join(reservation_r, order_info_r, by = "reserv_no") %>% arrange(reserv_no, item_id) %>% select(reserv_no, customer_id, visitor_cnt, cancel, order_no, item_id, sales)
right_join(reservation_r, order_info_r, by="reserv_no") %>% arrange(reserv_no, item_id) %>% select(reserv_no, customer_id, visitor_cnt, cancel, order_no, item_id, sales)
table_added_row <- order_info_r %>% add_row(order_no="1", item_id = "1",reserv_no="1", sales = 1)
full_join(reservation_r, table_added_row, by = "reserv_no") %>% arrange(reserv_no, item_id) %>% select(reserv_no, customer_id, visitor_cnt, cancel, order_no, item_id, sales)
reservation_r_rsv_no <- select(reservation_r, reserv_no)
order_info_r_rsv_no <- select(order_info_r, reserv_no)
intersect(reservation_r_rsv_no, order_info_r_rsv_no)
setdiff(reservation_r_rsv_no, order_info_r_rsv_no) 
union(reservation-r_rsv_no, order_info_r_rsv_no)
reservation_r %>% group_by(customer_id) %>% summarise(avg=mean(visitor_cnt)) %>% filter(avg >= 3) %>% arrange(desc(avg))
reservation_r %>% group_by(customer_id) %>% mutate(avg = mean(visitor_cnt)) %>% select(customer_id, avg) %>% filter(avg >= 3) %>% distinct(customer_id, avg) %>% arrange(desc(avg))
my_first_cook <- order_info_r %>%
  mutate(reserv_month = substr(reserv_no, 1, 6)) %>%
  group_by(item_id, reserv_month) %>%
  summarise(avg_sales = mean(sales)) %>%
  arrange(item_id, reserv_month)
reservation_r %>% 
  group_by(customer_id) %>%
  summarise(avg = mean(visitor_cnt)) %>%
  filter(avg >= 3) %>% arrange(desc(avg))
reservation_r %>%
  group_by(customer_id) %>%
  mutate(avg = mean(visitor_cnt)) %>%
  select(customer_id, avg) %>%
  filter(avg >= 3) %>%
  distinct(customer_id, avg) %>%
  arrange(desc(avg))
my_first_cook <- order_info_r %>%
  mutate(reserv_month = substr(reserv_no, 1, 6)) %>%
  group_by(item_id, reserv_month) %>%
  summarise(avg_sales = mean(sales), .groups = "keep") %>%
  arrange(item_id, reserv_month)
print(my_first_cook)
tb <- as_tibble(iris)
class(tb)
print(as_tibble(iris),n=15)
tb$Sepal.Length


#ggplot2 패키지
library(ggplot2)
ggplot(data=pressure, aes(x=temperature, y= pressure))
+geom_point()
+geom_line()
+geom_col()

df_cfm_order <- inner_join(reservation_r, order_info_r, by = "reserv_no") %>%
  select(customer_id, reserv_no, visitor_cnt, cancel, order_no, item_id, sales) %>%
  arrange(customer_id, reserv_no, item_id)
head(df_cfm_order)

df_sct_graph <-  df_cfm_order %>%
  group_by(customer_id) %>%
  summarise(vst_cnt = sum(visitor_cnt), cust_amt = sum(sales/1000))

head(df_sct_graph)

ggplot(data = df_sct_graph, aes(x = vst_cnt, y = cust_amt)) +
  geom_point()

ggplot(data = df_sct_graph, aes(x=vst_cnt, y = cust_amt)) +
  geom_point() +
  xlim(0, 50) + ylim(0, 500)
head(customer_r)

df_sct_graph2 <-  inner_join(df_sct_graph, customer_r, by = "customer_id") %>%
  select(vst_cnt, cust_amt, sex_code)
head(df_sct_graph2)

ggplot(data = df_sct_graph2, aes(x = vst_cnt, y = cust_amt, color=sex_code)) +
  geom_point() +
  xlim(0,50) +
  ylim(0, 500)

df_branch_sales_1 <-  inner_join(reservation_r, order_info_r, by = "reserv_no") %>%
  select(branch, sales) %>%
  arrange(branch, sales)

df_branch_sales_2 <- df_branch_sales_1 %>% group_by(branch) %>%
  summarise(amt = sum(sales) / 1000) %>%
  arrange(desc(amt))

df_branch_sales_2

ggplot(df_branch_sales_2, aes(x=branch, y=amt)) + geom_bar(stat = "identity")
ggplot(df_branch_sales_2, aes(x = reorder(branch, -amt), y = amt)) +
  geom_bar(stat = "identity")
ggplot(df_branch_sales_2, aes(x=reorder(branch, -amt), y=amt, fill = branch)) +
  geom_bar(stat = "identity")
gg <- ggplot(df_branch_sales_2, aes(x=reorder(branch,-amt), y=amt, fill=branch)) +
  geom_bar(stat = "identity") +
  xlim(c("강남", "영등포", "종로","용산", "서초", "성북"))
gg <- gg + coord_flip()
gg
gg <- gg + theme(legend.position="bottom")
gg
gg <- gg + scale_fill_discrete(breaks = c("강남", "영등포", "종로", "용산", "서초"))
gg
gg <-  ggplot(data = reservation_r, aes(x=branch)) + geom_bar(stat="count")
gg
gg <- gg + labs(title="지점별 예약 건수", x="지점", y="예약건")
gg
gg <-  gg + theme(axix.title.x = element_text(size = 15, color="blue", face="bold",angle=0),
                  axis.title.y = element_text(size = 13, color = 'red', angle = 90)
                  )
gg
ggplot(data=order_info_r, aes(x=sales/1000)) + geom_histogram(binwidth = 5)

df_pie_graph <- inner_join(order_info_r, item_r, by = "item_id") %>%
  group_by(item_id, product_name) %>%
  summarise(amt_item=sum(sales/1000)) %>%
  select(item_id, amt_item, product_name)
df_pie_graph
ggplot(df_pie_graph, aes(x="",y=amt_item, fill = product_name))+
  geom_bar(stat = "identity")
gg <- ggplot(df_pie_graph, aes(x="", y=amt_item, fill = product_name)) +
  geom_bar(stat="identity") +
  coord_polar("y", start=0)
gg
gg <-  gg + scale_fill_brewer(palette = "Spectral")
gg
library(RColorBrewer)
display.brewer.all()
gg <- gg + scale_fill_manual(values=c("STEAK"="red", "SPECIAL_SET" = "orange", "SEA_FOOD" = "skyblue", "SANDWICH"="skyblue", "SALAD_BAR"="skyblue","SALAD" = "skyblue","PIZZA"="skyblue", "PASTA"="skyblue", "JUICE"="skyblue", "WINE"="skyblue"), breaks = c("STEAK", "SPECIAL_SET"))
gg
total_amt <-  order_info_r %>%
  group_by(reserv_no) %>%
  summarise(amt_daily = sum(sales/1000)) %>%
  arrange(reserv_no)
total_amt
ggplot(total_amt, aes(x=reserv_no, y = amt_daily, group=1)) + geom_line()
total_amt <-order_info_r %>%
  mutate(month = substr(reserv_no, 1, 6)) %>%
  group_by(month) %>%
  summarise(amt_monthly = sum(sales/1000))
total_amt
ggplot(total_amt, aes(x=month, y=amt_monthly, group=1)) + geom_line()
ggplot(total_amt, aes(x=month, y=amt_monthly, group=1)) + geom_line() +
  geom_point()
ggplot(total_amt, aes(x=month, y=amt_monthly, group=1, label=amt_monthly)) +
  geom_line(color="red", size=1) +
  geom_point(color="darkred", size=3) +
  geom_text(vjust=1.5, hjust=0.5)

colors()
df_boxplot_graph <- inner_join(order_info_r, item_r, by = "item_id")
ggplot(df_boxplot_graph, aes(x=product_name, y=sales/1000)) +
  geom_boxplot(width=0.8, outlier.size=2, outlier.colour="red") +
  labs(title="메뉴아이템 상자그림", x="메뉴", y="매출")

my_first_cook <- order_info_r %>%
  mutate(reserv_month = substr(reserv_no, 1, 6)) %>%
  group_by(item_id, reserv_month) %>%
  summarise(avg_sales = mean(sales)) %>%
  arrange(item_id, reserv_month)
my_first_cook

ggplot(my_first_cook, aes(x=reserv_month, y=avg_sales, group=item_id, color=item_id)) +
  geom_line(size=1) +
  geom_point(color="darkorange", size=1.5) +
  scale_color_brewer(palette = "Paired") +
  labs(title="메뉴 아이템별 월 평균 매출 추이", x="월", y="매출")

weight <-  rnorm(n=100000, mean=65, sd=5)
hist(weight, breaks=100, freq=FALSE)
line(density(weight))

cbind(df, rank=c(1,2))
rbind(df, c("c",90))

test1 <- c(58,70,82,65,72,82,68,70,63)
t.test(test1, mu=65)

table(reservation_r$branch)
no_cancel_data <- reservation_r %>% filter(cancel=="N")
table(no_cancel_data$branch)
df_f_join_1 <-  inner_join(reservation_r, order_info_r, by="reserv_no")
df_f_join_2 <-  inner_join(df_f_join_1, item_r, by = "item_id")
head(df_f_join_2)
df_branch_sales <-  df_f_join_2 %>%
  filter(branch == "강남" | branch == "마포" | branch == "서초") %>%
  group_by(branch, product_name) %>%
  summarise(sales_amt = sum(sales)/1000)
ggplot(df_branch_sales, aes(x="", y=sales_amt, fill=product_name)) + facet_grid(facets= .~branch) +
  geom_bar(stat="identity")
ggplot(df_branch_sales, aes(x="",y=sales_amt, fill = product_name)) +
  facet_grid(facets = . ~ branch) +
  geom_bar(stat = "identity") +
  coord_polar("y", start  =0 )
df_f_join_1 <- inner_join(reservation_r, order_info_r, by = "reserv_no")
df_f_join_2 <- inner_join(df_f_join_1, item_r, by = "item_id")
df_branch_items <-  df_f_join_2 %>% filter(branch == "강남" | branch == "마포" | branch == "서초")
table(df_branch_items$branch, df_branch_items$product_name)
df_branch_items_table <-  as.data.frame(table(df_branch_items$branch, df_branch_items$product_name))
df_branch_items_percent <-  df_branch_items_table %>%
  group_by(df_branch_items_table$Var1 ) %>%
  mutate(percent_items = Freq/sum(Freq)*100)
head(df_branch_items_percent)
gg <- ggplot(df_branch_items_percent, aes(x = Var1, y = percent_items, group = Var1, fill=Var2)) +
  geom_bar(stat = "identity")
gg <- gg +
  labs(title = "지점별 주문 건수 그래프", x="지점", y="메뉴 아이템 판매비율", fill="메뉴 아이템")
gg
df_rfm_join_1 <-  inner_join(reservation_r, order_info_r, by="reserv_no")
head(df_rfm_join_1)
df_rfm_data <- df_rfm_join_1 %>%
  group_by(customer_id) %>%
  summarise(visit_sum = n_distinct(reserv_no), sales_sum = sum(sales) /1000) %>%
  arrange(customer_id)
df_rfm_data
summary(df_rfm_data)
ggplot(df_rfm_data, aes(x="", y=visit_sum)) +
  geom_boxplot(width=0.8, outlier.size=2, outlier.colour="red") + labs(title="방문 횟수 상자그림", x= "빈도", y="방문횟수")
ggplot(df_rfm_data, aes(x="", y=sales_sum)) +
  geom_boxplot(width=0.8, outlier.size=2, outlier.colour="red") + 
  labs(title ="매출 상자 그림", x="매출", y="금액")
ggplot(df_rfm_data, aes(x="", y=sales_sum)) +
  geom_boxplot(width=0.8, outlier.size=2, outlier.colour="red") +
  labs(title="매출 상자그림", x="매출", y="금액")
quantile(df_rfm_data$visit_sum, probs=c(0.6,0.9))
quantile(df_rfm_data$sales_sum, probs=c(0.6,0.9))
total_sum_data <- df_rfm_data %>%
  summarise(t_visit_sum = sum(visit_sum), t_sales_sum=sum(sales_sum))
loyalty_sum_data <- df_rfm_data %>%
  summarise(l_visit_sum = sum(ifelse(visit_sum >2, visit_sum, 0)), l_sales_sum=sum(ifelse(sales_sum > 135, sales_sum,0)))
loyalty_sum_data / total_sum_data

df_f_join_1 <- inner_join(reservation_r, order_info_r, by = "reserv_no")
df_f_join_2 <- inner_join(df_f_join_1, item_r, by="item_id")
target_item <- c("M0005", "M0009")
df_stime_order <- df_f_join_2 %>%
  filter((item_id %in% target_item)) %>%
  group_by(reserv_no) %>%
  mutate(order_cnt=n()) %>%
  distinct(branch, reserv_no, order_cnt) %>%
  filter(order_cnt == 2 ) %>%
  arrange(branch)
df_stime_order
stime_order_rsv_no <- df_stime_order$reserv_no
df_stime_sales <-  df_f_join_2 %>%
  filter((reserv_no %in% stime_order_rsv_no) & (item_id %in% target_item)) %>%
  group_by(reserv_no, product_name) %>%
  summarise(sales_amt = sum(sales) /1000) %>%
  arrange(product_name, reserv_no)

df_stime_sales
steak <- df_stime_sales %>% filter(product_name == "STEAK")
wine <-  df_stime_sales %>% filter(product_name == "WINE")
plot(steak$sales_amt, wine$sales_amt)
cor.test(steak$sales_amt, wine$sales_amt)
df_rsv_customer <-  reservation_r %>%
  select(customer_id, reserv_no) %>%
  arrange(customer_id, reserv_no)
head(df_rsv_customer)
df_steak_order_rsv_no <- order_info_r %>%
  filter(item_id == "M0005") %>%
  mutate(steak_order="Y") %>%
  arrange(reserv_no)
head(df_steak_order_rsv_no)
df_steak_order_1 <-  left_join(df_rsv_customer, df_steak_order_rsv_no, by = "reserv_no") %>%
  group_by(customer_id) %>%
  mutate(steak_order=ifelse(is.na(steak_order),"N","Y")) %>%
  summarise(steak_order = max(steak_order)) %>%
  arrange(customer_id)
df_dpd_var <-  df_steak_order_1
df_dpd_var

df_customer <-  customer_r %>% filter(!is.na(sex_code))
df_table_join_1 <- inner_join(df_customer, reservation_r, by="customer_id")
df_table_join_2 <- inner_join(df_table_join_1, order_info_r, by="reserv_no")
str(df_table_join_2)

df_table_join_3 <- df_table_join_2 %>%
  group_by(customer_id, sex_code, reserv_no, visitor_cnt) %>%
  summarise(sales_sum = sum(sales)) %>%
  group_by(customer_id, sex_code) %>%
  summarise(visit_sum = n_distinct(reserv_no), visitor_sum = sum(visitor_cnt), sales_sum=sum(sales_sum) / 1000) %>%
  arrange(customer_id)
df_idp_var <- df_table_join_3
df_idp_var

df_final_data <- inner_join(df_idp_var, df_dpd_var, by="customer_id")
df_final_data$sex_code <-  as.factor(df_final_data$sex_code)
df_final_data$steak_order <-  as.factor(df_final_data$steak_order)
df_final_data <- df_final_data[,c(2:6)]
df_final_data

install.packages("rpart")
install.packages("caret")
install.packages("future")
install.packages("e1071")
library(rpart)
library(caret)
library(e1071)

set.seed(10000)
train_data <- createDataPartition(y=df_final_data$steak_order, p=0.8, list=FALSE)
train <- df_final_data[train_data,]
test <- df_final_data[-train_data,]

decision_tree <- rpart(steak_order~., data = train)
decision_tree
predicted <- predict(decision_tree, test, type='class')
confusionMatrix(predicted, test$steak_order)
plot(decision_tree, margin=0.1)
text(decision_tree)

install.packages("rattle")
library(rattle)
fancyRpartPlot(decision_tree)

#130 page
#reshape2 데이터 프레임의 형태를 재변환하기 위한 reshape2 패키지 설치
install.packages("reshape2")
library(reshape2)
head(airquality)
df <- data.frame(uid = c("test1", "test2", "test3", "test4"), uname=c("홍길동", "전우치","채영신","임꺽정"), 
                 grade=c(1,2,3,4), score=c(86,75,91,94))
df

#melt(변환할 데이터 프레임, id.var = 키로 사용할 컬럼(들), measure.vars=값으로 사용할 컬럼(들), na.rm=FALSE)
#id.var에서 키로지정한 컬럼을 중심으로 measure.vars에서 지정한 칼럼(들)을 데이터로 사용하는 데이터 프레임으로 변환하는 함수로 na.rm의 값을 True로 하면 결측치인 'NA'값을 빼고 작업하겠다는 의미로 기본값은 False
#measure.vars를 생략하면 키로 지정한 칼럼들을 제외한 모든 칼럼이 데이터로 사용됨

md <- melt(df, id.var=c("uid","uname"), measure.vars=c("grade","score"),na.rm=TRUE)
md

#cast(데이터 프레임, 키로 사용할 컬럼(들) ~ 값으로 사용한 컬럼(들))
#melt() 함수로 변환된 데이터를 되돌리는 함수로 dcast(데이터 프레임으로 리턴)와 acast(벡터, 행렬, 배열 등으로 리턴) 함수가 있다.

md2 <- dcast(md, uid + uname ~ variable)
md2

#데이터분석을 위해 만들어진 요약변수 예시
#(요약변수 예시를 숙지하고 나머지는 파생변수라 생각하면 됨)
#기간별 구매금액, 횟수: 고객의 구매 패턴을 볼 수 있는 변수
#상품별 구매금액, 횟수: 고객의 라이프 스테이지와 라이프 스타일 등을 이해하는 도움이 됨
#상품별 구매순서: 고객에 대한 이해와 해석력을 높일 수 있음
#유통 채널별 구매금액: 온라인과 오프라인 사용 고객에게 모두 사용하도록 유도하는 활용
#단어 빈도: 텍스트 자료에서 단어들의 출현 빈도를 데이터화하여 사용
#초기 행동변수: 고객 가입 또는 첫 거래 초기 1개월 간 거래 패턴에 대한 변수로 1년 후에 어떤 행동을 보일지를 평가하는 지표로 활용
#트렌드 변수: 추이값을 나타내는 변수
#결측값과 이상값 처리: 결측값과 이상값은 무리해서 처리하려고 하면 시간과 위험이 커질 수 있으므로 데이터의 내용을 파악하여 처리해야 함
#연속형 변수의 구간화: 분석 후 적용 단계를 고려한 데이터 분석을 휘해 연령이나 비용 등 연속형 변수를 구간화 하는 것이 필요하다. 꼭 10, 100단위로 구간화 하지 말고 의미있는 구간으로 구간화



