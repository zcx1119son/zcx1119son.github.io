--모든 부서 정보 조회
select * from dept;

--모든 사원 정보 조회
select * from emp;

--모든 사원의 이름을 조회
select ename from emp;

--회사의 부서번호를 조회
select deptno from dept;

--사원의 관리자, 월급, 커미션 조회
select sal, comm from emp;

--부서의 이름과 지역 조회
select deptno, loc from dept;

--연봉등급과 최저 금액을 조회
select grade, losal from salgrade;

--회사에 존재하는 사원의 작업 조회
select job from emp;

--사원이 존재하는 부서 번호를 중복없이 조회
select DISTINCT deptno from dept;

--관리하는 사원이 존재하는 관리자 아이디를 중복없이 조회
select distinct mgr from emp where mgr is NOT null;

--연봉 등급이 3일 때 받을 수 있는 최대, 최소 금액을 조회
select hisal, losal from salgrade where grade=3;

--연봉이 2100  이상인 사원의 정보를 조회
select * from emp where sal>2100;

--부서가 20인 곳에서 일하는 사원의 정보 조회
select * from emp where deptno=20;

--관리자가 없는 사원의 정보 조회
select * from emp where mgr is null;

--커미션이 없는 사원의 정보 조회
select * from emp where comm is null;

--사원의 연봉이 50 증가한 형태를 조회
select sal+50 from emp;

--사원의 현 급여보다 10% 증가한 형태를 조회
select sal*1.1 from emp;

--사원의 급여를 50증가한 형태로 컬럼명을 upgradeSalary로 조회
select sal+50 as upgradeSalary from emp;

--xxx 사번의 사원은 관리자가 xxx사번입니다의 형태로 결과를 출력
select empno||'사번의 사원은 관리자가 '||mgr||'사번 입니다.' from emp;

--급여가 800보다 같거나 많고 1000보다 같거나 작은 사원 정보를 조회
select * from emp where sal>=800 and sal<=1000;

--부서번호가 20이면서 직업이 manager인 사원 정보 조회
select * from emp where deptno=20 and job='MANAGER';

--직업이 manager가 아닌 사원 정보를 조회
select * from emp where not job='MANAGER';

--커미션이 0,500,1400와 같은 사원 정보를 조회
select * from emp where comm in(0,500,1400);

--급여가 8000보다 같거나 많고 10000보단 같거나 작은 사원 정보를 조회
select * from emp where sal BETWEEN 8000 and 10000;

--급여가 700보다 작거나 1000보다 큰 사원 정보를 조회
select * from emp where sal<700 or sal>1000;

--사원의 이름이 SCOTT 인 사원 정보를 조회
select * from emp where ename='SCOTT';

-- 사원 이름이 'A' 로 시작하는 사원 정보를 조회
select * from emp where ename like 'A%';

-- 이름에 S 가 들어가는 사원 정보를 조회
select * from emp where ename like '%S%';

-- 이름에 L이 들어가지 않은 사원 정보를 조회
select * from emp where ename not like'%L%'; 

-- 이름에 세번째 문자가 I 인 사원 정보를 조회
select * from emp where ename like '__I%';

-- 사원의 이름이 E~G로 시작하는 사원정보를 조회
select * from emp where ename like 'E%' or ename like 'F%' or ename like 'G%';

-- 사원의 입사일이 2004년 5월 20일 ~ 2007년 10월 10일까지의 사원 정보를 조회
select * from emp where hiredate >='2004-05-20' and hiredate<='2007-10-10';

-- 입사일이 83년 이후이거나 job 이 SLAESAMN 인 모든 사원 정보를 조회
select * from emp where hiredate >='1983-01-01' or job='SALESMAN';

-- 20번 부서가 아닌 모든 사원 정보를 조회
select * from dept where deptno!=20;

-- 급여가 600에서 3000사이가 아닌 사원의 정보를 조회
select * from emp where sal not BETWEEN 600 and 3000;

-- 상사가 없는 사원 정보 조회
select * from emp where mgr is null;

-- 매니저가 7782, 2902, 2698, 7566 인 사원 정보를 조회
select * from emp where mgr in(7782, 2902, 2698, 7566);

-- 부서번호가 40,10,20이 아닌 사원 정보를 조회
select * from emp where deptno not in(40,10,20);

-- 사원 이름이 5글자인 사원 정보를 조회
select * from emp where ename like '_____';

-- 직업이 N으로 끝나는 사원 정보를 조회
select * from emp where ename like '%N';

-- 사원 이름에 A가 들어간 사원 정보를 조회
select * from emp where ename like '%A%';

-- 이름이 S로 시작하는 사원 정보를 조회
select * from emp where ename like 'S%';

-- 관리자 번호를 내림차순으로 정렬하여 사원 정보 조회
select * from emp order by mgr desc;

-- 급여가 많은 순으로 사원 정보를 조회
select * from emp order by sal asc;

-- 사번, 이름, 관리자 번호, 급여 정보가 출력되고 관리자 번호를 오름차순, 부서번호는 오름차순으로 정렬하여 사원정보가 조회
select empno, ename, mgr, sal from emp order by mgr asc, deptno asc;

-- 사원 정보를 부서는 오름차순으로 정렬하고 같은 부서 사원은 사원번호로 오름차순으로 정렬
select * from emp order by deptno asc, empno asc;

-- 직급이 'SALESMAN' 이면 15%, 'MANAGER'이면 10%, 이외의 직종은 5% 급여를 인상하여 사원 정보를 조회
update emp set sal=sal*1.15 where job='SALESMAN'; 

update emp set sal=sal*1.1 where job='MANAGER'; 

update emp set sal=sal*1.05 where not (job='SALESMAN' or job='MANAGER'); 
select * from emp;
--select *, decode(job, 'SALESMAN', sal*1.15, 'MANAGER', sal*1.1, sal*1.05) from emp;