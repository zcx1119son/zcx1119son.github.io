--사원의 이름과 해당 사원이 일하는 부서 이름 조회

select e1.first_name, d1.department_name
from employees e1, departments d1
where e1.department_id=d1.department_id
order by e1.employee_id;

create view view_ed as
select e1.first_name, d1.department_name
from employees e1, departments d1
where e1.department_id=d1.department_id
order by e1.employee_id

select * from view_ed;
commit;

--first_name, last_name, => full_name, salary, job_title, city, country_name
select concat(e.first_name, e.last_name)"fullname", e.salary, d.department_name, j.job_title, l.city, c.country_name
from employees e, departments d, jobs j, locations l, countries c
where e.department_id=d.department_id and e.job_id=j.job_id and d.location_id=l.location_id
and c.country_id=l.country_id;

create or replace view veiw_ed as
select concat(e.first_name, e.last_name)"fullname", e.salary, d.department_name, j.job_title, l.city, c.country_name
from employees e, departments d, jobs j, locations l, countries c
where e.department_id=d.department_id and e.job_id=j.job_id and d.location_id=l.location_id
and c.country_id=l.country_id;

--sequence 시퀸스
--고유한 숫자 값을 자동으로 생성하는 데이터베이스 객체
--주로 pk 또는 고유 식별자를 생성하는 데 사용
--항상 고유값
--증가 또는 감소 가능
--순환 옵션: 최대값 도달 후 처음부터 다시 시작
--.nextval: sequence가 가깆고 있는 현재 카운트수에서 하나를 증가시켜서 반납
--.currval: 현재 시퀸스가 가지고 있는 카운트 수를 리턴

create SEQUENCE testsequence;

select testsequence.nextval from dual;
select testsequence.currval from dual;

drop SEQUENCE testsequence;

create sequence Dept_Seq
INCREMENT by 1
nocache
NOCYCLE;

--2000년에 입사해서 최고임금이 10000이 넘는 직종에서 일하고 있는 사원을 조회
select * 
from employees e1, jobs j1
where e1.job_id=j1.job_id 
and e1.hire_date>='2000-01-01' and 10000 < j1.max_salary;

--select first_name, job_id, salary,hire_date
--from employees
--where to_char(hire_date,'yyyy')=2000 and job_id in(
--                                                    select job_id
--                                                    from jobs
--                                                    where max_salary>1000
--                                                    );

--매니저의 이름이 michael인 부서를 조회
select d1.department_id,d1.department_name
from departments d1, employees e1
where d1.department_id=e1.department_id
and e1.first_name='Michael';

--select * 
--from departments 
--where manager_id in(
--                    select employee_id
--                    from employees 
--                    where upper(first_name) like '%MICHAEL%'
--                    ); 

--직종의 최저임금이 사번 105번 사원의 임금보다 적은 직종을 조회
select j1.job_title
from jobs j1
where j1.min_salary < any(
                            select e1.salary
                            from employees e1
                            where e1.employee_id='105'
                            );

--메일주소에 밑줄표시가 있는 사원을 조회
select *
from employees
where email like '%"\_%' escape '\';

--사원 이름과 해당 사원의 매니저 이름을 조회
select e2.first_name, e1.first_name
from employees e1, employees e2
where e1.employee_id=e2.manager_id;

--30번 부서에 입사한 사원의 수를 연도별로 조회
select to_char(hire_date, 'yyyy'), count(employee_id)
from employees
where department_id=30
group by to_char(hire_date, 'yyyy');

--각 부서의 직종별로 사원들의 총 급여합
select department_id, job_id, sum(salary)
from employees
group by department_id, job_id;

--업무별 최저임금과 최고 임금 사이의 급여을 가지는 사원의 이름과 업무명을 조회
select e1.first_name, j1.job_title
from employees e1, jobs j1
where e1.job_id=j1.job_id
and e1.salary between j1.min_salary and j1.max_salary;

--커미션을 받은 사원과 받지 않은 사원이 각각 몇명인지 조회
select distinct(
        select count(employee_id)
        from employees 
        where commission_pct is not null
        )"커미션을 받은 사원",
        (
        select count(employee_id)
        from employees 
        where commission_pct is null
        )"커미션을 받지 않은 사원"
from employees;                    

--2월 28일 입사한 사원의 이름, 업무명, 부서명을 조회
select e1.first_name, job_id, d1.department_name
from employees e1, departments d1
where e1.department_id=d1.department_id
and hire_date like '%/02/28/%';

--최저임금이 10000보다 높은 업무의 세부사항을 조회
select *
from jobs
where min_salary>10000;

--2002년~2005년 사이에 입사한 사원의 이름과 입사일을 조회
select first_name, hire_date
from employees
where hire_date between '2003-01-01' and '2004-12-31';

--IT Programmer이거나 sales man인 사원의 이름가 입사일을 조회
select e1.first_name, e1.hire_date
from employees e1, jobs j1 
where e1.job_id=j1.job_id
and (j1.job_title='Programmer' or j1.job_title='Sales Manager');

--2008년 1월 1일 이후에 입사한 사원을 조회
select *
from employees
where hire_date>='2008-01-01';

--사번이 150, 160인 사원을 조회
select *
from employees
where employee_id in(150, 160);

--임금이 10000보다 적은 사원의 이름, 임금, 커미션, 입사일 조회
select first_name, salary, commission_pct, hire_date
from employees
where salary < 10000;

--최고 임금이 10000~20000인 업무의 업무명, 최저 임금과 최고 임금의 차액을 조회
select abs(max_salary - min_salary)"최저임금과최금임금의차액"
from jobs
where max_salary between 10000 and 20000;

--사원 이름과 임금을 출력하되 임금을 1000단위로 조회
select first_name, floor(salary/ 1000)"임금1000단위"
from employees;

--select first_name, salary, round(salary, -3)
--from employees;

--업무명을 기준으로 하여 내림차순으로 업무 세부사항을 조회
select *
from jobs
order by job_title desc;

--성이나 이름이 S로 시작하는 사원을 조회
select *
from employees
where first_name like 'S%' or last_name like 'S%';

--5월에 입사한 사원을 조회
select *
from employees
where hire_date like '%/05/%';

--커미션을 받지 않고, 임금이 5000~ 10000이면서 30번 부서에 소속된 사원을 조회
select *
from employees
where commission_pct is null and (salary between 5000 and 10000) and department_id=30;

--사원들의 이름과 첫 월급날을 조회 매월 1일이 월급날
select first_name, last_day(hire_date)+numtodsinterval(1,'day')"첫월급날"
from employees;

--사원의 이름과 근무연수를 조회
select first_name, floor(trunc(months_between(current_date, hire_date))/12)"근무연수"
from employees;

--fllor((sysdate-hire_date)/365)

--2001년에 입사한 사원의 이름을 조회
select first_name
from employees
where extract(year from hire_date)='2001';

--첫글자는 대문자로, 나머지 글자는 소문자로 변환하여 성과 이름을 조회 initcap 사용
select initcap(first_name)"성", initcap(last_name)"이름"
from employees;

--업무명의 첫 단어를 조회
select substr(job_id,1,1)
from employees;

--select job_title, substr(job_title, 1, instr(job_title || ' ', ' ')-1)
--from jobs;

--성의 3번째 문자 이후에 'b'가 포함된 사원의 이름의 길이를 조회
select length(first_name)
from employees
where first_name like '__%b%';

--instr(Last_name, 'B')>3

--이름과 이메일주소가 대소문자 상관없이 같은 사원의 이름을 대문자로, 이메일주소는 소문자로 조회
select upper(first_name), lower(email)
from employees
where initcap(first_name) = initcap(email);

--올해 입사한 사원을 조회
select *
from employees
where extract(year from hire_date)=EXTRACT(year from current_date);

--현재 날짜와 2011년 1월 1일이 며칠 차이인지 조회
select trunc(sysdate-to_date('2011-01-01', 'yy-mm-dd'))"현재날짜차"
from dual;

--올해 각 달마다 몇명의 사원이 입사하였는지 조회
select extract(month from hire_date), count(employee_id)
from employees
group by extract(month from hire_date)
order by extract(month from hire_date);

--매니저 사번과 그 매니저가 총 몇명을 관리하는지 조회
select e2.manager_id, count(e1.employee_id)
from employees e1, employees e2
where e1.employee_id=e2.manager_id
group by e2.manager_id;

--select manager_id, count(*)
--from employees
--group by manager_Id;

--사원 사번과 이전 업무를 종료한 날을 조회
select employee_id, end_date
from job_history;

--입사일이 n월'15'이후인 사원의 수를 조회
select count(employee_id)
from employees
where extract(day from hire_date)>15;

--국가번호와 해당 국가에 있는 도시들의 개수를 조회
select country_id, count(*)
from locations
group by country_id;

--각 부서별로 커미셜을 받은 사원들의 평균임금을 조회
select department_id, avg(salary)
from employees
where commission_pct is not null
group by department_id;

--업무별로 업무명, 사원의 수, 임금의 합, 최고임금과 최저임금의 차액을 조회
select job_id, count(employee_id), sum(salary), trunc(max(salary)-min(salary))"최고임금 최저임금 차"
from employees
group by job_id;

--평균임금이 10000을 넘는 업무의 업무 id와 평균 임금을 조회
select employee_id, avg(salary)
from employees
group by employee_id
having avg(salary)>10000;

--10명이 넘는 사원이 입사한 연도를 조회
select extract(year from hire_date)
from employees
group by extract(year from hire_date)
having count(employee_id)>10;

--커미션을 받은 사원이 5명 이상인 부서를 조회
select department_id
from employees
where commission_pct is not null
group by department_id
having count(employee_id)>=5;

--과거에 하나가 넘는 업무를 하였던 사원의 사번을 조회
select employee_id
from job_history
group by employee_id
having count(*)>1;

--3명이 넘은 사원이 100일이 넘게 근무한 업무id를 조회
select job_id
from employees
where trunc(current_date-to_date(hire_date))>100
group by job_id
having count(employee_id)>3;

--부서번호, 연도, 연도별 입사한 사원의 수를 조인하여 조회
select d1.department_id, extract(year from e1.hire_date), count(e1.employee_id) 
from employees e1, departments d1
where e1.department_id = d1.department_id
group by d1.department_id, extract(year from e1.hire_date);

--임의의 매니저가 5명 이상의 사원을 관리하고 있는 부서를 조회
select distinct department_id
from employees
group by department_id, manager_id
having count(employee_id)>=5;

--사원 115번 사원의 현재 임금이 6000미만일 경우 8000으로 변경
update employees 
set salary=8000
where employee_id=115 and salary<6000;

--20번 부서를 삭제
delete from employees 
where department_no=20;

--사번 110번 사원이 10번 부서에 속해있고 현재 업무 id가 IT로 시작하지 않으면 해당 사원의 업무를 it_prog로 변경
update employees
set job_id='IT_PROG'
where employee_id=110 and department_id=10 and job_id not like 'IT%';

commit;
--부서 테이블에 매니저ID가 120이고 장소id는 도쿄 시의 임의의 장소로 하는 행을 추가
insert into departments
        select distinct emp.department_id, dep.department_name, emp.manager_id, (
                                                                                    select loc.location_id
                                                                                    from locations loc
                                                                                    where city='Tokyo'
                                                                                    )"도쿄"
        from employees emp, departments dep, locations loc
        where emp.department_id=dep.department_id and dep.location_id=loc.location_id
        and emp.manager_id=120;
        
--부서 이름과 해당 부서의 사원들 수를 조회
select dep.department_name, count(emp.employee_id)
from departments dep, employees emp
where dep.department_id=emp.department_id
group by dep.department_name;

--업무기록에서 30번 부서의 모든 업무에 대하여 업무명, 사번, 시작일과 종료일 간 근무일수를 조회
select j1.job_id, emp.employee_id, trunc(end_date-start_date)
from employees emp, job_history j1
where emp.employee_id=j1.employee_id
and emp.department_id=30;

--부서명과 매니저 이름을 조회
select dep.department_name, emp.first_name
from employees emp, departments dep
where dep.manager_id=emp.employee_id;

--부서명과 매니저 이름, 도시를 조회
select dep.department_name, emp.first_name, loc.city
from employees emp, departments dep, locations loc
where dep.manager_id=emp.employee_id and dep.location_id=loc.location_id;

--국가명, 도시, 부서명을 조회
select con.country_name, loc.city, dep.department_name
from countries con, locations loc, departments dep
where con.country_id=loc.country_id and loc.location_id=dep.location_id;

--2000~2005년 사이의 모든 업무에 대하여 업무명, 부서명, 사원의 성, 업무 시작일을 조회
select emp.job_id, dep.department_name, emp.first_name, emp.hire_date
from employees emp, departments dep
where emp.department_id=dep.department_id
and extract(year from hire_date)>'2000' and extract(year from emp.hire_date)<'2005';

--현재 임금이 15000 이상인 사원이 지금까지 수행했던 업무들을 조회
select his.job_id
from employees emp, job_history his
where emp.employee_id=his.employee_id
and emp.salary>=15000;

--5년 이상 근무한 모든 매니저들의 부서명, 매니저 이름, 매니저의 임금을 조회
select dep.department_name, emp.first_name, emp.salary
from employees emp, departments dep
where emp.manager_id=dep.department_id
and months_between(current_date, hire_date)/12>=5;

--(ysdate-hiire_date)/365

--자신의 매니저보다 먼저 입사한 사원 이름을 조회
select emp1.first_name
from employees emp1, employees emp2
where emp1.employee_id=emp2.manager_id
and emp1.hire_date>emp2.hire_date
group by emp1.first_name;

--select first_name
--from employees e1 join employees e2 
--on(e1.manager_id=e2.employee_id)
--where e1.hire_date<e2.hire_date;

--사원이 6개월 미만으로 근무한 업무에 대하여 사원 이름, 업무명을 조회
select first_name, job_title
from employees emp, jobs job, job_history his
where emp.job_id=job.job_id and emp.employee_id=his.employee_id
and months_between(end_date, start_date);

--최고임금이 10000이넘는 부서의 세부사항을 조회
select *
from departments 
where department_id in(
                        select department_id
                        from employees
                        group by department_id
                        having max(salary)>10000
                        );
                        
--Smith에 의해 관리되는 부서의 세부조항을 조회
select *
from employees emp, departments dep
where emp.department_id=dep.department_id
and emp.first_name='Smith';

--과거에 다른 어떠한 업무도 수행하지 않은 사원을 조회
select *
from employees
where employee_id not in(
                    select employee_id
                    from job_history
                    );
                    
--과거에 다른 업무를 수행했던 사원들 중에 최고 임금이 10000이상인 사원이 속한 부서의 세부사항을 조회
select *
from departments
where department_id in(
                       select department_id
                       from employees
                       where employee_id in(
                                            select employee_id
                                            from job_history
                                            )
                        group by department_id
                        having max(salary) >=10000                     
                        );
            
--과거에 IT Programmer로 일했던 사원들의 현재 업무
select *
from employees
where employee_id in(
                        select employee_id
                        from job_history
                        where job_id='IT Programmer'
                        );