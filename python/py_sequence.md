# Python - Sequence

> [시퀀스 자료형 ](#시퀀스-자료형)
>
> [1. 튜플 ](#1-튜플)
>
> ​	[1.1. 인덱싱 ](#11-인덱싱)
>
> ​	[1.2. 슬라이싱 ](#12-슬라이싱)
>
> ​	[1.3. range 범위 ](#13-range-범위)
>
> ​	[1.4. 연산 ](#14-연산)
>
> ​	[1.5. 변경 ](#15-변경)
>
> ​	[1.6. 삭제 ](#16-삭제)
>
> ​	[1.7. 검색 ](#17-검색)
>
> ​	[1.8. 튜플의 길이 ](#18-튜플의-길이)
>
> ​		[1.8.1. encode 메서드 ](#181-encode-메서드)
>
> [2. 딕셔너리 ](#2-딕셔너리)
>
> ​	[2.1. 빈 딕셔너리 ](#21-빈-딕셔너리)
>
> ​	[2.2. dict로 딕셔너리 만들기 ](#22-dict로-딕셔너리-만들기)
>
> ​	[2.3. 추가와 삭제 ](#23-추가와-삭제)
>
> ​		[2.3.1. 추가 ](#231-추가)
>
> ​		[2.3.2. 삭제 ](#232-삭제)
>
> ​	[2.4. 추출 ](#24-추출)
>
> ​		[2.4.1. keys 메서드 ](#241-keys-메서드)
>
> ​		[2.4.2. values 메서드 ](242-values-메서드)
>
> ​		[2.4.3. items 메서드 ](#243-items-메서드) 
>
> ​		[2.4.4. get 메서드 ](244-get-메서드)
>
> ​	[2.5. 확인 ](#25-확인)
>
> ​	[2.6. 딕셔너리와 튜플 ](#26-딕셔너리와-튜플)
>
> ​	[2.7. zip 함수 ](#27-zip-함수)
>
> [3. Set ](3-set)
>
> ​	[3.1. Set 인덱싱 ](#31-set-인덱싱)
>
> ​	[3.2. 집합 ](#32-집합)
>
> ​		[3.2.1. 합집합 ](#321-합집합)
>
> ​		[3.2.2. 교집합 ](322-교집합)
>
> ​		[3.2.3. 차집합 ](#323-차집합)
>
> ​	[3.3. 추가 ](#33-추가)
>
> ​		[3.3.1. add 함수 ](#331-add-함수)
>
> ​		[3.3.2. update 함수 ](#332-update-함수)
>
> ​	[3.4. 삭제 ](#34-삭제)
>
> [4. 불 자료형 ](#4-불-자료형)
>
> [5. id 함수 ](#5-id-함수)
>
> [6. is 함수 ](#6-is-함수)
>
> ​	[6.1. [:] ](#61-)
>
> ​	[6.2. copy 함수 ](#62-copy-함수)
>
> [7. while 조건 ](#7-while-조건)
>
> ​	[7.1. 무한 루프 ](#71-무한-루프)
>
> [8. if 조건문 ](#8-if-조건문)
>
> ​	[8.1. pass ](#81-pass)
>
> ​	[8.2. 여러가지의 조건 ](#82-여러가지의-조건)
>
> ​		[8.2.1. and ](#821-and)
>
> ​		[8.2.2. or ](#822-or)
>
> ​		[8.2.3. not ](#823-not)
>
> [9. 반복문 ](#9-반복문)
>
> ​		[9.1. for 문 ](#91-for-문)
>
> ​		[9.2. break ](#92-break)
>
> ​		[9.3. continue ](#93-continue)

---

> # 시퀀스 자료형

값이 연속적으로 이어진 자료형이다.

## 1. 튜플

- 순서가 있는 자료형이다.
- 문자, 정수 등 다양한 값을 저장할 수 있다.

- 값을 삽입, 삭제, 수정할 수 없다는 점에서 리스트와 다르다.
- 튜플은 리스트가 제공하는 `append` 와 `insert` 메서드가 없으며, `index` 와 `count` 만 가능하다.
- 값 다음에 여분의 콤마를 찍어 튜플임을 나타낸다.

~~~python
tuple = ()
~~~

~~~python
t = (9,)
print(type(t))

# Output
<class 'tuple'>
~~~

### 1.1 인덱싱

~~~python
tuple[]
~~~

~~~python
t = (1, 2, 3)
print(t[1])

# Output
2
~~~

### 1.2 슬라이싱

~~~python
tuple[시작:끝]
~~~

~~~python
t = (1, 2, 3)
print(t[1:])

# Output
(2, 3)
~~~

### 1.3. range 범위

~~~python
tuple(range())
~~~

~~~python
print(tuple(range(5)))
print(tuple(range(1, 50, 7)))

# Output
(0, 1, 2, 3, 4)
(1, 8, 15, 22, 29, 36, 43)
~~~

### 1.4. 연산

- `+` , `*` 연산이 가능하다.

- `range` 는 단독으로 불가능하므로 자료형을 바꾸어 연산한다.

- 자료형이 다른 경우에 같은 자료형으로 바꾼 후에 연산한다.

~~~python
t = (1, 2, 3)
p = (5, 6, 7)
print(t + p)
print(p * 3)

# Output
(1, 2, 3, 5, 6, 7)
(5, 6, 7, 5, 6, 7, 5, 6, 7)
~~~

~~~python
print(tuple(range(0, 4)) + tuple(range(4, 6)))
print(list(range(0, 5, 1)) * 3)

# Output
(0, 1, 2, 3, 4, 5)
[0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4]
~~~

### 1.5. 변경

요소값을 변경하려고 할 때, 튜플을 리스트로 변경한 후에 요소값을 변경한다.

~~~python
print(list())
~~~

~~~python
x = tuple(range(1,10))
y = list(x) # 새로운 변수에 리스트형 튜플을 입력
print(y)
y[4] = 50 
print(y)

# Output
[1, 2, 3, 4, 50, 6, 7, 8, 9]
~~~

반대로 리스트를 튜플로 변경한다.

~~~python
y = [1,2,3]
z = tuple(y)
print(type(z))

# Output
<class 'tuple'>
~~~

### 1.6. 삭제

tuple, range, 문자열은 삭제가 불가능하다.

~~~python
del tuple[]
~~~

~~~python
a = [10, 20, 30, 40]
del a[1]
print(a)

# Output
[10, 30, 40]
~~~

### 1.7. 검색

값이 존재하는지에 대한 여부를 확인한다.

~~~python
값 (not) in 튜플
~~~

~~~python
print('5가 있습니까?', 5 not in (1, 2, 3, 4, 5))
print(1 in range(5))

# Output
5가 있습니까? False
True
~~~

### 1.8. 튜플의 길이

튜플의 길이를 구한다.

~~~python
len(tuple)
~~~

~~~python
print(len(range(1, 10, 2)))
print(len('he l lo')) # 공백도 포함

# Output
5
7
~~~

#### 1.8.1. encode 메서드

- 문자열을 byte로 변경하여 출력한다.

- 한글은 한 글자 당 3byte이다.

~~~python
len(문자열.encode('utf-8'))
~~~

~~~python
a = '안녕하세요'
print(len(a.encode('utf-8')))

# Output
15
~~~

---

## 2. 딕셔너리

- 순서가 있는 자료형이다.
- `key(키)`와 `value(값)`의 쌍을 저장하는 대용량의 자료구조이다.
- 변경이 가능한 자료형으로 삽입, 삭제, 수정이 가능하다.

- 순서가 없기 때문에 인덱스로 읽을 수 없고, `키`로부터 `값`을 찾는다.

~~~python
딕셔너리 = {키:값}
~~~

키 이름이 중복되면 __마지막 값__ 을 출력한다.

### 2.1. 빈 딕셔너리

~~~python
딕셔너리 = {}
딕셔너리 = dict()

# Output
{}
~~~

### 2.2. dict로 딕셔너리 만들기

dict에서 __키 = 값__ 형식으로 딕셔너리를 만든다.

~~~python
딕셔너리 = dict(키1=값1, 키2=값2...)
~~~

dict에서 __(키, 값)__ 형식으로 튜플을 나열하여 만든다.

~~~python
딕셔너리 = dict([(키1,값1), (키2,값2)...])
~~~

dict에서 __{키:값}__ 형식으로 딕셔너리를 만든다.

~~~python
딕셔너리 = dict({키1:값1, 키2:값2...})
~~~

dict에서 __zip함수__ 를 사용하여 딕셔너리를 만든다.

~~~python
딕셔너리 = dict(zip([키_리스트], [값_리스트]))
~~~

### 2.3. 추가와 삭제

#### 2.3.1. 추가

딕셔너리에 `키`와 `값`을 추가한다.

~~~python
딕셔너리[키] = 값
~~~

~~~python
dic = {1:'철수', 2:'영희'}
dic[3] = '영수'
print(dic)

# Output
dic = {1:'철수', 2:'영희', 3:'영수'}
~~~

#### 2.3.2. 삭제

삭제는 `키`를 지정하여 입력한다.

~~~python
del 딕셔너리[키]
~~~

~~~python
dic = {1:'철수', 2:'영희', 3:'영수'}
del dic[3]
print(dic)

# Output
{1:'철수', 2:'영희'}
~~~

딕셔너리의 모든 요소를 삭제할 때는 `clear` 메서드를 호출한다.

### 2.4. 추출

#### 2.4.1. keys 메서드

딕셔너리의 `키`만 리턴한다.

~~~python
딕셔너리.keys()
~~~

#### 2.4.2. values 메서드

딕셔너리의 `값`만 리턴한다.

~~~python
딕셔너리.values()
~~~

#### 2.4.3. items 메서드

딕셔너리의 `키`와 `값`의 쌍을 튜플로 묶어 리턴한다.

~~~python
딕셔너리.items()
~~~

#### 2.4.4. get 메서드

`키`에 해당하는 `값`을 추출한다.

~~~python
딕셔너리.get(키) == 딕셔너리[키]
~~~

`키`가 존재하지 않을 때에는 __None__ 을 리턴한다.

### 2.5. 확인

- `키`의 존재 여부를 확인한다.

- __True__ 또는 __False__ 를 리턴한다.

~~~python
키 (not) in 딕셔너리
~~~

~~~python
dic = {1:'철수',2:'영희',3:'영수'}
print(1 in dic)

# Output
True
~~~

- 딕셔너리의  키 개수를 확인한다.

~~~
len(딕셔너리)
~~~

### 2.6. 딕셔너리와 튜플

|            딕셔너리            |                 튜플                 |
| :----------------------------: | :----------------------------------: |
|               {}               |                  ()                  |
| 데이터의 연관 관계를 알기 쉽다 | 데이터의 연관 관계를 표현하기 어렵다 |
|      값의 편집이 가능하다      |        값의 편집이 불가능하다        |

### 2.7. zip 함수

여러 개의 컬렉션을 합쳐 하나로 만든다.

~~~
딕셔너리(zip([키_리스트], [값_리스트]))
~~~

~~~python
a = dict(zip(['a', 'b', 'c', 'd'], [1, 2, 3, 4]))
print(a)

# Output
{'a': 1, 'b': 2, 'c': 3, 'd': 4}
~~~

---

## 3. Set

- 순서가 없는 자료형이다.
- 리스트 자료로 기초로 집합을 생성한다.
- 중복 값은 제외가 된다.

~~~python
set()
~~~

### 3.1. Set 인덱싱

순서가 없는 자료형으로 인덱싱이 불가능하다. 그러므로 리스트 또는 튜플로 변환 후에 수행한다.

~~~python
a = 'hihello'

# Output
print(list(a)) # 리스트로 변환
~~~

```python
b = list(a) 
print(a[3])

# Output
h
```

### 3.2 집합

#### 3.2.1. 합집합

전체 값을 출력한다.

~~~python
set&set == set.intersection(set)
~~~

#### 3.2.2. 교집합

같은 값만 출력한다.

~~~python
set|set == set.union(set)
~~~

#### 3.2.3. 차집합

값은 값을 빼고 출력한다.

~~~python
set-set == set.difference(set)
~~~

### 3.3. 추가

#### 3.3.1. add 함수

하나의 값만 추가할 수 있다.

~~~python
set.add(값)
~~~

#### 3.3.2. update 함수

여러 개의 값을 추가할 수 있다.

~~~python
set.update([,])
~~~

### 3.4. 삭제

특정한 값을 삭제한다.

~~~python
set.remove(값)
~~~

---

## 4. 불 자료형

__True__ 또는 __False__ 를 리턴하는 자료형이다.

~~~python
bool()
~~~

| True      | 'test' ,  [1,2] , 1 , ...      |
| --------- | ------------------------------ |
| __False__ | __' ' , None , 0 , [] , ... __ |

---

## 5. id 함수

변수의 메모리상 주소를 확인한다.

~~~python
id(변수)
~~~

~~~python
a = [1, 2, 3]
print(id(a))

# Output
140257816387457
~~~

---

## 6. is 함수

두 변수의 메모리상 주소가 동일한지 확인한다.

~~~python
변수 is 변수
~~~

~~~python
a = [1, 2]
b = [1, 2]
print(id(a))
print(id(b))
print(a is b) # 주소가 같은지 확인
print(a == b) # 값이 같은지 확인

# Output
140504683683777
140504683682369
False
True
~~~

### 6.1. [:]

변수를 만들 때에 다른 변수의 값을 가져오면서 다른 주소를 가리키도록 할 때 사용한다.

~~~python
변수[:]
~~~

~~~python
a = [1, 2, 3]
b = a[:] # b = a는 동일한 대상(데이터)
print(id(a))
print(id(b))
print(a)
print(b)

# Output
140337449441793
140337449443201
[1, 2, 3]
[1, 2, 3]
~~~

### 6.2. copy 함수

Copy 모듈에 있는 copy 함수를 사용한다.

~~~python
from 모듈명 import 함수명
~~~

~~~python
from copy import copy
a = [1,2]
b = copy(a) # b = a[:]와 같다
print(id(a))
print(id(b))

# Output
140469025898881
140469025811009
~~~

---

## 7. while 조건

조건이 참을 만족하는 동안 문장 수행을 반복한다.

~~~python
초기식
while 조건:
	변화식
  반복할 코드
~~~

~~~python
i = 0 # 초기식
while i < 10: # while 조건식
    i = i + 1 # 변화식
    print(i, '번째 반복 수행') # 반복할 코드
~~~

### 7.1. 무한 루프

- 조건이 참일 때 무한 반복하며, 거짓일 때 종료한다.

- 문자열 또는 0이 아닌 숫자는 `True` 로 무한 루프로 동작한다.

~~~python
while True:
	조건
~~~

~~~python
i = 0
while True:
	i = i + 1
	print(i, '번째 반복 수행')
	
# Output
1번째 반복 수행
2번째 반복 수행
3번째 반복 수행
...
919번째 반복 수행
...
~~~

---

## 8. if 조건문

조건의 진위 여부에 따라 명령의 실행 여부를 결정하는 제어문이다.

~~~python
if 조건1:
	명령1
elif 조건2: 
  명령2
else:
	명령3
~~~

~~~python
s = 60
if s >= 60:
    msg = 'pass'
else:
    msg = 'fail'
print(msg)

# Output
pass
~~~

간략하게 하면,

~~~python
msg = 'pass' if s >= 60 else 'fail'
print(msg)

# Output
pass
~~~

### 8.1. pass

아무 동작도 하지 않으며, 무시하고 건너뛴다.

~~~python
pass
~~~

~~~python
x = 1
if x == 5:
    pass
    print('x는 홀수이다')
print('출력됩니다')

# Output
출력됩니다
~~~

### 8.2. 여러가지의 조건

조건이 두 개 이상일 때 사용한다.

#### 8.2.1. and

~~~python
money = 1000
card = True
if money>0 and card:
    print('taxi')
else:
    print('bus')
 
# Output
taxi
~~~

#### 8.2.2. or

~~~python
money = 1000
card = True
if money>=5000 or card:
    print('taxi')
else:
    print('bus')

# Output
taxi
~~~

#### 8.2.3. not

~~~python
money = 1000
if not money <= 5000:
    print('taxi')
else:
    print('bus') 

# Output    
bus
~~~

---

## 9. 반복문

### 9.1. for 문

요소를 순서대로 반복하면서 루프의 명령을 실행하는 반복문이다.

~~~python
for 제어변수 in 컬렉션:
    명령
~~~

~~~python
for dan in range(2, 6): # dan=2 to 9
    for i in range(1, 10): # i=1 to 9
        print(dan*i, end=' ')
    print('') #줄 바꿈

# Output    
2 4 6 8 10 12 14 16 18 
3 6 9 12 15 18 21 24 27 
4 8 12 16 20 24 28 32 36 
5 10 15 20 25 30 35 40 45 
~~~

### 9.2. break

특정한 조건에 의해 탈출하는 흐름 제어문이다.

~~~python
if 조건:
    break
~~~

~~~python
score = [35, 88, 120, 78]
for s in score:
    if s<0 or s>100:
        break
    print(s)
print('성적 처리 끝')

# Output
35
88
성적 처리 끝
~~~

~~~python
a = 0
while a < 10:
    a = a + 1
    if a % 2 == 0: break # 2로 나누어 떨어지는 수
    print(a)

# Output    
1
~~~

### 9.3. continue

현재 반복을 중지하고, 루프의 선두로 돌아가 조건을 점검한 후 반복을 수행한다.

~~~python
if 조건:
    continue
~~~

~~~python
score = [35, 88, 24, 78]
for student in score:
    if student == 35: # 결석한 35번 학생을 제외
        continue
    print(student)
print('성적 처리 끝')

# Output
88
24
78
성적 처리 끝
~~~

```python
a = 0
while a < 10:
    a = a + 1
    if a % 2 == 0: continue # 2로 나누어 떨어지는 수
    print(a)
```