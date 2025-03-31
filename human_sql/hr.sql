--salary : 월 급여
-- 사원의 급여와 커미션 비율을 이용해서 사원의 1년 동안 받은 전체 금액을 조회
select salary, COMMISSION_PCT, salary*12+(salary*12*nvl(COMMISSION_PCT,0)) as year_salary
from employees
order by employee_id;

--커미션을 받으면 yes, 없으면 no라고 나온느 isCommition 칼럼을 만들어 보자
select nvl2(COMMISSION_PCT, 'yes', 'no') as isCommition
from employees;

select decode(commission_pct, null, 'no', 'yes') as isCommition
from employees;
select case when commission_pct=null then 'no'
            else 'yes' end as isCommition
from employees;
select employee_id, first_name, job_id, decode(job_id, 'IT_PROG', 'developer',
                                                      'SA_REP', 'Sales Representative',
                                                       'Other Job') as job_title
from employees
order by job_id, employee_id;
select case when job_id ='IT_PROG' then 'developer'
            when job_id='SA_REP' then 'Sales Representative'
            else 'Other Job' end as job_title
from employees;

select department_name, decode(location_id, 1500, 'SanFrancisco',
                                            1700, 'Seattle',
                                            2400, 'London',
                                            'ETC CITY') as department_city
from departments;

select case when commission_pct>0.2 then '상'
            when commission_pct<=0.2 and commission_pct>0.1 then '중'
            when commission_pct is null then null
            else '선택받지 못한 데이터' end as pct
from employees;