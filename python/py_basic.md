# Python - Basic

> [1. 문자열 ](#1-문자열)
>
> ​	[1.1. 확장열 ](#11-확장열)
>
> ​	[1.2. 긴 문자열 ](#12-긴-문자열)
>
> ​	[1.3. 문자열 연산 ](#13-문자열-연산)
>
> ​	[1.4. 구분자 ](#14-구분자)
>
> ​		[1.4.1. sep 구분자 ](#141-sep-구분자)
>
> ​		[1.4.2. end 구분자 ](#142-end-구분자)
>
> ​		[1.4.3. input 명령 ](#143-input-명령)
>
> [2. 연산자 ](#2-연산자)
>
> ​	[2.1. 대입 연산자 ](#21-대입-연산자)
>
> ​	[2.2. 산술 연산자 ](#22-산술-연산자)
>
> ​	[2.3. 논리 연산자 ](#23-논리-연산자)
>
> ​	[2.4. 불 연산자 ](#24-불-연산자)
>
> ​	[2.5. 비교 연산자 ](#25-비교-연산자)
>
> [3. 조건문 ](#3-조건문)
>
> ​	[3.1. if 조건문 ](#31-if-조건문)
>
> ​	[3.2. else 문 ](#32-else-문)
>
> ​	[3.3. elif 문 ](#33-elif-문)
>
> [4. 반복문 ](#4-반복문)
>
> ​	[4.1. while 반복문 ](#41-while-반복문)
>
> ​	[4.2. for 문 ](#42-for-문)
>
> ​	[4.3. range 범위 ](#43-range-범위)
>
> [5. 메서드 ](#5-메서드)
>
> ​	[5.1. 검색 ](#51-검색)
>
> ​		[5.1.1. find 메서드 ](#511-find-메서드)
>
> ​		[5.1.2. index 메서드 ](512-index-메서드)
>
> ​		[5.1.3. count 메서드 ](#513-count-메서드)
>
> ​		[5.1.4. 메서드 체이닝 ](#514-메서드-체이닝)
>
> ​	[5.2. 조사 ](#52-조사)
>
> ​		[5.2.1. (not) in 메서드 ](#521-not-in-메서드)
>
> ​		[5.2.2. startswith 메서드 ](#522-startswith-메서드)
>
> ​		[5.2.3. endswith 메서드 ](#523-endswith-메서드)
>
> ​	[5.3. 변경 ](#53-변경)
>
> ​		[5.3.1. strip 메서드 ](#531-strip-메서드)
>
> ​	[5.4. 분할 ](#54-분할)
>
> ​		[5.4.1. split 메서드 ](#541-split-메서드)
>
> ​		[5.4.2. join 메서드 ](#542-join-메서드)
>
> ​	[5.5. 대체 ](#55-대체)
>
> ​		[5.5.1. replace 메서드 ](#[551-replace-메서드)
>
> ​		[5.5.2. maketrans 메서드 ](#552-maketrans-메서드)
>
> ​		[5.5.3. just 메서드 ](#553-just-메서드)
>
> ​		[5.5.4. zfill 메서드 ](#554-zfill-메서드)
>
> [6. 포맷팅 ](#6-포맷팅)
>
> ​	[6.1. % 포맷팅 ](#61--포맷팅)
>
> ​	[6.2. format 포맷팅 ](#62-format-포맷팅)
>
> [7. 리스트 ](#7-리스트)
>
> ​	[7.1. 출력 ](#71-출력)
>
> ​		[7.1.1. 리스트의 요소값 변경 ](#711-리스트의-요소값-변경)
>
> ​		[7.1.2. 리스트 슬라이스 ](#712-리스트-슬라이스)
>
> ​		[7.1.3. 리스트 연산 ](#713-리스트-연산)
>
> ​	[7.2. 삽입 ](#72-삽입)
>
> ​		[7.2.1. append 메서드 ](#721-append-메서드)
>
> ​		[7.2.2. insert 메서드 ](#722-insert-메서드)
>
> ​		[7.2.3. extend 메서드 ](#723-extend-메서드)
>
> ​	[7.3. 삭제 ](#73-삭제)
>
> ​		[7.3.1. del 메서드 ](#731-del-메서드)
>
> ​		[7.3.2. remove 메서드 ](#732-remove-메서드)
>
> ​		[7.3.3. pop 메서드 ](#733-pop-메서드)
>
> ​	[7.4. 검색 ](#74-검색)
>
> ​		[7.4.1. len 함수 ](#741-len-함수)
>
> ​		[7.4.2. max, min 함수 ](#742-max-min-함수)
>
> ​	[7.5. 정렬 ](#75-정렬)
>
> ​		[7.5.1. sort 메서드 ](#751-sort-메서드)
>
> ​		[7.5.2. reverse 메서드 ](#752-reverse-메서드)

---

> # 1. 문자열

## 1.1. 확장열

| 확장열 | 설명 |
| ------ | ---- |
| `\n`   | 개행 |
| `\t`   | 탭   |
| `\b`   | 삭제 |
| `\"`   | "    |
| `\'`   | '    |
| `\\`   | \    |

```python
print('happy\nnew year')

# Output
happy
new year
```

```python
print('I am \'Groot\'')

# Output
I am 'Groot'
```

## 1.2. 긴 문자열

```python
'''
문자열 내용
'''
```

```python
'문자열\
내용'
```

## 1.3. 문자열 연산

`+` , `*` 연산자를 사용한다.

```python
a = '대한민국'
b = '만세'
print(a+b)

# Output
대한민국만세
```

타입을 변환하여 연산한다.

~~~python
print('korea' + str(2021))

# Output
korea2021
~~~

```python
print(10 + int('22'))

# Output
32
```

## 1.4. 구분자

#### 1.4.1. sep 구분자

출력 값 사이에 삽입된다.

~~~python
print( [,sep=''])
~~~

~~~python
a = 1
b = 2
print(a, b, sep=',')

# Output
1, 2
~~~

#### 1.4.2. end 구분자

출력 값 끝에 삽입된다.

~~~python
print( [, end=''])
~~~

~~~python
a = 'dog'
b = 'cat'
print(a, b, end='^^')

# Output
dog cat^^
~~~

~~~~python
a = 'python'
for b in a:
    print(b, end=',')
    
# Output    
p,y,t,h,o,n,
~~~~

#### 1.4.3. input 명령

실행에 필요한 정보를 입력받기 위해 질문한다.

~~~python
변수 = input()
~~~

~~~python
weather = input('오늘 날씨는 어때요?')

# Output
오늘 날씨는 어때요? 흐림
~~~

문자열을 정수로 바꾸어 대입한다.

~~~python
변수 = int(input())
~~~

~~~python
price = int(input('가격을 입력하세요:'))
num = int(input('개수를 입력하세요:'))
sum = price * num
print('총액은', sum, '원입니다.')
~~~

---

> # 2. 연산자

## 2.1. 대입 연산자

~~~python
변수 = 값
~~~

## 2.2. 산술 연산자

| 연산자 | 설명     |
| ------ | -------- |
| `+`    | 더하기   |
| `-`    | 빼기     |
| `*`    | 곱하기   |
| `/`    | 나누기   |
| `**`   | 거듭제곱 |
| `//`   | 몫       |
| `%`    | 나머지   |

## 2.3. 논리 연산자

| 연산자 | 설명                          |
| ------ | ----------------------------- |
| `and`  | 모두 참이다                   |
| `or`   | 두 조건 중 하나 이상이 참이다 |
| `not`  | 아니다                        |

~~~python
print(1!=1 and 2!=1) # False
print(3>1 or 1<2) # True
print(not 1>2) # True
~~~

## 2.4. 불 연산자

__True__ 또는 __False__ 를 리턴한다.

~~~~python
bool()
~~~~

| 불 연산자          | 설명  |
| ------------------ | ----- |
| `0`                | False |
| `1`                | True  |
| `0이 아닌 모든 수` | True  |

~~~python
print(bool(1.5))
print(bool('test'))
print(bool())

# Output
True
True
False
~~~

## 2.5. 비교 연산자

두 값의 상등 여부나 대소관계를 비교하여 __True__ 또는 __False__ 를 리턴한다.

| 연산자 | 설명               |
| ------ | ------------------ |
| ==     | 같다               |
| !=     | 다르다             |
| <      | 우변이 크다        |
| >      | 좌변이 크다        |
| <=     | 우변이 크거나 같다 |
| >=     | 좌변이 크거나 같다 |

---

> # 3. 조건문

조건의 진위 여부에 따라 명령의 실행 여부를 결정하는 제어문이다.

## 3.1. if 조건문

~~~python
if 조건:
    명령
~~~

~~~python
a = 3
if a>1 and a<10:
    print('OK')
   
# Output  
OK
~~~

## 3.2. else 문

조건 진위에 따라 실행할 명령을 선택한다.

~~~python
if 조건:
    조건1
else:
    조건2
~~~

~~~~python
year = 2021
if year = 2021:
    print('새해 복 많이 받으세요')
else:
    print('2020년입니다')
    
# Output    
새해 복 많이 받으세요
~~~~

## 3.3. elif 문

조건을 만족하지 않을 때, 다른 세부 조건을 더 점검한다.

~~~python
if 조건1:
    명령1
elif 조건2:
    명령2
else:
    명령3
~~~

~~~python
money = 10000
if money >= 20000:
    print('탕수육을 먹는다')
elif money >= 10000:
    print('자장면을 먹는다')
else:
    print('단무지를 먹는다')
    
# Output    
자장면을 먹는다
~~~

---

> # 4. 반복문

유사한 명령을 계속 실행하는 제어문이다.

## 4.1. while 반복문

- 조건을 만족하는 동안 계속 실행한다.

- **루프**는 반복적으로 처리되는 명령을 말한다.

~~~python
while 조건:
    명령
~~~

~~~python
student = 1
while student <= 5: # 루프
    print(student, '번 학생의 성적을 처리한다')
    student += 1 # 성적 명령과 student 변수 값을 1 증가
~~~

## 4.2. for 문

컬렉션의 요소를 순서대로 반복하면서 루프의 명령을 실행하는 반복문이다.

~~~python
for 제어변수 in 컬렉션:
    명령
~~~

~~~python
for student in [1, 2, 3, 4, 5]:
    print(student, '번 학생의 성적을 처리한다')
    
# Output    
1 번 학생의 성적을 처리한다
2 번 학생의 성적을 처리한다
...
5 번 학생의 성적을 처리한다
~~~

## 4.3. range 범위

~~~python
range(시작, 끝, 증가값)
~~~

~~~python
for student in range(1,10):
    print(student, '번 학생의 성적을 처리한다')

# Output    
1 번 학생의 성적을 처리한다
...
9 번 학생의 성적을 처리한다
10 번 학생의 성적을 처리한다
~~~

---

> # 5. 메서드

`class`에 소속되어 있는 함수이며 객체에 대해 특화된 작업을 수행한다.

## 5.1. 검색

#### 5.1.1. find 메서드

- 인수로 지정한 문자 또는 부분 문자열의 위치를 조사한다.

- `rfind` 는 rear의 약자로 뒤에서부터 검색한다.
- 해당 문자나 문자열이 발견되지 않으면 **-1**을 리턴한다.

~~~python
변수.find()
~~~

~~~python
a='python programming'
print(a.find('o'))

4
~~~

#### 5.1.2. index 메서드

- `rindex` 는 뒤에서부터 검색한다.

- 해당 문자나 문자열이 발견되지 않으면 **오류**가 발생한다.

~~~python
변수.index()
~~~

#### 5.1.3. count 메서드

- 특정 문자의 개수를 센다.
- 해당 문자나 문자열이 발견되지 않으면 **0**을 리턴한다.

~~~python
변수.count()
~~~

~~~python
a = '과거를 지배하는 자가 미래를 지배하며 현재를 지배하는 자가 과거를 지배한다'
print('과거의 출현 횟수:, a.count('과거'))

# Output      
과거의 출현 횟수: 2
~~~

#### 5.1.4. 메서드 체이닝

~~~~python
print('python'.rjust(10).upper()) # 공백을 만드는 동시에 대문자로 변환

		PYTHON
~~~~

## 5.2. 조사

특정 문자가 존재하는지 확인한다.

#### 5.2.1. (not) in 메서드

__True__ 또는 __False__를 리턴한다.

~~~python
단어 (not) in 문자열
~~~

~~~python
a = 'python programming'
print('p' in a)

# Output
True
~~~

#### 5.2.2. startswith 메서드

특정 문자열로 시작되는지 조사한다.

~~~python
변수.startswith()
~~~

~~~python
name = '전지현'
if name.startswith('김'):
    print('김씨입니다')
if name.startswith('전'):
    print('전씨입니다')
    
# Output    
전씨입니다
~~~

#### 5.2.3. endswith 메서드

특장 문자열로 끝나는지 조사한다.

~~~python
변수.endswith()
~~~

## 5.3. 변경

| 메서드         | 설명                                   |
| -------------- | -------------------------------------- |
| `upper()`      | 대문자로 변경                          |
| `lower()`      | 소문자로 변경                          |
| `swapcase()`   | 대소문자 뒤집기                        |
| `capitalize()` | 문장 첫 글자는 대문자, 나머지는 소문자 |
| `title()`      | 모든 단어의 처음을 대문자로 변경       |

~~~python
a = 'pizza hut'
print(a.upper())

# Output
PIZZA HUT
~~~

~~~python
a = a.capitalize()
print(a)

# Output
Pizza hut
~~~

#### 5.3.1. strip 메서드

- 문자열의 불필요한 공백을 제거한다.
- `lstrip` 은 왼쪽 공백만, `rstrip` 은 오른쪽 공백만 제거한다.

~~~python
변수.strip()
~~~

~~~~python
a = '		angel		'
print(a.rstrip(''))
print(a.strip(''))

# Output
		angel
angel
~~~~

## 5.4. 분할

#### 5.4.1. split 매서드

구분자를 기준으로 문자열을 분할한다.

~~~python
변수.split()
~~~

~~~python
a = 'Life$is$too$short'
print(a.split('$'))

# Output
['Life', 'is', 'too', 'short']
~~~

#### 5.4.2. join 메서드

문자열의 각 문자 사이에 다른 문자열을 삽입한다.

~~~python
join()
~~~

~~~python
print(','.join('abcd'))

# Output
a,b,c,d
~~~

~~~python
a = '~'
print(a.join('대한민국'))

# Output
대~한~민~국
~~~

## 5.5. 대체

#### 5.5.1. replace 메서드

특정 문자열을 찾아 다른 문자열로 바꾼다.

~~~python
변수.replace('검색문자열', '치환문자열')
~~~

~~~python
a = 'I am Thor'
print(a.replace('Thor', 'Groot'))

# Output
I am Groot
~~~

#### 5.5.2. maketrans 메서드

특정 문자를 찾아 다른 문자로 바꾼다.

~~~python
str.maketrans('검색문자', '치환문자')
~~~

~~~~python
a = str.maketrans('aeiou', '12345')
print('apple'.translate(a))

# Output
1ppl2
~~~~

#### 5.5.3. just 메서드

공백을 만들어 문자열을 특정 폭에 맞춰 정렬한다.

~~~python
변수.just()
~~~

~~~python
a = 'hello'
print(a.rjust(30))
print(a.center(30))

# Output
										hello
					hello
~~~

| 메서드   | 설명        |
| -------- | ----------- |
| `ljust`  | 좌측 정렬   |
| `rjust`  | 우측 정렬   |
| `center` | 가운데 정렬 |

#### 5.5.4. zfill 메서드

문자열 앞을 0으로 채워준다.

~~~python
문자열.zfill()
~~~

~~~python
print('hello'.zfill(10))

# Output
00000hello # 나머지를 '0'으로 채운다
~~~

---

> # 6. 포맷팅

문자열 사이사이에 다른 정보를 삽입하여 조립하는 기법이다.

## 6.1. % 포맷팅

| 표식 | 설명    |
| ---- | ------- |
| `%s` | 문자열  |
| `%d` | 정수    |
| `%f` | 실수    |
| `%c` | 한 문자 |
| `%h` | 16진수  |
| `%o` | 8진수   |
| `%%` | 문자 %  |

~~~python
num = 500
print('궁금하면 %d 원!' %num)

# Output
궁금하면 500 원!
~~~

~~~python
month = 8
day = 15
anni = '광복절'
print('%d 월 %d 일은 %s 입니다' %(month, day, anni))

# Output
8 월 15 일은 광복절 입니다
~~~

## 6.2. format 포맷팅

~~~python
{}.format()
~~~

~~~python
name = '전지현'
age = 20
address = '서울'
print('이름:{}, 나이:{}, 주소:{}'.format(name, age, address))

# Output
이름:전지현 나이:20 주소:서울
~~~

---

> # 7. 리스트

정수, 실수, 문자 등 여러 개의 값을 하나의 변수에 저장한다.

~~~python
변수 = [요소]
~~~

## 7.1. 출력

~~~python
변수[]
~~~

~~~python
a = [1, 2, 3, ['x', 'y', 'z'], 4, 5]
print(a[3][:2]) # 인덱스[3]의 인덱스[1]까지 출력

# Output
['x', 'y']
~~~

#### 7.1.1. 리스트의 요소값 변경

~~~python
변수[] = 변경값
~~~

~~~python
a = [1, 2, 3]
a[1] = 5
print(a)

# Output
[1, 5, 3]
~~~

#### 7.1.2. 리스트 슬라이스

~~~python
변수[시작:끝:증가값]
~~~

~~~python
nums = [0, 1, 2, 3, 4, 5]
print(nums[:2]) # 처음부터 2미만
print(nums[4:]) # 4부터 끝까지
print(nums[1:5:2]) # 1~4까지 하나씩 건너뛴다

# Output
[0, 1]
[4, 5]
[1, 3]
~~~

#### 7.1.3. 리스트 연산

`+` 연산자로 두 리스트를 연결한다.

~~~python
a = [1,2,3]
b = [4,5,6]
c = a + b
print(c)

# Output
[1, 2, 3, 4, 5, 6]
~~~

`*` 연산자로 리스트에 정수를 곱해 여러 번 반복한다.

~~~python
a = [1, 2, 3]
d = a * 3
print(d)

# Output
[1, 2, 3, 1, 2, 3, 1, 2, 3]
~~~

## 7.2. 삽입

[ ]와 관리 메서드를 활용하여 요소를 마음대로 편집할 수 있다.

#### 7.2.1. append 메서드

인수로 전달한 요소를 리스트의 끝에 덧붙여 추가한다.

~~~python
변수.append()
~~~

~~~python
a = [1, 2, 3]
a.append(4)
a.append([5, 6, 7])

# Output
[1, 2, 3, 4, [5, 6, 7]]
~~~

#### 7.2.2. insert 메서드

리스트의 특정한 위치에 요소를 추가한다.

~~~python
변수.insert(위치, 요소값)
~~~

~~~~python
a = [1, 2, 3, 4]
a.insert(2, 99)
print(a)

# Output
[1, 2, 99, 3, 4] #[2]인덱스에 '99'값 삽입
~~~~

#### 7.2.3. extend 메서드

리스트를 추가하여 병합한다.

~~~python
변수.extend()
~~~

~~~python
a = [1, 2, 3]
a.extend([5, 6, 7])
print(a)

# Output
[1, 2, 3, 5, 6, 7]
~~~

## 7.3. 삭제

#### 7.3.1. del 메서드

특정 위치의 값을 삭제한다.

~~~python
del 변수[index]
~~~

~~~python
a = [1, 2, 3]
del a[2]
print(a)

# Output
[1, 2]
~~~

#### 7.3.2. remove 메서드

인수로 전달받은 특정 요소값을 찾아 삭제한다.

~~~python
변수.remove()
~~~

~~~python
a = [30, 10, 20, 30]
a.remove(30)
print(a)

# Output
[10, 20, 30] # 2개 이상이면 처음 발견한 요소 하나만 삭제
~~~

#### 7.3.3. pop 메서드

삭제한 요소를 꺼내 리턴한다. 인수가 없으면 마지막 요소를 빼낸다.

~~~python
변수.pop()
~~~

~~~~python
a = [10, 20, 30]
print(a.pop(1)) # 지정 인덱스 값을 빼낸다
print(a.pop())

# Output
20
30
~~~~

~~~python
a = [10, 20, 30]
a.pop() # 마지막 값을 제거한다
print(a)
a.pop()
print(a)

# Output
[10, 20]
[10]
~~~

## 7.4. 검색

#### 7.4.1. len 함수

리스트의 길이를 조사한다.

~~~python
len(변수)
~~~

~~~python
a = 'python programming'
print(len(a))

18
~~~

#### 7.4.2. max, min 함수

리스트의 요소 중 최대값, 최소값을 찾는다.

~~~python
max(변수) # 최대값
min(변수) # 최소값
~~~

~~~python
score=[30, 58, 49, 79, 92]
print('최고 점수는 %d 점입니다' %max(score))
print('최저 점수는 %d 점입니다' %min(score))

# Output
최고 점수는 92 점입니다
최저 점수는 30 점입니다
~~~

## 7.5. 정렬

요소를 크기순으로 재배열한다.

#### 7.5.1. sort 메서드

___오름차순___ 으로 정렬한다.

~~~python
변수.sort()
~~~

~~~python
score = [30, 58, 49, 79, 92]
score.sort()
print(score)

# Output
[30,49,58,79,92]
~~~

#### 7.5.2. reverse 메서드

___내림차순___ 으로 정렬한다.

~~~~python
변수.reverse()
~~~~

~~~python
score=[30, 58, 49, 79, 92]
score.sort() # 오름차순으로 정리한 후에 정렬
score.reverse()
print(score)

# Output
[92,79,58,49,30]
~~~
