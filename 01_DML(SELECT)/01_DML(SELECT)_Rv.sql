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

-- < ���� ������ : || >

-- ���, �̸�, �޿��� �ϳ��� �÷����� ��ȸ
SELECT EMP_ID || EMP_NAME || SALARY
FROM EMPLOYEE;

-- �÷����� ���ͷ� ����
-- XXX�� ������ XXX�� �Դϴ�. => ��Ī : �޿�����
SELECT EMP_NAME || '�� ������' || SALARY || '�� �Դϴ�.' AS "�޿�����"
FROM EMPLOYEE;
-------------------------------

-- EMPLOYEE ���̺��� �����ڵ� ��ȸ
SELECT JOB_CODE
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� �����ڵ� ��ȸ
SELECT DISTINCT JOB_CODE
FROM EMPLOYEE; -- �ߺ� ���� �ż� 7�ุ ��ȸ��.

-- ������� � �μ��� �����ִ��� �ñ��ϴ�.
SELECT DISTINCT DEPT_CODE
FROM EMPLOYEE; -- NULL : ���� �μ���ġ �ȵȻ��

SELECT DISTINCT JOB_CODE, DEPT_CODE
FROM EMPLOYEE;

-- <WHERE ��>

-- EMPLOYEE ���̺��� �μ��ڵ尡 'D9'�� ����鸸 ��ȸ (�̶�, ��� �÷� ��ȸ)
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9';

-- EMPLOYEE ���̺��� �μ��ڵ尡 'D1'�� ������� �����, �޿�, �μ��ڵ常 ��ȸ
SELECT EMP_NAME, SALARY, DEPT_CODE 
FROM EMPLOYEE
WHERE DEPT_CODE = 'D1';

-- �μ��ڵ尡 D1�� �ƴ� ������� ���, �����, �μ��ڵ� ��ȸ
SELECT EMP_ID, EMP_NAME, DEPT_CODE
FROM EMPLOYEE
--WHERE DEPT_CODE != 'D1';
--WHERE DEPT_CODE ^= 'D1';
WHERE DEPT_CODE <> 'D1';

-- �޿��� 400���� �̻��� ������� �����, �μ��ڵ�, �޿� ��ȸ
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY >= 4000000;

SELECT * FROM EMPLOYEE;

-- EMPLOYEE���� ������(ENT_YN �÷����� 'N')�� ������� ���, �̸�, �Ի���
SELECT EMP_ID, EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE ENT_YN = 'N';
