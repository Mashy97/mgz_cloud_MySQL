
-- 별칭 바꾸기 ( SELECT Alias )
-- column header 에 별칭을 부여 할 수 있다.
-- SELECT 절에 expression 을 사용할 때 도움이 된다.
-- 열 이름 바로 뒤에 기술한다. 또는 열이름과 별칭 사이에 AS를 사용할 수 있다.
-- 한글을 사용할 떄, 별칭에 공백이 있을 떄, 특수 문자를 사용할 떄, 대분자 소문자를 구분할 떄 "" 사용

-- Alias 예제
-- empno => 사원 번호, ename => 사원 이름 으로 별칭 변경하기.
SELECT empno "사원 번호" , ename "사원 이름"
FROM emp;

-- Alias 예제
-- empno => 사원 번호, ename => 사원 이름 으로 별칭 변경하기.
-- as를 사용하여 별칭 변경이 가능하다. ( 다른 사용자의 가독성을 위하여 사용하는 것을 추천 )
-- empno => 사원 번호, ename => 사원 이름 으로 별칭 변경하기.
SELECT empno as "사원 번호", ename as "사원 이름"
FROM emp;

-- Alias 예제
-- sal => Sal로 변경
-- 대문자, 소문자를 구별할 때에도 ""를 사용
SELECT ename as "Employee Name", sal AS "Sal" 
FROM emp;

