
-- 널 ( NULL )

-- 특정 행, 특정 열에 대한 아직 값을 알 수 없는 상태, 의미가 없는 상태를 표현
-- 이용할 수 없거나, 지정되지 않거나, 알 수 없거나, 적용할 수 없는 값
-- 아직 정의되지 않은 미지의 값
-- 현재 데이터를 입력하지 못하는 경우

-- NULL 값을 포함한 산술 연산 식의 결과는 언제나 NULL 이다.
-- NOT NULL 또는 Primary Key 제약조건이 걸린 칼럼에서는 NULL VALUE가 나타날 수 없다 .
-- NULL 인 칼럼은 Length 가 0 이므로 data를 위한 물리적 공간을 차지 하지 않는다 .

-- 이름, 월급, 보너스 출력
SELECT ename, sal, comm 
FROM emp;

-- 연봉 계산 ( sal *12 + comm ) 
SELECT ename, sal, comm, sal*12+comm
FROM emp;
-- NULL 값은 연산에 적용되지 않기 때문에 어떠한 연산을 하든 NULL 값이 출력

-- NULL 값은 연산이 불가능 하기 때문에 NULL 값을 변경 해주어야 연산이 가능
-- IFNULL(a,b) => a에 NULL 값이 있다면 b로 교체

-- IFNULL을 상용하여 이전에 NULL 값으로 나오던 연봉 출력
SELECT  ename, sal, comm, IFNULL(comm, 0), sal*12+IFNULL(comm,0)
FROM emp;
