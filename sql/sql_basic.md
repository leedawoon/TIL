# SQL - Basic

> [SQL이란? ](#SQL이란?)
>
> [SQL문법 ](#SQL문법)
>
> ​	[1. 기본 ](#1-기본)
>
> ​		[1.1. * ](#11-)
>
> ​		[1.2. SELECT ](#12-SELECT)
>
> ​		[1.3. 집계함수 ](#13-집계함수)
>
> ​		[1.4. AS ](#14-AS)
>
> ​		[1.5. DISTINCT ](#15-DISTINCT)
>
> ​	[2. 조건 ](2-조건)
>
> ​		[2.1. WHERE ](21-WHERE)
>
> ​		[2.2. BETWEEN ](22-BETWEEN)
>
> ​		[2.3. 대소관계 ](23-대소관계)
>
> ​		[2.4. (NOT) IN ](24-NOT-IN)
>
> ​		[2.5. IS (NOT) NULL ](25-IS-NOT-NULL)
>
> ​		[2.6. LIKE '%TEXT%' ](26-LIKE-TEXT)
>
> ​	[3. 결합 ](3-결합)
>
> ​		[31. GROUP BY ](31-GROUP-BY)
>

---

# SQL이란?

Structured Query Language.

데이터베이스에서 필요한 형태의 데이터를 추출 또는 가공하기 위해 사용하는 언어이다.

<br>

---

# SQL문법

> # 1. 기본

## 1.1. *

해당 테이블의 모든 컬럼을 출력하는 연산자이다.

```mysql
SELECT * FROM DB명.테이블명;
```

여러 개의 컬럼을 출력하고 싶다면,

```mysql
SELECT 컬럼명1, 컬럼명2 FROM DB명.테이블명;
```

<br>

Q. Classicmodels.products의 productName, productLine을 조회하세요.

```mysql
SELECT PRODUCTNAME, PRODUCTLINE FROM CLASSICMODELS.PRODUCTS;
```

<br>

## 1.2. SELECT

필요한 컬럼만 추출하는 구문이다.

```mysql
SELECT 호출하려는 컬럼 FROM DB명.테이블명;
```

매번 테이블명에 DB명을 입력하는 것이 번거롭다면, 다음과 같이 처리가 가능하다.

```mysql
USE DB명;
SELECT 계산식 또는 컬럼명 FROM 테이블명;
```

<br>

Q. classicmodels.customers의 customerNumber를 조회하세요.

```mysql
SELECT CUSTOMERNUMBER FROM CLASSICMODELS.CUSTOMERS;
```

<br>

## 1.3. 집계함수

데이터를 집계할 수 있는 함수인 count, sum, avg, max, min을 사용할 수 있다.

```mysql
SELECT 집계함수(컬럼명) FROM DB명.테이블명;
```

| 함수    | 내용   |
| ------- | ------ |
| `COUNT` | 개수   |
| `SUM`   | 합계   |
| `AVG`   | 평균   |
| `MAX`   | 최대값 |
| `MIN`   | 최소값 |

<br>

Q. classicmodels.payments의 amount 총합과 checknumber 개수를 구하세요.

```mysql
SELECT SUM(AMOUNT)
, COUNT(CHECKNUMBER)
FROM CLASSICMODELS.PAYMENTS;
```

<br>

## 1.4. AS

특정 컬럼의 컬럼명을 변경해 조회할 때 사용하는 구문이다.

```mysql
SELECT 원래 컬럼명 AS 변경 칼럼명
FROM DB명.테이블명;
```

<br>

Q. classicmodels.products의 productCode의 개수를 구하고, 칼럼명을 n_products로 변경하세요.

```mysql
SELECT COUNT(PRODUCTCODE) AS N_PRODUCTS
FROM CLASSICMODELS.PRODUCTS;
```

AS는 생략도 가능하다.

```mysql
SELECT COUNT(PRODUCTCODE) N_PRODUCTS
FROM CLASSICMODELS.PRODUCTS;
```

<br>

## 1.5. DISTINCT

중복을 제외하고 데이터를 조회한다.

```mysql
SELECT DISTINCT 컬럼명 FROM DB명.테이블명;
```

<br>

Q. classicmodels.orderdetails의 ordernumber의 중복을 제거하고 조회하세요.

```mysql
SELECT DISTINCT ORDERNUMBER
FROM CLASSICMODELS.ORDERDETAILS;
```

<br>

---

> # 2. 조건

## 2.1. WHERE

조건을 추가해 데이터를 조회한다.

```mysql
SELECT 컬럼명 FROM DB명.테이블명 WHERE 조건;
```

<br>

## 2.2. BETWEEN

특정 컬럼의 값이 시작점~끝점인 조건을 생성하여 데이터를 출력한다.

```mysql
SELECT 컬럼명
FROM DB명.테이블명
WHERE 칼럼명 BETWEEN 시작점 AND 끝점;
```

<br>

Q. Classicmodels.orderdetails의 priceeach가 30에서 50 사이인 데이터를 조회하세요.

```mysql
SELECT *
FROM CLASSICMODELS.ORDERDETAILS
WHERE PRICEEACH BETWEEN 30 AND 50;
```

<br>

## 2.3. 대소관계

대소 관계 연산자를 사용하여 처리한다.

```mysql
SELECT 컬럼명
FROM DB명.테이블명
WHERE 컬럼 > 조건;
```

| 연산자      | 내용               |
| ----------- | ------------------ |
| `=`         | 같다               |
| `<>` , `!=` | 같지 않다          |
| `>`         | 좌변이 크다        |
| `<`         | 우변이 크다        |
| `>=`        | 좌변과 같거나 크다 |
| `<=`        | 우변과 같거나 크다 |

<br>

Q. classicmodels.orderdetails의 priceeach가 30 이상인 데이터를 조회하세요.

```mysql
SELECT PRICEEACH
FROM CLASSICMODELS.ORDERDETAILS
WHERE PRICEEACH >= 30;
```

<br>

## 2.4. (NOT) IN

해당 컬럼에서 지정된 값만 출력한다.

```mysql
SELECT 컬럼명
FROM 테이블명
WHERE 컬럼명 (NOT) IN (값1, 값2);
```

칼럼의 데이터 타입이 String인 경우에는 값을 ' '로 감싸준다.

<br>

Q. classicmodels.customers의 country가 USA 또는 Canada인 customernumber를 조회하세요.

```mysql
SELECT CUSTOMERNUMBER
FROM CLASSICMODELS.CUSTOMERS
WHERE COUNTRY IN ('USA', 'CANADA');
```

<br>

Q. classicmodels.customers의 country가 Germany, France가 아닌 customernumber를 조회하세요.

```mysql
SELECT CUSTOMERNUMBER
FROM CLASSICMODELS.CUSTOMERS
WHERE COUNTRY NOT IN ('Germany', 'France');
```

<br>

## 2.5. IS (NOT) NULL

특정 값이 NULL인 데이터를 출력한다.

```mysql
SELECT 컬럼명
FROM 테이블명
WHERE 컬럼명 IS (NOT) NULL;
```

<br>

Q. classicmodels.employees의 reportsTo의 값이 NULL인 employeenumber를 조회하세요.

```mysql
SELECT EMPLOYEENUMBER
FROM CLASSICMODELS.EMPLOYEES
WHERE REPORTSTO IS NULL;
```

<br>

## 2.6. LIKE '%TEXT%'

특정 필드에 지정 텍스트가 포함되는 경우를 출력할 때 사용한다.

```mysql
SELECT 컬럼명
FROM 테이블명
WHERE 컬럼명 LIKE '%TEXT%';
```

| 연산자 | 내용                          |
| ------ | ----------------------------- |
| A%     | A로 시작하는 모든 문자열      |
| %A     | A로 끝나는 모든 문자열        |
| %A%    | A를 포함하고 있는 모든 문자열 |
| _A     | A로 끝나는 2글자 문자열       |

<br>

Q. classicmodels.customer의 addressline1에 ST가 포함된 addressline1을 출력하세요.

```mysql
SELECT ADDRESSLINE1
FROM CLASSICMODELS.CUSTOMER
WHERE ADDRESSLINE1 LIKE '%ST%';
```

<br>

---

> # 3. 결합

## 3.1. GROUP BY

컬럼의 값들을 그룹화해 각 값들의 평균 값, 개수 등을 구할 때 사용한다.

```mysql
SELECT 컬럼명
FROM DB명.테이블명
GROUP BY 컬럼명;
```

<br>

Q. classicmodels.customers 테이블을 이용해 국가, 도시별 고객 수를 구하세요.

```mysql
SELECT COUNTRY
, CITY
, COUNT(CUSTOMERBUMBERS) AS N_CUSTOMERS
FROM CLASSICMODELS.CUSTOMERS
GROUP BY COUNTRY, CITY;
```

