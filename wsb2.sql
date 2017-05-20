create table tabela1(
kolumna1 integer primary key,
kolumna2 varchar2(20) not null unique);

create table tabela2(
kolumna1 integer,
kolumna2 varchar2(20) not null,
constraint aaa primary key (kolumna1),
constraint bbb unique (kolumna2));

create table tabela3(
kolumna1 integer,
constraint ccc FOREIGN key (kolumna1) references tabela2 (kolumna1));

create user genowefa identified by genowefa1;
alter user genowega identified by genowefa123;

alter table tabela3 add (kolumna2 varchar2(20),
constraint ddd unique (kolumna1));

alter table tabela2 drop column kolumna2;

drop user genowefa cascade;
drop table tabela1;
drop table tabela2;
drop table tabela3;
--W order by nie trzeba podawać nazwy wystarczy cyfry odnoszące się do pierwszego selecta, w tym wypadku 1 to salary, a 2 to last_name
select SALARY,LAST_NAME from HR.EMPLOYEES where SALARY BETWEEN 1000 and 6000 order by 1 ASC,2 asc ;

SELECT * FROM HR.EMPLOYEES;
SELECT COUNT(*) as Wynik FROM HR.EMPLOYEES;
select max(salary) FROM HR.EMPLOYEES;
SELECT AVG(salary),min(salary) FROM HR.EMPLOYEES;

SELECT job_id, min(salary), max(salary), avg(salary), sum(salary) 
from HR.EMPLOYEES 
GROUP BY JOB_ID
--HAVING sum(salary) > 4500
order by 5 DESC;


SELECT * FROM HR.JOBS;

INSERT INTO HR.JOBS
(JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY)
VALUES('IT_DEV','okres próbny', '1500','4500');

UPDATE HR.JOBS 
SET JOB_TITLE ='okres próbny w IT'
where JOB_ID = 'IT_DEV';

update HR.JOBS
SET MIN_SALARY = (MIN_SALARY - 20);


DELETE FROM HR.JOBS 
WHERE JOB_ID = 'IT_DEV';

SELECT * FROM HR.EMPLOYEES;
SELECT * FROM HR.DEPARTMENTS;

SELECT first_name, last_name,department_id
FROM HR.EMPLOYEES
WHERE LAST_NAME IN ('Grant','Smith');

SELECT e.first_name, e.last_name,e.department_id,d.department_name
FROM HR.EMPLOYEES e 
LEFT JOIN HR.DEPARTMENTS d on--left join wszystko co w lewym hr.employees + co prawy, hr.departments
e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE LAST_NAME IN ('Grant','Smith');

--dla developera za mało, a zatem np. oracle database 12c i sql programowanie
--dla admina bazy danych np. oracle 12 rozwiązania.

