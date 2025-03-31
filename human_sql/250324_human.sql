create table Board(
                    B_ID number(5) primary key,
                    B_name varchar2(20) not null,
                    B_Pwd varchar2(20) not null,
                    B_Email varchar(20) not null,
                    B_Title varchar2(80) not null,
                    B_Content varchar2(2000) not null,
                    B_Date date default sysdate,
                    B_Hit number(5) DEFAULT 0,
                    B_Ip varchar2(15)
                    );

Alter table board 
add (b_ref number(5) default 0,
    b_step  number(5) default 0,
    b_order number(5) default 0
    );

Alter table Board
modify (b_title varchar(100));

alter table board
drop COLUMN b_ip;

alter table ec_member
add(
    constraint member_ck check(
                                userid between 'a' and 'z'
                                )
    );

insert into ec_member(userid, passwd, name, regist_no, telephone)
values('srlee', '1234', '이소라', '821001-2******', '010-1234-1234');

--userid가 영어 소문자로만 가능해서 체크 제약조건 위배됨
insert into ec_member(userid, passwd, name, regist_no, telephone)
values('20park', '1234', '박영수', '810604-1******', '010-2345-2345');

alter table board rename COLUMN b_step to b_level;


alter table ec_order drop primary key;

alter table board
modify (b_email VARCHAR2(20) constraint board_uk unique);

rename board to free_board;

drop table ec_basket;

select dept_id, dept_name, dept_tel
from department;

select DISTINCT dept_id
from professor;

select unique dept_id as"소속학과"
from professor;

select course_id as"과목코드", title as"과목명", c_number as"학점수" 
from course;

select course_id as"과목코드", title as"과목명", c_number as"학점수"
from course
order by title;

select course_id, title as"과목명", c_number as"학점", c_number * 30000 + nvL(course_fees,0)as"과목별 수강료"
from course
order by 4 desc, course_id asc;

select professor_id, name, position, dept_id 
from professor
where dept_id='컴공';

select course_id, title, c_number, course_fees
from course
where course_fees >=30000
order by 4 desc;

select dept_id, year, name
from student
where dept_id='컴공' and year='2';

select dept_id, year, name
from student
where (dept_id, year)=(('컴공', '2'));

select dept_id || '학과' || name || ' ' || position ||'의 전화번호는 ' || telephone || '이다.'
from professor
order by dept_id;

select dept_id, year, student_id, name
from student
where name like '이%';

select dept_id, year, student_id, name
from student
where name like '_정_';

select dept_id, year, student_id, name
from student
where name not like '이%' and name not like '김%';

select dept_id, professor_id, name position
from professor
where dept_id in('컴공', '정통')
order by dept_id;

select student_id, course_id, score
from sg_scores
where score between 90 and 94
order by 3 desc;

select student_id, course_id, score
from sg_scores
where score not between 60 and 100
order by 3 desc;

select *
from course
where course_fees is null
order by title;

insert into t_course(course_id, title, c_number, professor_id, course_fees)
values('L1061', 'ERP실무', 3,'p12', 50000);

insert into t_course
values('L1062', '그룹웨어구축', 3, 'P13', 40000);

insert into sg_scores(student_id, course_id, score, score_assigned)
values('B1701', 'L1051', 85, '18/06/28');

insert into course(course_id, title, c_number, professor_id, course_fees)
values('L3041', 'JQUERY', 3, 'P31', 30000);

insert into course(course_id, title, c_number, professor_id, course_fees)
values('L1031', 'SQL', 3,'P12', 30000);

insert into course(course_id, title, c_number, professor_id, course_fees)
values(null, '정보보안',3,'P22', 30000);

insert into professor(professor_id, name, position, dept_id, telephone, email, mgr)
values('P14', '조성우', '조교수', '컴퓨터', '765-4114', null, 'P11');

insert into student(dept_id, year, student_id, name, id_number, email)
values('컴공', '2', 'C1731', '박은혜', '011109-4******', 'c1731@cyber.as.kr');

insert into professor(professor_id, name, position, dept_id, telephone)
values('P91', 'Bob Miner', '시간강사', '컴공', '765-4119');

insert into sg_scores(student_id, course_id, score, score_assigned)
values('C1731', 'L1021', 97, '18/06/28');

update department
set dept_name='컴퓨터정보계열';

select * from department;

rollback;

update course
set title='델파이'
where course_id='L1042';

update sg_scores
set score=85
where student_id='C1601' and course_id='L1021';

select course_id, student_id, score, score_assigned "수강신청"
from sg_scores
where course_id='L2061';

update sg_scores
set score=87, score_assigned='2018/12/26'
where course_id='L2061' and student_id='C1701';

update sg_scores
set score=95, score_assigned='2018/12/26'
where course_id='L2061' and student_id='C1702';

update sg_scores
set score=99, score_assigned ='2018/12/26'
where course_id='L2061' and student_id='C1601';

update sg_scores
set score=93, score_assigned ='2018/12/26'
where course_id='L2061' and student_id='C1602';

commit;

select course_id, student_id, score, score_assigned "성적취득"
from sg_scores
where score_assigned='2018/12/26';

delete from course where course_id='L0012';

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where company in('SAMSUNG', 'Samsung', 'samsung')
order by 2;

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where product_name='프린터' and unit_price>=50000
order by 4 desc;

select name, regist_no, telephone, timestamp
from ec_member
where name like '정%';

select order_no, product_code, csel, cmoney, cdate
from ec_order
where csel in('현금입금', '계좌이체')
order by 3,5;

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where company not in('SAMSUNG', 'Samsung', 'samsung', 'LG전자')
order by 6,4;

select name, regist_no, telephone, address
from ec_member 
where address not like '서울%' and address not like '대구%'
order by 4;

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where left_qty<10
order by 2;

select name, regist_no, telephone, adderess
from ec_member
where telephone like '%666%'
order by 1;

select name, regist_no, telephone, address, timestamp
from ec_member
where timestamp > '2018/05/01'
order by 5;

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where company like 'LG%' and Unit_price>=800000
order by 1;

select name, regist_no, telephone, address, timestamp
from ec_member
where timestamp>'2018/05/01'
order by 5;

select product_code, product_name, standard, unit_price, left_qty, company
from ec_product
where company is null
order by 1;

select order_no, order_id, product_code, order_qty, cmoney
from ec_order
where product_code ='CM01' and order_qty>1
order by 2;

select name, regist_no, telephone, address
from ec_member
where name not between '고' and '쵸'
order by 1;

select course_id, student_id, score, score_assigned
from sg_scores
where course_id in ('L1011', 'L1021')
order by 1,2;

select student_id, course_id, score, score_assigned
from sg_scores
where not score>=80;

select dept_id, year, student_id, name, telephone
from student
where dept_id not in('컴공', '경영')
order by 1,3;

insert into T_course(course_id, title, c_number, course.professor_id, course_fees)
values('L3001', '스프링프로젝트', 3, 'P11', 50000);
insert into T_course(course_id, title, c_number, course.professor_id, course_fees)
values('L3002', '모바일프로그래밍', 3, 'P12', null);
insert into T_course(course_id, title, c_number, course.professor_id, course_fees)
values('L3003', '데이터베이스튜닝', 2, 'P13', 50000);
insert into T_course(course_id, title, c_number, course.professor_id, course_fees)
values('L3004', '빅데이터 개론', 2, 'P14', 50000);

select * from t_course;

insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1801', 'L3001', '18/02/23');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1801', 'L3002', '18/02/23');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1801', 'L3003', '18/02/23');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1801', 'L3004', '18/02/23');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1802', 'L3001', '18/02/24');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1802', 'L3002', '18/02/24');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1802', 'L3003', '18/02/24');
insert into t_sg_scores(student_id, course_id, score_assigned)
values('C1802', 'L3003', '18/02/24');

select * from t_sg_scores 
order by 1,2;

update t_sg_scores
set cpurse_id='L3004'
where student='C1802' and course_id='L1051';

update t_sg_scores
set score=98, score_assigned ='2018/06/28'
where student_id='C1801' and course_id='L3001';

update t_sg_scores
set score=87, score_assigned ='2018/06/28'
where student_id='C1801' and course_id='L3002';

update t_sg_scores
set score=92, score_assigned ='2018/06/28'
where student_id='C1801' and course_id='L3003';

update t_sg_scores
set score=89, score_assigned ='2018/06/28'
where student_id='C1801' and course_id='L3004';

update t_sg_scores
set score=88, score_assigned ='2018/06/28'
where student_id='C1802' and course_id='L3001';

update t_sg_scores
set score=92, score_assigned ='2018/06/28'
where student_id='C1802' and course_id='L3002';

update t_sg_scores
set score=93, score_assigned ='2018/06/28'
where student_id='C1802' and course_id='L3003';

update t_sg_scores
set score=97, score_assigned ='2018/06/28'
where student_id='C1802' and course_id='L3004';

select * 
from t_sg_scores
order by 1,2;

delete from t_course
where course_id='L2033';

update t_course
set course_fees=30000
where course_id ='L1031';

delete from t_course
where course_id like 'L4%';

rollback;

select lower('HELLO'), upper('welcome') from dual;

select title, length(title), lengthb(title)
from course
order by 2 desc;

select name, substr(name, 1, 1), email, instr(email,'@') 
from professor
order by 1;

select Ltrim('xyxyxHello', 'xy') 
from dual;

select RTRIM('Oracle Serverkkkkk', 'k') 
from dual;

select professor_id, name, position, concar(name, positino)
from professor
order by 1;

update professor
set email=replace(email, 'cyber', 'dream');

select round(12.345, 2), trunc(12.345, 2) 
from dual;

select ceil(12.345), floor(12.345)
from dual;

select floor(100/3) "몫", mod(100,3) "나머지" 
from dual;

select sysdate, current_date, current_timestamp from dual;

alter session 
set nls_date_format='yyyy.mm/dd hh24:mi:ss';

select sysdate, current_timestamp from dual;

select dept_id, year, name, i_date, current_date "기준일", trunc(months_between(current_date, i_date))"재적일수"
from student
where dept_id='컴공'
order by 4;

select current_timestamp "현재시간", current_timestamp+numtodsinterval(4,'hour') "4시간 후"
from dual;

select dept_id, student_id, name, '2018/07/15' "휴학일자", to_date('180715', 'yymmdd')+numtoyminterval(1,'year') "복합예정일"
from student
where student_id='C1802';

select student_id, name, id_number,
        to_date(substr(id_number, 1,6), 'RRMMDD')"RRMMDD변환",
        to_date(substr(id_number,1,6), 'yymmdd') "yymmdd변환"
from student;

select to_char(current_timestamp, 'yyyy-mm-dd hh24:mi:ss ff3')
from dual;

select student_id, name, i_date,
        to_char(I_date, 'rrrr/mm/dd (day)')"입학일자"
from student
order by 3;

select student_id, course_id, score, score_assigned, to_char(score_assigned, 'yyyy/mm/dd')
from sg_scores
where score>=98
order by 3 desc;

select student_id, course_id, score, to_char(score)
from sg_scores
where score>=98
order by 3 desc;

select score, to_char(score, 'S999'), to_char(-score, 'S999'),
        to_char(score,'B999.9'), to_char(score, '099.00')
from sg_scores
where score>=98
order by 1 desc;

select course_fees, to_char(course_fees, 'L999,999') "국가별화폐",
        to_char(course_fees, 'C999G999') "ISO 화폐"
from course
where course_fees =40000;

select '$123.45', to_number('$123.45', '$999.99') 
from dual;

select course_id, title, nvl(course_fees, 0) 
from course;

select course_id, title, course_fees
from course
where LNNVL(course_fees >= 40000) and course_fees is not null;

select course_id, title, nvl(course_fees,0)"추가수강료", nvl2(course_fees, course_fees*0.05, 0)"수강료 5%"
from course;

select name, telephone, email, coalesce(telephone, email, address)"대표 연락처"
from student
order by 2,3;

select dept_id, name, id_number, decode(substr(id_number, 8,1), '1', '남', '2', '여',
                                                                '3', '남', '4', '여')
from student
where dept_id='컴공'
order by 3;

select student_id, course_id, score,
        case when score between 90 and 100 then 'A'
             when score between 80 and 70 then 'B'
             when score between 70 and 79 then 'C'
             when score between 60 and 69 then 'D'
             else 'F' end "등급"
from sg_scores
where student_id='C1601'
order by 2;

select dept_id, position, name, duty
from professor
order by case position when '총장' then 1
                        when '교수' then 2
                        when '부교수' then 3
                        when '조교수' then 4
                        end, dept_id;
                        
select name, substr(name, 1,1)"성", telephone, address
from ec_member
where address like '서울%'
order by 1;

select product_code, product_name, standard, concat(left_qty, unit)"재고수량", company
from ec_product
where product_name like '%컴퓨터%'
order by 2;

select order_id, product_code, cmoney, cdate "결제일자", to_char(cdate, 'yyyy/mm')"결제년월"
from ec_order
where cdate is not null and cmoney >=1000000
order by cdate;

select name, regist_no, timestamp"가입일자",
        trunc(months_between(current_date, timestamp)/12)|| '년'||
        mod(trunc(months_between(current_date, timestamp)),12)|| '월' as 가입기간,
        current_date "기준일자"
from ec_member
where trunc(months_between(current_date, timestamp)/12) >=1
order by 1;

select order_id, cmoney, csel, cdate, extract(year from cdate)"결제년도",
        extract(month from cdate)"결제 월"
from ec_order
where cdate is not null and csel='신용카드'
order by 4;

update t_sg_scores
set grade=case when score between 95 and 100 then 'A+'
               when score between 90 and 94 then 'A'
               when score between 85 and 89 then 'B+'
               when score between 80 and 84 then 'B'
               when score between 75 and 79 then 'C+'
               when score between 70 and 74 then 'C'
               when score between 65 and 69 then 'D+'
               when score between 60 and 64 then 'D'
               else 'F' end
where grade is null;

select * from t_sg_scores;
commit;

select student_id, course_id, score, floor(score/5)"몫", mod(score, 5)"나머지"
from t_sg_scores
where student_id='C1801'
order by 3 desc;

select student_id, course_id, grade,
        case grade when 'A+' then '4.5' when 'A' then '4.0' 
                   when 'B+' then '3.5' when 'B' then '3.0'
                   when 'C+' then '2.5' when 'C' then '2.0'
                   when 'D+' then '1.5' when 'D' then '1.0'
                   else '0.0' end "평점"
from t_sg_scores
where student_id='c1801';

select course_id, title, c_number, professor_id, nvl(course_fees, 0)
from t_course
where course_fees is null;

select current_date "기준일자와 기준시간", current_date+5"5일 후", current_date+4/24"4시간 후"
from dual;

select product_code, product_name, unit_price, company
from ec_product
order by case product_name when '개인용컴퓨터' then 1
                           when '노트북컴퓨터' then 2
                           when '프린터' then 3
                           when 'TV' then 4
                           else 5 end, 3 desc;
                           
select count(*), count(email)
from student;

select count(*)"취득과목수"
from sg_scores
where student_id='C1701';

select max(score), min(score)
from sg_scores
where course_id='L1031';

select sum(score), avg(score)
from sg_scores
where course_id='L1031';

select dept_id, count(*)
from professor
group by dept_id;

select dept_id
from professor
group by dept_id
having count(*)=1;

select student_id, count(1)"취득과목수", to_char(avg(score),'99.99')"평균"
from sg_scores
group by student_id
having count(1) >=8
order by 1;

select dept_id, year, count(*)"인원수"
from student
group by dept_id, year
order by 1,2;

select decode(substr(regist_no, 8,1),1,'남자', 2,'여자', 3,'남자', 4,'여자')"성별", count(*)"회원수"
from ec_member
group by decode(substr(regist_no, 8,1),1,'남자', 2,'여자', 3,'남자', 4,'여자');

select to_char(cdate, 'yyyy/mm')"결제년월", max(cmoney)"결제최대금액"
from ec_order
where cdate is not null
group by to_char(cdate, 'yyyy/mm')
order by 1;

select student_id, count(1)"과목수", sum(score)"총점", avg(socre)"평균"
from t_sg_scores
where score is not null
group by student_id
order by 3 desc;

select count(*) "총게시물수"
from free_board;
select case when max(b_id) is null then 1 
            else max(b_id) +1 end "게시물번호"
FROM free_board;

select p.professor_id, name, position, title, c_number
from professor p, course c
where p.professor_id=c.professor_id
order by 1;

select p.professor_id, name, position, title, c_number
from professor p, course c
where p.professor_id=c.professor_id(+)
order by 4;

select p.professor_id, name, position, title, c_number
from professor p, course c
where p.professor_id(+)=c.professor_id
order by 1;

select p.professor_id, name, position, title, c_number
from professor p, course c
where p.professor_id=c.professor_id(+) 
and course_id is null
order by 1;

select t1.professor_id, t1.dept_id, t1.duty, t1.name || ' ' || t1.position "교수명",
         t2.name || ' ' || t2.duty"관리자명"
from professor t1, professor t2
where t1.mgr=t2.professor_id
order by 2,3;

select dept_id, name, position
from professor p
where exists (
                select*
                from course c
                where p.professor_id=c.professor_id
                and course_fees=50000
                );
        
select *
from course
where professor_id not in(
                            select professor_Id
                            from professor
                            )
order by course_id;

select name, regist_no, o.product_code, order_qty, cmoney
from ec_member m inner join ec_order o on (m.userid=o.order_id)
order by 1;

select name, regist_no, telephone
from ec_member m left outer join ec_order o on (m.userid=o.order_id)
where o.order_id is null
order by 1;

select name, regist_no, product_name, order_qty, unit_price, substr(address,1,2)"거주자"
from ec_member m inner join ec_order o on (m.userid=o.order_id) 
                 inner join ec_product p on (o.product_code=p.product_code)
where address like '서울%'
order by 1;

select s.dept_id, s.year, ts.student_id, s.name, ts.course_id, ts.title,tc.c_number
from t_sg_scores ts, student s, t_course tc
where ts.student_id=s.student_id
and ts.course_id=tc.course_id
and ts.student_id='c1801'
order by 5;

select dept_id, year, student_id, name, course_id, title, c_number, grade
from t_sg_scores inner join student using(student_id)
                 inner join t_course using(course_id)
where student_id='C1801'
order by 5;

select student_id, course_id, title, c_number"학점", grade, 
        case grade when 'A+' then 4.5 when 'A' then 4.0
                   when 'B+' then 3.5 when 'B' then 3.0
                   when 'C+' then 2.5 when 'C' then 2.0
                   when 'D+' then 1.5 when 'D' then 1.0
                   else 0.0 end "등급평점"
from t_sg_scores inner join student using(student_id)
                 inner join t_course using(course_id)
where student_id='C1802'
order by course_id;

select student_id, course_id, score
from sg_scores
where course_id='L1031';

select dept_id, year, student_id, name, count(1)"과목수", sum(score)" 총점",
        to_char(round(avg(Score),2), '999.99')"평균"
from t_sg_scores sg inner join student s using(student_id)
where score is not null
group by ddept_id, year, student_id, name
order by 3 desc;

select student_id, course_id, score, score_assigned
from sg_scores
where course_id='L1031'
and score=(
            select max(score)
            from sg_scores
            where course_id='L1031'
            );

select student_id, course_id, score, to_char(score_assigned, 'yy/mm')"취득년월"
from sg_scores
where (to_char(score_assigned, 'yy/mm'), score) in
      (select to_char(score_assigned, 'yy/mm'), max(score)
      from sg_scores
      group by to_char(score_assigned, 'yy/mm'))
order by 4;

select student_id, course_id, score, score_assigned 
from sg_scores
where course_id='L1031'
and score>any(
                select score
                from sg_scores
                where course_id='L1031'
                );

select student_id. course_id, socre, score_assigned
from sg_scores
where course_id='L1031'
and score >= all(
                    select score
                    from sg_scores
                    where course_ud='L1031'
                    );
                    
select name, position, dept_id
from professor p
where exists(
                select *
                from course c
                where p.professor_id=c.professor_id
                );

select name, position, dept_id
from professor p
where not exists(
                select *
                from course c
                where p.professor_id=c.professor_id
                );
                
select name, dept_id, (
                        select count(dept_id)
                        from professor A
                        where A.dept_id=B.dept_id
                        group by dept_id
                        )"학과교수수"
from professor B
where professor_id='P12';

select m.student_id, name, count(*)"취득과목수",(
                                                select sum(c_number)
                                                from sg_scores inner join course using(course_id)
                                                where student_id=m.student_id
                                                group by student_id
                                                )"취득학점수"
from sg_scores m inner join student s on m.student_id=s.student_id
group by m.student_id, name
having count(*)>1
order by 4 desc;

select student_id, sum(c_number)
from sg_scores inner join course using(course_id)
group by student_id
having sum(c_number)>(
                        select sum(c_number)
                        from sg_scores inner join course using (course_id)
                        where student_id='C1602'
                        );
                        
create table student_computer(
                                dept_id, year, student_id, name, id_number, email
                                )as
                                    select dept_id, year, student_id, name, id_number, email
                                    from student
                                    where dept_id='컴공';

select order_id, product_code, (
                                select count(*)
                                from ec_order A
                                where A.product=B.product_code
                                )"동일상품_구매자"
from ec_order B
where order_id='jupark';

select *
from t_course
where course_id like 'L1%'
and course_fees > any(
                        select course_fees
                        from t_course
                        )
order by course_fees desc;

select course_id, studnet_id, score, score_assigned
from t_sg_scores
where (
        course_id, score
        )in(
            select course_id, max(score)
            from t_sg_scores
            where to_char(score_assigned, 'yy/mm')='18/06'
            group by course_id
            )
order by course_id;

select * 
from t_course c
where exists (
                select *
                from t_sg_scores sg
                where sg.course_id=c.course_id
                );
 
select *
from t_course c
where not exists(
                    select *
                    from t_sg_scores sg
                    where sg.course_id=c.course_id
                    )
order by 1;