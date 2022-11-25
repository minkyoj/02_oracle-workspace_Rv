SELECT * 
FROM EMPLOYEE;

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE;

-- JOB 테이블의 모든 컬럼 조회
SELECT *
FROM JOB;

-- 1. JOB테이블의 직급명만 조회
SELECT JOB_NAME
FROM JOB;

-- 2. DEPARTMENT 테이블의 모든 컬럼 조회
SELECT *
FROM DEPARTMENT;

-- 3. DEPARTMENT 테이블의 부서코드, 부서명만 조회
SELECT DEPT_ID, DEPT_TITLE
FROM DEPARTMENT;

-- 4. EMPLOYEE 테이블의 사원명, 이메일, 전화번호, 입사일, 급여 조회
SELECT EMP_NAME, EMAIL, PHONE, HIRE_DATE, SALARY
FROM EMPLOYEE;

-- EMPLOYEE 테이블의 사원명, 사원의 연봉(급여*12) 조회

SELECT EMP_NAME, SALARY * 12
FROM EMPLOYEE;

-- EMPLOYEE 테이블의 사원명 급여 보너스 조회

SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE;

-- EMPLOYEE 테이블의 사원명, 급여, 보너스, 연봉, 보너스가 포함된 연봉 (급여 + 보너스 * 급여)*12

SELECT EMP_NAME, SALARY, BONUS, SALARY*12, (SALARY + (BONUS * SALARY))*12
FROM EMPLOYEE;
--> 산술연산 과정 중 NULL값이 존재할 경우 산술연산한 결과값 마저도 무조건 NULL로 나옴

-- EMPLOYEE 테이블의 사원명, 입사일 조회
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE;

-- EMPLOYEE 테이블의 사원명, 입사일, 근무일수(오늘날짜 - 입사일)
-- * 오늘날짜 : SYSDATE
SELECT EMP_NAME, HIRE_DATE, SYSDATE - HIRE_DATE
FROM EMPLOYEE;
-- DATE - DATE : 뺄 수 있음. => 결과값은 맞긴함.(일단위로)
-- 단, 값이 지저분한 이유는 DATE형식은 년/월/일/시/분/초 단위로 시간정보까지도 관리를 하기 때문!
-- 함수 적용하면 깔끔한 결과  확인 가능 => 나중

------------------------------------------------------------

SELECT EMP_NAME 사원명, SALARY AS 급여, SALARY*12 "연봉(원)", ((SALARY + BONUS * SALARY) * 12) AS "보너스 포함 연봉(원)"
FROM EMPLOYEE;

-------------------------

-- EMPLOYEE 테이블의 사번, 사원명, 급여 조회
SELECT EMP_ID, EMP_NAME, SALARY, '원' AS "단위"
FROM EMPLOYEE;

