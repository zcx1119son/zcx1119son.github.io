--사원 이름의 길이가 6이상인 사원의 수를 조회
select count(ename) 
from emp 
where length(ename)>=6;

--사원의 이름을 소문자로 출력
select lower(ename) 
from emp;

--다음날 날짜를 출력
select sysdate+1 
from dual;

--사원의 근무년수, 월수, 일수를 조회
select trunc((months_between(sysdate, hiredate))/12) as "근무연수", 
       trunc(months_between(sysdate,hiredate)) as "근무월수",
       trunc(sysdate-hiredate)+1 as "근무일수" 
from emp;
        
--사원들의 입사일로부터 1년 6개월이 지난 날을 조회
select hiredate, add_months(hiredate,18)as "입사일+1년 6개월" 
from emp; 

--입사일 달의 마지막 날을 조회
select hiredate, last_day(hiredate) as"입사일 마지막 날" 
from emp;

--오늘부터 3개월 후 돌아오는 토요일 날짜를 조회
select sysdate, next_day(add_months(sysdate, 3),7 )
from dual;

--현재 시간을 'xxxx-xx-xx-xx:xx:xx:xx' 문자열로 조회
select to_char(sysdate, 'YYYY-MM-DD HH:MI:SS') 
from dual;

--'2020-06-07 22:12:11' 문자열 데잍를 시간 데이터로 만들어 주세요.
select to_date('2020-6-7 22:12:11', 'YYYY-MM-DD HH24:MI:SS') 
from dual;

--20번 부서의 커미션을 받은 사원의 수를 조회
select deptno, count(deptno) as "사원의수" 
from emp 
where comm is not null and deptno=20 
group by deptno;

--job이 CLERK인 사원의 평균 급여를 조회
select job, avg(sal) as"평균급여" 
from emp where job='CLERK' 
group by job;

--사원들이 받은 커미션의 총합을 조회
select sum(comm)as"커미션받은 사원들의 총합" 
from emp;

--사원들이 받은 최대 최소 급여를 조회
select max(sal)as"최대급여", min(sal)as"최소급여" 
from emp;

--부서별 급여 평균을 조회
select deptno, avg(sal)as"평균급여" 
from emp 
group by deptno 
order by deptno;

--급여별 커미션을 받은 사원의 수를 조회
select sal, count(sal)as"평균급여" 
from emp 
where comm is not null 
group by sal 
order by sal;

--급여가 2000이상인 부서별 사원 수를 조회
select deptno, count(deptno)as"사원수" 
from emp 
where sal>=2000 
group by deptno 
order by deptno;

--부서별 평균 급여가 1700 이상인 부서번호와 평균 급여를 조회
select deptno, avg(sal)as"평균급여" 
from emp 
group by deptno
having avg(sal)>=1700
order by deptno;  

--1200이상의 급여를 받은 사원들의 부서별 평균 급여가 1900이상인 부서번호와 평균 급여를 조회
select deptno, avg(sal)as"평균급여" 
from emp 
where sal>=1200 
group by deptno 
order by deptno;

--직책이 PRESIDENT가 아닌 사원에 대한 부서별 급여 합이 6000이상인 부서와 급여합을 조회
select deptno, sum(sal)as"급여합" 
from emp 
where not job='PRESIDENT' 
group by deptno 
having sum(sal)>=6000 
order by deptno;

--20과 30부서에서 최대 급여를 받는 사람의 최대 급여를 조회
select deptno, max(sal)as"최대급여" 
from emp 
where deptno in(20,30) 
group by deptno 
order by deptno;