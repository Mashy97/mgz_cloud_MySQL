-- 중복 행 제거 ( Duplicate Values )
-- 일반 Query는 ALL 을 사용하기 때문에 중복된 행이 출력된다.
-- DISTINCT 를 사용하면 중복된 행의 값을 제거한다.
-- DISTINCT 는 SELECT 바로 뒤에 기술한다.
-- DISTINCT 다음에 나타나는 column은 모두 DISTINCT 에 영향을 받는다.

-- SELECT ALL 확인
-- SELECT 앞에 아무것도 적지 않는다면 ALL이 자동으로 적용되어 있다.
SELECT job
FROM emp;

SELECT ALL job
FROM emp;
-- SELECT와 SELECT ALl의 결과가 같음

-- SELECT DISTINCT 확인
-- 중복 되어있는 job을 제거
SELECT DISTINCT job
FROM emp;
-- DISCTINT => 중복된 job들이 제거됨

