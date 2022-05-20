-- 연결 연산자 ( Concatenation Operator )
-- Oracle에서는 문자열 리터럴을 이을 때에는 '||' 를 사용한다.
-- 하지만 MySQL에서는 연결연산자(||)가 없기 때문에 CONCAT()를 사용한다.
-- CONCAT('A', 'B') => 'A''B'출력
-- '' 사용

-- CONCAT 예제 이름 출력하기
-- My Name is ???.
SELECT CONCAT('My Name is ', ename, '.')
FROM emp;

-- CONCAT 예제 연봉 계산하기
-- 나의 연봉은 ???$ 입니다.
SELECT CONCAT('나의 연봉은 ', sal*12+IFNULL(comm,0), '$ 입니다.')
FROM emp;

 