# Python

> [1. Python 설치 ](#1-python-설치)
>
> [2. 기본 구조 ](#2-기본-구조)
>
> ​	[2.1. 출력 ](#21-출력)
>
> ​	[2.2. 주석 ](#22-주석)
>
> ​	[2.3. 변수 ](#23-변수)
>
> ​	[2.4. 코드블록 ](#24-코드블록)
>
> [3. 타입 ](#3-타입)
>
> ​	[3.1. 타입 변환 ](#31-타입-변환)
>
> ​	[3.2. 실수의 부동 소수점 방식 ](#32-실수의-부동-소수점-방식)

---

## 1. Python 설치

1. [python.org](https://python.org) 에서 다운로드한다.

2. 설치한다.

---

## 2. 기본 구조

| 구분               |      |
| :----------------- | ---- |
| `list`             | [ ]  |
| `tuple`            | ( )  |
| `dictionary` `set` | { }  |

### 2.1. 출력

~~~python
print()
~~~

여러 내용을 한 줄에 출력한다.

~~~python
print(); print()
~~~

### 2.2. 주석

~~~python
#
~~~

주석이 장문일 때 사용한다.

~~~python
'''
내용
'''
~~~

### 2.3. 변수

Python은 **동적 타입**으로, 실행 중에 변수의 타입을 바꿀 수 있다.

~~~python
변수 = 값
~~~

### 2.4. 코드블록

들여쓰기가 동일한 코드들의 집합이다.

~~~python
if 조건:
    명령 # 코드블록
    명령
    명령
명령     # 블록 외부의 명령
명령
~~~

~~~python
if a == 3:
    print('3') # 코드블록
    print('three')
    print('3과 같습니다')
~~~

---

## 3. 타입

변수의 타입을 확인한다.

~~~python
type()
~~~

| 타입    | 설명   |
| ------- | ------ |
| `str`   | 문자형 |
| `int`   | 정수형 |
| `float` | 실수형 |

### 3.1. 타입 변환

~~~python
str()
int()
float()
..
~~~

### 3.2. 실수의 부동 소수점 방식

~~~python
가수e지수

# Output
print(123e8 #123*10의 8승
12300000000.0
~~~
