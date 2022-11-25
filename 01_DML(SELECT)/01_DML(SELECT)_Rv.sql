SELECT * 
FROM EMPLOYEE;

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE;

-- JOB ���̺��� ��� �÷� ��ȸ
SELECT *
FROM JOB;

-- 1. JOB���̺��� ���޸� ��ȸ
SELECT JOB_NAME
FROM JOB;

-- 2. DEPARTMENT ���̺��� ��� �÷� ��ȸ
SELECT *
FROM DEPARTMENT;

-- 3. DEPARTMENT ���̺��� �μ��ڵ�, �μ��� ��ȸ
SELECT DEPT_ID, DEPT_TITLE
FROM DEPARTMENT;

-- 4. EMPLOYEE ���̺��� �����, �̸���, ��ȭ��ȣ, �Ի���, �޿� ��ȸ
SELECT EMP_NAME, EMAIL, PHONE, HIRE_DATE, SALARY
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� �����, ����� ����(�޿�*12) ��ȸ

SELECT EMP_NAME, SALARY * 12
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� ����� �޿� ���ʽ� ��ȸ

SELECT EMP_NAME, SALARY, BONUS
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� �����, �޿�, ���ʽ�, ����, ���ʽ��� ���Ե� ���� (�޿� + ���ʽ� * �޿�)*12

SELECT EMP_NAME, SALARY, BONUS, SALARY*12, (SALARY + (BONUS * SALARY))*12
FROM EMPLOYEE;
--> ������� ���� �� NULL���� ������ ��� ��������� ����� ������ ������ NULL�� ����

-- EMPLOYEE ���̺��� �����, �Ի��� ��ȸ
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� �����, �Ի���, �ٹ��ϼ�(���ó�¥ - �Ի���)
-- * ���ó�¥ : SYSDATE
SELECT EMP_NAME, HIRE_DATE, SYSDATE - HIRE_DATE
FROM EMPLOYEE;
-- DATE - DATE : �� �� ����. => ������� �±���.(�ϴ�����)
-- ��, ���� �������� ������ DATE������ ��/��/��/��/��/�� ������ �ð����������� ������ �ϱ� ����!
-- �Լ� �����ϸ� ����� ���  Ȯ�� ���� => ����

------------------------------------------------------------

SELECT EMP_NAME �����, SALARY AS �޿�, SALARY*12 "����(��)", ((SALARY + BONUS * SALARY) * 12) AS "���ʽ� ���� ����(��)"
FROM EMPLOYEE;

-------------------------

-- EMPLOYEE ���̺��� ���, �����, �޿� ��ȸ
SELECT EMP_ID, EMP_NAME, SALARY, '��' AS "����"
FROM EMPLOYEE;

