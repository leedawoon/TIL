# programmers
# https://programmers.co.kr/learn/courses/30/parts/17046

/*
ANIMAL_INS : 동물 보호소에 들어온 동물의 정보를 담은 테이블
ANIMAL_ID : 동물의 ID
ANIMAL_TYPE : 생물 종
DATETIME : 보호 시작일
INTAKE_CONDITION : 보호 시작 시 상태
NAME : 이름
SEX_UPON_INTAKE : 성별 및 중성화 여부

ANIMAL_OUTS : 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블
ANIMAL_ID : 동물의 ID (ANIMAL_INS.ANIMAL_ID의 FOREIGN KEY)
ANIMAL_TYPE : 생물 종
DATETIME : 입양일
NAME : 이름
SEX_UPON_INTAKE : 성별 및 중성화 여부
*/

# 천재지변으로 인해 일부 데이터가 유실되었습니다.
# 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 조회
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_INS A
RIGHT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.ANIMAL_ID IS NULL;

# 관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다.
# 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회 (단, 보호 시작일이 빠른 순으로 정렬)
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A
JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME > B.DATETIME
ORDER BY A.DATETIME ASC;

# 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회 (단, 보호 시작일 순으로 정렬)
SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A
LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.DATETIME IS NULL
ORDER BY A.DATETIME ASC
LIMIT 3;

/*
보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다.
보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회
(단, 중성화 여부에 대해 거치지 않은 동물은 "INTACT", 거친 동물은 "SPAYED|NEUTERED"로 표기)
*/
SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM ANIMAL_INS A
JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE REGEXP_LIKE (A.SEX_UPON_INTAKE, 'INTACT')
AND REGEXP_LIKE (B.SEX_UPON_OUTCOME, 'SPAYED|NEUTERED')
ORDER BY A.ANIMAL_ID ASC;

# 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회 (단, 보호 기간이 긴 순으로 정렬)
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_INS A
INNER JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NOT NULL
ORDER BY B.DATETIME - A.DATETIME DESC
LIMIT 2;