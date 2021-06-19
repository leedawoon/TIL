# programmers
# https://programmers.co.kr/learn/courses/30/parts/17042

/*
ANIMAL_INS : 동물 보호소에 들어온 동물의 정보를 담은 테이블
ANIMAL_ID : 동물의 ID
ANIMAL_TYPE : 생물 종
DATETIME : 보호 시작일
INTAKE_CONDITION : 보호 시작 시 상태
NAME : 이름
SEX_UPON_INTAKE : 성별 및 중성화 여부
*/

# 모든 동물의 정보를 ANIMAL_ID순으로 조회
USE INTAKES;
SELECT * FROM ANIMAL_INS ORDER BY ANIMAL_ID;

# 모든 동물의 이름과 보호 시작일을 조회 (단, ANIMAL_ID 역순 정렬)
SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;

# 아픈 동물(INTAKE_CONDITION = 'Sick)의 아이디와 이름을 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID;

# 젊은 동물(INTAKE_CONDITION != 'Aged')의 아이디와 이름을 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID;

# 또는
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION NOT LIKE '%Aged%'
ORDER BY ANIMAL_ID;

# 모든 동물의 아이디와 이름을 ANIMAL_ID순으로 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

# 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회
# (단, 이름이 같은 경우에는 보호를 나중에 시작한 동물 먼저 출력)
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC;

# 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;