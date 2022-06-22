# 벡터
num_vector = c(1,2,3)
num_vector2 = c(5,6,7)
num_vector[3] +num_vector2[2]

# 숫자형 벡터

# 문자열 벡터
char_vector <- c("HI","HELLO")
char_vector

char_vector[2]# 숫자 1,2 인덱스
class(char_vector) #벡터의 유형을 알 수 있다.

# 남이 만든 함수를 쓰려면, 입력 조건

?class
logical_vector <- c(TRUE, FALSE) 
logical_vector

class(logical_vector)

a <- c(1,2,"HELLO")
b <- c (TRUE, FALSE, "TRUE")
class(b)

c <- c (1,2, TRUE, FALSE)
class

##
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
no = c(1,2,3,4,5)
sex = c("male", "female", "male", "male", "female")
korean = c(87,92,95,81,87)

exam = data.frame(no,sex,korean)
exam

exam$no[1]
exam$sex[1]

## 데이터 타입
class(exam$sex)
class(exam$no)
class(exam$korean)

str(exam)
