select mod(7,2), mod(5,3) from dual;

select lower('HELLO WORLD'), upper('HELLO WORLD'), INITCAP('HELLO world') from dual;

--concat|| 문자열 합치기
select 'he'||'llo' from dual;
select concat('he', 'llo') from dual;

--substr:부분문자열 추출
select substr('Hello NAMHee', 2,4) from dual;

--length: 문자열 개수
select length('Hello NamHee') from dual;

--ltrim:왼쪽 공배 삭제, rtrim(오른쪽 공백 삭제), trim(양쪽 공백 삭제)
select ltrim('     hello     ') as t1, rtrim('     hello     ') as t2, trim('     hello     ') as tr from dual;

--instr: 특정 문자열의 위치를 찾음
--instr(검색할 대상 문자열, 찾고 싶은 문자열, 검색을 시작할 위치, 몇 번째)
select instr(upper('wo 둘리 HELLO world'), 'WO', 1,2) from dual;

select instr(upper('wo 둘리 HELLO Donur'), 'WO', 1,2) from dual;

--months_between: 두 날짜의 월차 구함
select sysdate+60, sysdate from dual;
select months_between(sysdate, sysdate+60) from dual;
select months_between(sysdate+60, sysdate) from dual;

--add_months:월을 더할 때
select sysdate, add_months(sysdate, 2), add_months(sysdate, -2) from dual;

--next_day: 다음 요일의 날짜를 구함
--1:일요일 ~ 7일:토요일
select sysdate, next_day(sysdate,7) from dual;

--last_day:달의 마지막일을 구함
select sysdate, last_day(sysdate), last_day(to_date('2025-02-20', 'YYYY-mm-DD')) from dual;

--to_char:문자 변환
select 50, to_char(50) as c50 from dual;
select to_char(560, '$999,999,99'), to_char(560, '$000,000,00'), to_char(560,'999,000,00') from dual;
select to_char(sysdate, 'YYYY-mm-DD HH24:MI:SS') from dual;

--to_date:날짜형 변환
select to_date('2025-03-08 12:19:38', 'YYYY-MM-DD HH24:MI:SS')from dual;

--to_number:숫자형 변환
select to_number('50') from dual;
select '50' as n1, '50'+1 as n2, concat('50',1) as n21,to_number('50') as n3, to_number('50')+1 as n4 from dual;

--concat로 3개의 문자열 'a' 'b' 'c'를 합치기
select concat(concat('a','b'),'c') from dual;

--salary에서 10000을 빼고 음수일 때는 양수로 출력
select abs(salary-10000) from employees;
select sysdate-1/24 from dual;
select add_months(sysdate,1) as "한달후" from dual;
select add_months(sysdate,-1) as "한달전" from dual;
select add_months(sysdate,12) as "일년후" from dual;
select add_months(sysdate,-12) as "일년후" from dual;

--현재 시간의 요일
select to_char(sysdate, 'DAY') as "요일" from dual;

--그룹 함수 : 테이블의 그룹에 대한 집계 연산 수행하는 함수
--평균, 합계, 최댓값, 최솟값, 카운트 등

select * from employees;
select sum(salary)as "총급여" from employees;
select avg(salary)as "급여평균" from employees;
select count(salary)as "전체사원수" from employees;
select max(salary) as "최고급여금액" from employees;
select min(salary) as "최저급여금액" from employees;

select sum(salary) as "총급여", count(salary) as "전체사원수", 
        sum(salary)/count(salary) as a1, avg(salary) as "급여평균"
from employees;

select count(*), count(commission_pct) from employees;

select count(*), count(nvl(commission_pct,0)) from employees;

select avg(commission_pct), avg(nvl(commission_pct,0)) from employees;

select department_id, salary from employees order by department_id, salary;

--부서 번호가 90, 60, 100에 속한 사원의 급여 평균과 부서별 사원수
select department_id, avg(salary) as "급여평균", count(salary) as "사원수" from employees where department_id in(60, 90, 100) group by department_id order by department_id;

--부서 번호가 100보다 작은 데이터 중 부서번호로 그룹지어 그룹별 사원 급여 평균을 조회
select department_id, avg(salary) as "급여평균" from employees where department_id<100 group by department_id order by department_id;