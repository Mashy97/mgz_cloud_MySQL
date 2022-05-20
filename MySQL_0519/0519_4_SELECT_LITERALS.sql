-- 상수 ( Literals )
-- Literal 은 상수 값을 의미.
-- Character literal은 작은 따옴표로 묶고, Number literal 은 따옴표 없이 표현한다.
-- Character literal을 작은 따옴표로 묶어 주어 야 MySQL Server 는 keyword나 객체 이름을 구별할 수 있다 .

-- 사원들의 입사날짜를 (년, 월, 일) 확인
-- ename => 사원 이름, hiredate => 입사 날짜
SELECT ename AS "사원 이름", hiredate As "입사 날짜"
FROM emp;


-- 입사 날짜가 1981-04-02인 사원을 찾아 출력
SELECT ename, hiredate
FROM emp
WHERE hiredate = '1981-04-02';
-- 날짜를 입력 할 때에는 '' 사용

