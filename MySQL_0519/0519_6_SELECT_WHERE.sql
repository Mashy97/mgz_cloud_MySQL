-- WHERE
-- 사용자들이 자신이 원하는 자료만을 검색하기 위해서
-- Syntax
-- WHERE 절을 사용하지 않으면 FROM 절에 명시된 table의 모든 ROW를 조회하게 된다.
-- table내의 특정 row만 선택하고 싶을 때 WHERE 절에 조건식을 사용한다.
-- MySQL Server 는 table의 row를 하나씩 읽어 WHERE 절의 조건식을 평가하여 TRUE로 만족하는 것만을 선택한다 .
-- condition을 평가한 결과는 TRUE, FALSE, NULL 중의 하나이다.
-- condition 내에서 character 와 date 값의 literal은 작은 따옴표 를 사용하고, NUMBER 값은 그대로 사용한다.
-- condition 에서 사용하는 character 값은 대소문자를 구별하지 않는다.
-- date 타입의 변경은 DATE_FORMAT()를 사용한다.
-- WHERE 는 FROM 다음에 와야 한다.
-- WHERE 절에 조건이 없는 FTS(Full Table Scan) 문장은 SQL Tunning의 1차적인 검토 대상이 된다 .
-- WHERE 조건절의 조건식은 아래 내용으로 구성된다.
-- 1) Column 명(보통 조건식의 좌 측에 위치)
-- 2) 비교 연산자 ( --<, >, <=, >=, =, !=, <> )
-- 3) 문자, 숫자, 표현식(보통 조건식의 우 측에 위치)
-- 4) 비교 Column명 (JOIN 사용시)

-- 비교 연산자 ( --<, >, <=, >=, =, !=, <> )
-- job 이름이 'clerk'인 사람의 이름을 가져옴
SELECT ename, job
FROM emp
WHERE job = 'clerk';

-- 입사 날짜가 1981-04-02인 사원을 찾아 출력
SELECT ename, hiredate
FROM emp
WHERE hiredate = '1981-04-02';

-- 사번이 7788인 사원의 이름과 급여를 출력하시오
SELECT ename, empno
FROM emp
WHERE empno = 7788;

-- 급여가 3000이 넘는 직종을 선택하시오
SELECT job
FROM emp
WHERE sal > 3000;

-- PRESIDENT를 제외한 사원들의 이름과 직종을 출력하시오
SELECT ename, job
FROM emp
WHERE job != 'PRESIDENT';


-- 논리 연산자 ( AND(&&) OR(||) NOT(!))
-- 사원테이블에서 급여가 1000불이상이고, 부서번호가 30번인 사원의 사원번호 성명 담당업무 급여 부서번호를 출력하시오.
SELECT empno, ename, job, sal, deptno
FROM emp
WHERE sal >= 1000 AND deptno = 30;

-- 사원테이블에서 급여가 2000불이상이거나 담당업무가 매니저인 사원의 정보중 사원번호 이름 급여 업무를 출력하시오.
SELECT empno, ename, sal, job
FROM emp
WHERE sal >= 2000 OR job = 'MANAGER';

-- 1981년도에 입사한 사람들을 출력 - (1)
SELECT ename, hiredate
FROM emp
WHERE hiredate >= '1981-01-01' AND hiredate <= '1981-12-31';

-- BETWEEN A AND B
-- BETWEEN A AND B 주의사항
-- 1) BETWEEN을 사용할 때에는 B보다 A가 작아야 한다.
-- 2) A, B 둘다 '='이 있어야 한다.

-- 1981년도에 입사한 사람들을 출력 - (2) 
-- 가독성면에서 BETWEEN 사용이 더 좋다.
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '1981-01-01' AND '1981-12-31';

