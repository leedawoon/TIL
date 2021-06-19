# programmers
# https://programmers.co.kr/learn/challenges?tab=all_challenges

/*
ANIMAL_INS : 동물 보호소에 들어온 동물의 정보를 담은 테이블
ANIMAL_ID : 동물의 ID
ANIMAL_TYPE : 생물 종
DATETIME : 보호 시작일
INTAKE_CONDITION : 보호 시작 시 상태
NAME : 이름
SEX_UPON_INTAKE : 성별 및 중성화 여부
*/

# 가장 최근에 들어온 동물은 언제 들어왔는지 조회
USE INTAKES;
SELECT MAX(DATETIME) FROM ANIMAL_INS;

# 가장 먼저 들어온 동물은 언제 들어왔는지 조회
SELECT MIN(DATETIME) FROM ANIMAL_INS;

# 동물이 몇 마리 들어왔는지 조회
SELECT COUNT(ANIMAL_ID) FROM ANIMAL_INS;

# 동물의 이름은 몇 개인지 조회 (단, 중복과 NULL 제외)
SELECT COUNT(DISTINCT NAME)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;

# 동물 중, 고양이와 개가 각각 몇 마리인지 조회
SELECT ANIMAL_TYPE
, COUNT(ANIMAL_TYPE) AS COUNT
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE ASC;

# 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회 (단, 오름차순 정렬)
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;

# 동물 중, 이름이 있는 동물의 ID를 조회 (단, 오름차순 정렬)
SELECT ANIMAL_ID
FROM ANMAL_INS
WHERE NAME IS NOT NULL
ORDER BY ANIMAL_ID ASC;

# 동물 중, 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물의 아이디와 이름, 성별 및 중성화 여부를 조회
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('LUCY', 'ELLA', 'PICKLE', 'ROGAN', 'SABRINA', 'MITTY');

/*
입양 게시판에 동물 정보를 게시하려 한다.
동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회
(단, 이름이 없는 동물의 이름은 "No name"으로 표시)
*/
SELECT ANIMAL_TYPE
, IFNULL(NAME, 'No name') AS NAME
, SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

/*
보호소에 돌아가신 할머니가 기르던 개를 찾는 사람이 찾아왔다.
이 사람이 말하길 할머니가 기르던 개는 이름에 'el'이 들어간다고 한다.
동물 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성
(단, 이름 순으로 조회)
*/
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'DOG' AND NAME LIKE '%EL%'
ORDER BY NAME;