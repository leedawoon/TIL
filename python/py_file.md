# Python - File

> [1. File ](#1-file)
>
> ​	[1.1. write ](#11-write)
>
> ​	[1.2. read ](#12-read)
>
> ​	[1.3. with as ](#13-with-as)
>
> ​		[1.3.1. read ](#131-read)
>
> ​		[1.3.2. write ](#132-write)
>
> [2. 여러가지 방법 ](#2-여러가지-방법)
>
> ​	[2.1. readline ](#21-readline)
>
> ​		[2.1.2. readlines ](#212-readlines)
>
> ​	[2.2. writelines ](#22-writelines)
>
> [3. Pickle ](#3-pickle)

---

# 1. File

Python 내장 함수 `open`을 사용하여 파일 내용을 입출력할 수 있다.

| 파일 열기 모드 | 설명      |
| -------------- | --------- |
| r              | 읽기 모드 |
| w              | 쓰기 모드 |
| a              | 추가 모드 |

## 1.1. read

- 파일을 연다.
- 파일을 읽는다.
- 파일을 출력한다

```python
f = open(파일명, 'r')
f = f.read()
print(f)
```

```python
# hello.txt 파일을 열고, 출력한다.
f = open('hello.txt , 'r')
s = f.read()
print(s)

# Output         
hello world
```

## 1.2. write

- 파일을 연다. 
- 파일 입출력을 한다. 
- 파일을 닫는다.

~~~python
f = open(파일명, 'w')
f.write('')
f.close()
~~~

~~~python
# hello.txt 파일에 텍스트를 작성한다.
f = open('hello.txt , 'w')
f.write('hello world')
f.close()
~~~

## 1.3. with as

파일을 사용한 뒤에 자동으로 파일을 닫아준다.

### 1.3.1. read

~~~python
with open(파일명, 'r') as 파일변수:
  파일변수 = 파일변수.read()
  print()
~~~

~~~python
# hello.txt 파일을 읽는다.
with open('hello.txt' , 'r') as f:
	s = f.read()
	print(s)
~~~

### 1.3.2 write

기존에 저장되어 있는 내용이 삭제 되고, 새롭게 작성하여 출력한다.

~~~python
with open(파일명, 'w') as 파일변수:
  	반복문
~~~

~~~python
with open('hello.txt', 'w') as f:
    for i in range(10):
        f.write('hello world {0}\n'.format(i+1))
        
# Output
hello world 1
hello world 2
...
hello world 10
~~~

---

# 2. 여러가지 방법

외부 파일을 읽어 들여 프로그램에서 사용할 수 있는 여러 가지 방법이 있다.

## 2.1. readline

- 한 줄씩 읽으므로 한 글자씩 읽는 `read` 보다 속도가 빠르다. 
- `for`  또는  `while` 문과 함께 사용한다. 
- 자동적으로 줄이 바뀐다.

```python
with open('hello.txt', 'r') as f:
    line = None
    while line != '':
        line = f.readline()
        print(line.strip('\n')) # 줄 바꿈 삭제

# Output                         
hi
nicetomeetyou
bye
```

```python
f = open('hello.txt', 'r')
while True:
    line = f.readline()
    if not line: break
    print(line.strip())
f.close()
```

### 2.1.2. readlines

파일의 모든 내용이 출력된다.

```python
lines=['hi\n', 'nicetomeetyou\n', 'bye']
with open('hello.txt', 'r') as f:
    print(f.readlines())
    for i in lines:
        print(i.strip('\n'))

# Output
hi
nicetomeetyou
bye       
```

## 2.2. writelines

- 리스트의 여러 내용을 출력한다.

~~~python
with open(파일명, 'w') as f:
	f.writelines(리스트명)
~~~

~~~python
lines=['hi\n', 'nicetomeetyou\n', 'bye']
with open('hello.txt', 'w') as f:
    f.writelines(lines)
  
# Output  
hi
nicetomeetyou
bye
~~~

---

# 3. Pickle

Python 객체를 파일로 저장하고자 하는 경우에 사용되는 모듈이다.

- 피클링 : 객체가 파일로 저장되는 과정이다.
- 언피클링 : 파일이 객체로 저장되는 과정이다.

~~~python
import pickle
with open('파일', 'wb') as f: # write by 
~~~

~~~python
import pickle
내용물 = '단팥'
색상 = '파랑'
너비 = '20센티'
높이 = '10센티'
가족명단 = {'잉어':30, '꽃게':10, '상어':40}

with open('myfish.p', 'rb') as f: # 저장된 객체와 순서 일치해야함
    내용물 = pickle.load(f)
    색상 = pickle.load(f)
    너비 = pickle.load(f)
    높이 = pickle.load(f)
    가족명단 = pickle.load(f)

    print(내용물)
    print(색상)
    print(너비)
    print(높이)
    print(가족명단)

# Output   
단팥
파랑
20센티
10센티
{'잉어': 30, '꽃게': 10, '상어': 40}
~~~

