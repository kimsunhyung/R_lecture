# 벡터
num_vector = c(1, 2, 3)
num_vector2 = c(5, 6, 7)

num_vector[3] + num_vector2[2]

# 숫자형 벡터

# 문자열 벡터
char_vector <- c("Hi", "Hello")
char_vector

char_vector[2] # 숫자 1, 2 인덱스
class(char_vector) # 벡터의 유형을 알 수 있다. 

# 남이 만든 함수를 쓰려면, 입력 조건
# 

logical_vector <- c(TRUE, FALSE)
logical_vector

class(logical_vector)


a <- c(1, 2, "Hello")
class(a)

b <- c(TRUE, FALSE, "TRUE")
class(b)
b

c <- c(1, 2, TRUE, FALSE)
class(c)
c


## 범주형 벡터
# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", 
                        "기온보통", 
                        "기온낮음", 
                        "기온높음", 
                        "기온보통", 
                        "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음", 
                                                "기온높음"))
factor_temperature_factor
class(factor_temperature_factor)
class(factor_location_vector)


## 데이터 프레임 
# - 엑셀 데이터
no = c(1, 2, 3, 4, 5)
sex = c("male", "female", "male", "male", "female")
korean = c(87, 92, 95, 81, 87)

exam = data.frame(no, sex, korean)
exam


exam$no[1]
exam$sex[1]

# 데이터 타입
class(exam$sex)

exam$no
class(exam$no)

class(exam$korean)

str(exam)
# 벡터를 별도로 만들기
sex<-c("male","female")
korean<-c(87,92)
english<-c(88,95)

#벡터들을 객체 exam_a에 입력
exam_a<-data.frame(sex,korean,english)

#객체 (변수)<-data.frame(벡터1=내용,벡터2=내용,...)

#객체 안에 벡터를 동시에 입력
exam_b<-data.frame(sex=c("male","female"), 
                   korean=c(87,92), 
                   english=c(88,95))

# science벡터 만들기
science<-c(84,85)
exam_c<-data.frame(sex,korean,english,science)

exam<-read.csv("exam.csv")

# 한개의 데이터 출력
exam[2,3]
exam[2,"korean"] # 열의 색인 번호 대신에이름을 쓴 경우

#복수 데이터 출력
exam[3,c(3,2)]

exam[c(3,2),c(2,3)]
exam[3,] #exam[3,c(1,2,3,4,5)]와 같음

# 데이터 내보내기 & 불러오기
# 경로
내보내기 

getwd()
write.csv(x = exam, file = "temp.csv"
getwd())

#데이터 불러오기

exam <- read.csv("exam.csv")
exam[2,3]
exam[2,"korean"]

exam[3,c(3,4)]
exam[c(4,5),c(4,5)]

exam = read.csv("exam.csv")
getwd() 현재 경로를 표시해주는 함수

install.packages(("ggplot2"))

library(ggplot2)
economics <- ggplot2::economics


#실무 패키지 

install.packages("data.table")
library(data.table)

# 공식 문서 확인

#엑셀파일 불러오기
install.packages("readxl")
library(readxl)

read_excel("student1_xl.xlsx")


read.csv("student.csv")
read.csv("student.csv", skip = 1)

# 엑셀 파일에 있는 복수의 시트에서 특정시트 불러오기
read_excel("student1_xl.xlsx")

read_excel("student1_xl.xlsx", sheet = 2)

# p.69 txt 파일 불러오기

# p.73 spss 파일불러오기
install.packages("foreign")
library(foreign)
read.spss("student.sav")
student <- read.spss("student.sav")
class(student)
as.data.frame(student)

# 데이터 불러오기
# 경로를 잘 잡는 것이 중요
getwd()