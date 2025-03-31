--상품관리 테이블에서 삼성 회사의 제품의 [상품코드, 상품명, 단위,단가, 재고수량, 생산처]를 상품명 순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from EC_product 
where lower(company) like 'samsung' 
order by product_name;

--상품관리 테이블에서 프린터 제품의 단가가 50만원을 초과하는 상품의 [상품코드, 상품명, 단위, 재고수량, 생산처]를 단가 내림차순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from ec_product 
where product_name='프린터' and unit_price>500000
order by unit_price desc;

--회원관리 테이블에서 '정'씨 회원의 [회원명, 주민등록번호, 전화번호, 가입일자]를 출력하시오.
select userid, regist_no, telephone, timestamp 
from ec_member 
where name like '정%';

--주문처리 테이블에서 현금입금과 계좌이체한 회원의 [주문번호, 상품코드, 결제방법, 결제일자]를 결제방법, 결제 일자순을 출력
select order_no,product_code, csel, cdate 
from ec_order 
where csel='현금입금' or csel='계좌이체' 
order by csel, cdate;

--상품관리 테이블에서 'hp'회사의 프린터 제품에 대한 [상품코드, 상품명, 단위, 단가, 재고수량]을 단가순으로 출력
select product_code, product_name, unit, unit_price, left_qty 
from ec_product 
where product_name='프린터' and company='HP' 
order by unit_price;

--상품관리 테이블에서 생산처가 삼성과 lg전자가 아닌 상품의 [상품코드, 상품명, 단위, 단가, 재고수량, 생산처]를 생산처, 단가순을 출력
select product_code, product_name, unit, unit_price, left_qty,company 
from ec_product 
where not (lower(company) like 'samsung' or company='LG전자') 
order by unit_price;

--회원관리 테이블에서 주소가 '서울'과 '대구'가 아닌 회원의 [회원명, 주민등록번호, 전화번호, 주소]를 주소순으로 출력
select name, regist_no, telephone, address 
from ec_member 
where not (address like '서울%' or address like '대구%') 
order by address;

--상품관리 테이블에서 재고수량이 10미만인 상품의 [상품코드, 상품명, 규격, 단가, 재고수량, 생산처]를 상품명순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from ec_product 
where left_qty<10 
order by product_name;

--회원관리 테이블에서 전화번호가 '666'이 포함된 회원의 [회원명, 주민등록번호 전화번호, 주소]를 회원명순으로 출력
select name, regist_no, telephone, address 
from ec_member 
where telephone like '%666%' 
order by name;

--회원관리 테이블에서 2018 5월 1일 이후에 가입한 회원의 [회원명, 주민등록번호, 전화번호, 주소, 가입일자]를 회원 가입일자순으로 출력
select name, regist_no, telephone, address, timestamp 
from ec_member 
where timestamp>='2018-05-01' 
order by timestamp;

--상품관리 테이블에서 상품명이 노트로 시작하는 상품의 [상품코드, 상품명, 단위, 단가, 재고수량, 생산처]를 생산처순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from ec_product 
where product_name like '노트%' 
order by company;

--상품관리 테이블에서 LG로 시작하는 생산처의 상품이 80만원을 초과하는 [상품코드, 상품명, 단위, 단가, 재고수량, 생산처]를 상품코드순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from ec_product 
where company like 'LG%' and unit_price>80 
order by product_code;

--상품관리 테이블에서 생산처가 입력되지 않은 행의 [상품코드, 상품명, 단위, 단가, 재고수량, 생산처]를 상품코드순으로 출력
select product_code, product_name, unit, unit_price, left_qty, company 
from ec_product 
where company is null order by product_code;

--주문처리 테이블에서 상품콛가 'cm01'을 1개 초과 주문한 행의 [주문번호, 주문자id, 상품코드, 주문수량, 결제금액]을 주문자id순으로 출력
select order_no, order_id, product_code, order_qty, cmoney 
from ec_order 
where product_code='CM01' and order_qty>1 
order by order_id;

--회원관리 테이블에서 회원명이 '고'씨부터 '최'씨를 제외한 회원을 [회원명, 주민등록번호, 전화번호, 주소]를 회원명순으로 출력
select name, regist_no, telephone, address 
from ec_member 
where not(name like '고%' or name like '최') 
order by name;

--수강 테이블에서 수강과목코드가 L1011과 L1021 과목의 학점을 취득한 학생의 [과목코드, 학번, 성적, 성적취들일자]를 과목코드, 학번순으로 출력
select course_id, student_id, score, score_assigned 
from sg_scores 
where course_id='L1011' or course_id='L1021' 
order by course_id, student_id;

--수강 테이블에서 성적이 80점 이상이 아닌 행위 [과목코드, 학번, 성적, 성적취득일자]를 출력
select course_id, student_id, score, score_assigned 
from sg_scores 
where not score>=80;

--학생 테이블에서 학과코드가 '컴공'과 '경영' 학과가 아닌 학생의 [학과코드, 학년, 학번, 성명, 전화번호]를 학과코드, 학번 순으로 출력
select dept_id, year, student_id, name, telephone 
from student 
where not(dept_id='컴공' or dept_id='경영') 
order by dept_id, student_id;

--다음 표의 개설과목을 과목임시 테이블에 저장하고 출력하시오.
delete from t_course;

insert into t_course values('L3001', '스프링 프로젝트', 3, 'p11', 50000);
insert into t_course values('L3002', '모바일프로그래밍', 3, 'p12', null);
insert into t_course values('L3003', '데이터베이스튜닝', 2, 'p13', 50000);
insert into t_course values('L3004', '빅데이터 개론', 2, 'p14', 30000);

select * from t_course;

--다음 표를 참고하여 학번별 수강신청 과목을 수강임시 테이블에 저장하고, 출력
drop table t_sg_scores;

create table t_sg_scores(
                            student_id varchar2(30),
                            name varchar2(50),
                            course_id varchar2(30),
                            title varchar2(70),
                            score number(2),
                            course_date date
);

insert into t_sg_scores values('c1801', '김대현', 'L3001', '스피링 프로젝트', 3, '2018-02-23');
insert into t_sg_scores values('c1801', '김대현', 'L3002', '모바일프로그래밍', 3, '2018-02-23');
insert into t_sg_scores values('c1801', '김대현', 'L3003', '데이터베이스튜닝', 2, '2018-02-23');
insert into t_sg_scores values('c1801', '김대현', 'L4001', '빅데이터 개론', 2, '2018-02-23');
insert into t_sg_scores values('c1802', '신지애', 'L3001', '스피링 프로젝트', 3, '2018-02-24');
insert into t_sg_scores values('c1802', '신지애', 'L3002', '모바일프로그래밍', 3, '2018-02-24');
insert into t_sg_scores values('c1802', '신지애', 'L3003', '데이터베이스튜닝', 2, '2018-02-24');
insert into t_sg_scores values('c1802', '신지애', 'L1051', '웹서버 관리', 2, '2018-02-24');

select * from t_sg_scores;

--t_sg_scores 테이블 정정
update t_sg_scores 
set course_id='L3004', title='빅데이터 개론' 
where student_id='c1802' and name='신지애' and course_id='L1051';

select * from t_sg_scores;

--표를 참고하여 성적을 수강암시 테이블에 저장하고, 출력
drop table t_sg_scores;
create table t_sg_scores(
                            professor_id varchar2(30),
                            course_id VARCHAR2(30),
                            title varchar2(70),
                            student_id varchar(30),
                            score number(3),
                            course_date date
);
insert into t_sg_scores values('p11', 'L3001', '스프링프로젝트', 'c1001', 98, '2018-06-28');
insert into t_sg_scores values('p11', 'L3001', '스프링프로젝트', 'c1002', 88, '2018-06-28');
insert into t_sg_scores values('p12', 'L3002', '모바일프로그래밍', 'c1001', 87, '2018-06-28');
insert into t_sg_scores values('p12', 'L3002', '모바일프로그래밍', 'c1002', 92, '2018-06-28');
insert into t_sg_scores values('p13', 'L3003', '데이터베이스튜닝', 'c1001', 92, '2018-06-28');
insert into t_sg_scores values('p13', 'L3003', '데이터베이스튜닝', 'c1002', 93, '2018-06-28');
insert into t_sg_scores values('p14', 'L3004', '빅데이터 개론', 'c1001', 89, '2018-06-28');
insert into t_sg_scores values('p14', 'L3004', '빅데이터 개론', 'c1002', 97, '2018-06-28');
select * from t_sg_scores;

--과목코드 'L2033'의 '게임프로그래밍' 개설과목이 폐강되었다. 수강 임시 테이블에서 'L2033' 과목코드를 삭제하시오.]
delete from t_course 
where course_id='L2033' and title='게임프로그래밍';

select * from t_course;

--과목 임시 테이블의 과목코드가 'L1031', 과목명이 'sql'의 추가수강료를 30000원으로 수정하시오.
update t_course 
set course_fees=30000 
where course_id='L1031' and title='SQL응용';

--수강 임시 테이블에서 과목코드가 'L4'로 시작하는 과목코드들을 삭제하시오.
delete from t_course 
where course_id like 'L4%';

--수강 임시 테이블에서 과목코드가 'L4'로 시작하는 과목ㅋ드들을 실수로 삭제하였다. 삭제된 행들을 복구하시오.
rollback;

--'hello' 문자열을 소문자, 'welcome' 문자열을 대문자로 변환
select lower('HELLO'), upper('welcome') 
from dual;

--course 테이블의 title과 title 컬럼의 문자열 길이 정보를 문자열 길이 내림 차순으로 조회
select title, length(title) 
from course 
order by length(title) desc;

--professor 테이블의 교수명에서 교수의 성을 추출하고, email 주소에서 '@'문자가 나타나는 위치를 교수명순으로 조회
select SUBstr(name,1,1) as"교수님의성",  instr(email, '@') 
from professor 
order by name;

--xyxyxHello 문자열에서 'x'나 'y' 문자를 제거하시오.
select replace(replace('xyxyxhello','x'),'y') 
from dual;

--'Oracle Serverkkkkk' 문자열의 'k' 문자를 제거하시오.
select replace('Oracle Serverkkkkk', 'k') 
from dual;

--Professor 테이블의 교수명, 직위, 교수명과 직위를 결합하여 교수번호순으로 조회
select name, position, concat(name, position) 
from professor 
order by professor_id;

--교수용 email 서버의 도메인명이 'cyber'에서 'dream'으로 변경되었다. 이를 변경하여 교수명순으로 조회
update professor 
set email=replace(email,'cyber', 'dream');

select * 
from professor 
order by name;

--12.345의 값을 round(), trunc()함수 사용하여 조회
select round(12.345), trunc(12.345) 
from dual;

--12.345의 값을 ceil(), floor()함수 사용하여 조회
select ceil(12.345), floor(12.345) 
from dual;

--100을 3으로 나누어 몫과 나머지를 조회
select trunc(100/3) as "몫", mod(100,3) as"나머지" 
from dual;

--위의 표를 참고하여 현재 날짜와 시간을 조회해 주세요
--날짜형 형식을 'YYYY/MM/DD/HH:24:MI"SS'로 지정하여 시스템 날짜와 지역 시간대의 날짜와 시간을 조회
select to_char(sysdate, 'YYYY/MM/DD/HH24:MI:SS') 
from dual;

--현재 날짜에 10개월을 더하여 조회
select add_months(sysdate, 10) 
from dual;

--student 테이블의 '컴공'학과 학생들에 대한 재적월수를 계산하여 조회
SELECT months_between(current_date, i_date)as"재적월수" 
FROM student 
WHERE dept_id='컴공';

--현재 시간에 4시간을 더하여 조회
select to_char(sysdate+4/24, 'YYYY/MM/DD/HH24:MI:SS') 
from dual;

--'C1802'학번의 '신지애' 학생이 2018년 7월 15일부로 1년간 휴학하였다. 복학 예정일을 조회
select add_months(to_char(i_date+137),12) as"복학날짜" 
from student 
where student_id='C1802' and name='신지애';

--student 테이블의 주민등록번호를 이용하여 생년월일을 추출하고, 날짜형 데이터로 'yymmdd'로 변환하여 'yyyy/mm/dd'형식으로 조회
select to_char(to_date(substr(id_number,1,6), 'yymmdd'),'yyyy/mm/dd') 
from student;

--현재의 날짜와 시간을 형식으로 변환
select to_char(current_timestamp,'yyyy-MM-DD HH24:mi:ss.ff3') 
from dual;

--student 테이블의 입학날짜 컬럼을 yyyy/mm/dd 형식으로 변환하여 입학일자순으로 조회
select to_char(i_date, 'yyyy/mm/dd')as"입학일자" 
from student 
order by 입학일자;

--sg_scores 테이블의 성적이 98점 이상자에 대하여 성적 취득 일자를 'yyyy/mm/dd'형식의 문자형을 변환
select to_char(score_assigned, 'yyyy/mm/dd') 
from sg_scores 
where score>=90;

--sg_scores 테이블로부터 점수가 98점 이상의 점수를 문자형을 변화하여 조회
select to_char(score) 
from sg_scores 
where score>=98;

--sg_scores 테이블의 성적이 ~형식으로 변환하여 조회
select to_char(score, 's999'), to_char(score, 'B999'), to_char(score, '0,99,99') 
from sg_scores;

--course 테이블의 추가 수강료가 4만원 과목에 대하여 문자열로 변환
select to_char(course_fees,'999,999'), to_char(course_fees,'L999,999'), 
to_char(course_fees,'C999G999')
from course 
where course_fees=40000;

--'$123.45' 문자열을 숫자형으로 변환하여 조회
select to_number('$123.45', '$999.99') 
from dual;

--course 테이블의 데이터를 조회할 때 course_fees가 null 일때 0으로 변환하여 조회
select nvl(course_fees,0) 
from course;

--course 테이블에서 추가 수강료가 null이 아닌 과목 중에서 4만원 미만인 행을 조회
select * from course 
where course_fees is not null and course_fees <40000;

--course 테이블의 추가 수수료를 5% 인상 금액을 조회
select course_fees*1.05 
from course;

--student 테이블에서 학생의 전화번호, 이메일주소, 주소 순으로 대표 연락처를 조회
select telephone, email, address 
from student 
order by telephone, email, address;

--컴퓨터공학과 학생의 주민등록번호를 이용하여 성별코드가 1,3일때 남, 2,4일때 여로 변환하여 조회
select case when substrb(id_number,8,1)='1' or substrb(id_number,8,1)='3' then '남'
            else '여' end 성별
from student 
where dept_id='컴공';

--'c1601'에 대해 과목 코드순으로 조회
select case when score>=90 and score<=100 then 'A'
            when score>=80 and score<=89 then 'B'
            when score>=70 and score<=79 then 'C'
            when score>=60 and score<=69 then 'D'
            else 'F' end 성적등급
from sg_scores order by 성적등급;

--prodessor 테이블에서 직위를 '총장','교수','부교수','조교수''초빙교수'의 직위별 학과 코드 순으로 조회
select case when position='총장' then 1
                        when position='교수' then 2
                        when position='부교수' then 3
                        when position='조교수' then 4
                        else 5 end 직위등급
                        , position, professor_id
from professor 
order by 직위등급, professor_id;

--회원관리 테이블에서 '서울' 거주자에 대하여 회원명의 성씨를 추출하여 [회원명, 성, 전화번호, 주소]를 출력
select name, substr(name,1,1)as"성", telephone, address 
from ec_member 
where address like '서울%';

--상품관리 테이블에서 모든 컴퓨터 제품의 재고수량을 단위와 결합하여 [상품코드, 상품명, 단위, 재고수량, 생산처]를 출력
select product_code, product_name, unit, concat(left_qty,unit)as"재고수량", company 
from ec_product;

--주문처리 테이블에서 결제금액이 100만원 이상 결제한 주문자의 결제일자를 년월 형식으로 변환하여 출력
select to_char(cdate,'YYYY/MM') 
from ec_order 
where cmoney>=1000000;

--회원관리 테이블에서 현재일자 기준으로 회원가입기간을 ~으로 계산하여 1년 이상인 회원을 출력
select name, concat(concat(trunc(months_between(sysdate,timestamp)/12),'년'),
concat(trunc(mod(months_between(sysdate,timestamp),12)),'월')) as"회원가입기간" 
from ec_member 
where  months_between(sysdate,timestamp)>=12;

--주문처리 테이블에서 결제한 '신용카드'로 결제한 회원에 대하여 extract()함수를 이용하여 결제년도와 결제월을 추출
select order_id, extract(year from cdate)as "결제년도", extract(month from cdate)as "결제월"
from ec_order 
where csel='신용카드';

--수강 임시 테이블에서 case 함수를 이용하여 등급을 산출하고, [학번, 과목코드, 성적, 등급, 성적취득일자]를 출력
select student_id, score, case when score>=90 and score<=100 then 'A'
                                when score>=80 and score<=89 then 'B'
                                else 'C' end 등급, course_date
from t_sg_scores;

--수강 임시 테이블에서 'c1801' 학번의 성적을 5로 나누어 몫과 나머지를 계산하여 [학번, 과목코드, 성저그 몫, 나머지]를 출력
select trunc(score/5)as"몫", mod(score,5)as"나머지" 
from t_sg_scores 
where student_id='C1801';

--수강임시 테이블에서 case 함수를 이용하여 'c1801'학번의 등급이 A+이면 'A' 이면 등등
select case when grade='A+' then 4.5
            when grade='A' then 4.0
            when grade='B+' then 3.5
            when grade='B' then 3.0
            when grade='C+' then 2.5
            when grade='C' then 2
            when grade='D+' then 1.5
            when grade='D' then 1.0
            else 0.0 end 학점
from t_sg_scores;

--과목 임시 테이블에서 추가수강료가 널인 행에 대하여 널 값을 0으로 변환하여 출력
select nvl(Course_fees,0) 
from T_course;

--기준일자에 5일을 더하고, 기준시간에 4시간을 더하여 출력
select sysdate+5+4/24 
from dual;

--상품 관리에 테이블에서 상품명을 '개인용컴퓨터', '노트북컴퓨터', '프린터', 'TV', 기타 출력순서로 1순위 단가, 내림차순을 2순위로 출력
select case when product_name='개인용컴퓨터' then 1
                          when product_name='노트북컴퓨터' then 2
                          when product_name='프린터' then 3
                          when product_name='TV' then 4
                          else 5 end 상품명순서, product_name, unit_price
from ec_product 
order by 상품명순서, unit_price desc;

--student 테이블의 행의 수와 email이 저장된 행의 수를 조회
select count(*)as"행의수", count(email)as"email의행의수" 
from student;

--sg_scores 테이블에서 'c1701'학번의 취득 과목수
select count(title)as"과목수" 
from sg_scores 
where student_id='C1701';

--sg_scores 테이블에서 과목코드 'L1031', 'sql응용'의 최고 점수와 최저점수를 출력
select max(score)as"최고점수", min(score)as"최저점수" 
from sg_scores 
where course_id='L1031' and title='sql응용';

--sg_scores 테이블에서 과목코드 'L1031', 'sql응용'의 표준편차와 분산을 출력
select stddev(score)as"표준편차", variance(score)as"분산" 
from sg_scores 
where course_id='L1031' and title='sql응용';

--professor 테이블을 이용하여 학과별 교수 인원수를 조회
select dept_id, count(dept_id)as"학과별인원수" 
from professor 
group by dept_id;

--professor 테이블을 이용하여 학과별 교수 인원수가 1명인 학과를 조회
select dept_id, count(dept_id)as"학과별교수인원수" 
from professor 
group by dept_id 
having count(dept_id)=1;

--sg_scores 테이블에서 학번별의 8과목이상을 취득한 학번의 과목수와 평균을 학번순으로 조회
select student_id, count(student_id)as"과목수", avg(score)as"평균" 
from sg_scores 
group by student_id 
having count(student_id)>=8 
order by student_id;

select dept_id, count(dept_id)as"학과별인원수", year, count(year)as"학년별인원수" 
from student 
group by dept_id, year;

--회원 관리 테이블을 이용하여 총회원수를 출력
select count(regist_no)as"총회원수" 
from ec_member;

--주문 처리 테이블에서 결제금액이 제일 적은 금액과 제일 많은 금액을 출력
select max(cmoney)as"최고금액", min(cmoney)as"최저금액" 
from ec_order;

--주문 처리 테이블에서 결제한 결제년월별로[결제년월, 주문건수, 주문 수량 합계, 결제 금액 합계]를 계산하여 결제 년월순으로 출력
select to_char(cdate,'yyyy-mm')as"결제년월", count(cdate)as"주문건수", 
sum(order_qty)as"주문수량합계", sum(cmoney)as"결제금액합계"
from ec_order 
group by to_char(cdate,'yyyy-mm')
order by to_char(cdate,'yyyy-mm'); 

--회원 관리 테이블에서 남, 여 회원 수를 출력하시오.
select case when mod(substr(regist_no,8,1),2)=1 then '남'
            else '여' end 성별,
            count(regist_no)as"회원수"
from ec_member
group by mod(substr(regist_no,8,1),2);

--주문 처리 테이블에서 년월별 결제금액이 가장 많은 금액을 결제년월별순으로 출력
select to_char(cdate,'yyyy-mm')as"결제년월", max(cmoney)
from ec_order
group by to_char(cdate,'yyyy-mm')
order by to_char(cdate,'yyyy-mm');

--수강 임시 테이블에서 성적 취득한 학번별 과목수, 합계와 평균을 계산하여 [학번, 과목수, 총점, 평균]을 총점 내림차순으로 출력
select student_id, count(title), sum(score), avg(score)
from t_sg_scores
group by student_id
order by sum(score) desc;

--자유게시판 테이블의 게시물 행의 수를 출력하고, 게시물을 저장하기 위한 게시물 번호를 구하시오
select case when b_id is null then 1
            else abs(b_id)+1 end 게시물번호, 
            count(b_id)as"행의수"
from free_board
group by b_id;

--professor 테이블과 course 테이블을 이용하여 교수가 최소한 한 과목 이상을 담당하고 있는 교수의 [교수번호, 교수명, 직위, 과목명, 학점수]를 교수번호순으로 출력
select p1.professor_id, p1.name, p1.position, c1.title,count(c1.c_number)as"학점수"
from professor p1, course c1
where c1.professor_id=p1.professor_id and c1.professor_id is not null
group by p1.professor_id, title, p1.name, p1.position;

--sg_scores 테이블과 stuent 테이블, course 테이블을 이용하여 'c1701' 학번의 [학년, 성명]. 학점을 취득한 과목의[과목코드, 과목명과 학점수, 성적, 등급]을 출력
select s1.year, s1.name, c1.c_number, sg1.course_id, sg1.title, count(c1.c_number)as"학점수", sg1.score, sg1.grade 
from course c1, sg_scores sg1, student s1
where c1.course_id=sg1.course_id and sg1.student_id=s1.student_id and s1.student_id='C1701'
group by c1.course_id, s1.year, s1.name, c1.c_number, sg1.course_id, 
sg1.title, sg1.score, sg1.grade, sg1.score;

--professor 테이블의 모든 교수에 대한 교수번호, 교수명, 직위를 출력하되, course 테이블을 참고하여 교수가 개설하고 있는 과목에 대하여 과목명, 학점수를 출력
select p1.professor_id, p1.name, p1.position, c1.title, sum(c_number)as"학점수"
from professor p1, course c1 
where c1.professor_id(+)=p1.professor_id 
group by p1.professor_id, p1.name, p1.position, c1.title;

--course 테이블의 모든 개설 과목에 대하여 과목명, 학점수를 출려하되 professor 테이블을 참고하여 담당하고 있는 과목의 교수번호, 교수명, 직위도 출력
select c1.title, count(c_number)as"학점수", p1.professor_id, p1.name, p1.position
from course c1, professor p1
where c1.professor_id=p1.professor_id(+)
group by c1.title, p1.professor_id, p1.name, p1.position;

--professor 테이블과 course 테이블을 참고하여 과목을 개설하지 않은 교수를 출력
select *
from professor p1, course c1
where p1.professor_id=c1.professor_id(+) and c1.professor_id is null; 

--professor 테이블을 이용하여 각 교수의 관리자명을 출력
select p2.professor_id, p2.name, p1.name as"교수의관리자명"
from professor p1, professor p2
where p1.professor_id=p2.mgr;

--course 테이블의 추가 수강료가 5만원인 과목을 담당하는 교수에 대하여 professor 테이블의 [학과, 코드, 교수명, 직위]를 출력
select c1.course_id, p1.name, p1.position
from course c1, professor p1
where p1.professor_id=c1.professor_id(+) and c1.course_fees=50000;

--course 테이블과 professor 테이블을 이용하여 개설 과목의 담당교수가 입력되지 않은 과목을 출력
select c1.title
from course c1, professor p1
where c1.professor_id=p1.professor_id(+) and c1.professor_id is null;

--회원 테이블과 주문 처리 테이블을 이용하여 한번 이상 거래한 회원의 [회원명, 주민등록번호, 상품명, 주문수량, 주문금액]을 회원명 순으로 출력
select m1.name, m1.regist_no, o1.product_code, order_qty, cmoney
from ec_member m1 inner join  ec_order o1 
on m1.userid = o1.order_id
where  o1.order_no is not null
order by m1.name;

--회원 관리 테이블과 주문처리 테이블을 이용하여 한번도 주문하지 않은 [회원명, 주민등록번호, 전화번호]를 출력
select m1.userid, m1.regist_no, m1.telephone
from ec_member m1, ec_order o1
where m1.userid= o1.order_id(+) and o1.order_no is null;

--주문 처리 테이블, 회원 관리 테이블, 상품 관리 테이블을 이용하여 거주지가 '사울'인 회원 중에서 한번 이상 주문한 회원의 [회원명, 주민번호, 상품명, 주문수량, 단가, 거주지]를 회원명 순으로 출력
select m1.name, m1.regist_no, p1.product_name, o1.order_qty, p1.unit_price, m1.address
from ec_order o1 inner join ec_member m1 
on o1.order_id=m1.userid
inner join ec_product p1 
on o1.product_code=p1.product_code
where m1.address like '서울%';

--수강 임시 테이블, 과목 임시 테이블, 학생 테이블을 이용하여 'C1801' 학번의 수강 신척 과목을 출력
select c1.title
from t_sg_scores sg1, t_course c1, student s1
where sg1.course_id=c1.course_id and s1.student_id=s1.student_id and student_id='C1801';

--수강 임시 테이블, 과목 임시 테이블, 학생 테이블을 이용하여 'C801'학번의 성적을 내부조인 형식으로 출력
select *
from t_sg_scores sg1 inner join t_course c1 
on sg1.course_id=c1.course_id
inner join student s1
on sg1.student_id=s1.student_id
where sg1.student_id ='C1801';

--수강 임시 테이블과 과목 임시 테이블을 이용하여 'C1801' 학번의 대한 평점, 과목별 평점을 출력
select c1.title, case when sg1.grade='A+' then '4.5'
            when sg1.grade='A' then '4.0'
            when sg1.grade='B+' then '3.5'
            when sg1.grade='B' then '3.0'
            when sg1.grade='C+' then '2.5'
            when sg1.grade='C' then '2.0'
            when sg1.grade='D+' then '1.5'
            when sg1.grade='D' then '1.0'
            else '0.0' end 평점,
            to_number(sg1.sgrade)*c1.c_number as"과목별 평점"
from t_sg_scores sg1, t_course c1
where sg1.course_id=c1.course_id and sg1.course_id='C1801';

--수강 임시 테이블에서 학번별 취득, 과목수, 취득 점수의 합계와 평균을 계산하여, [학가 코드, 학년, 학번, 성명, 과목수, 총점, 평균]을 총점 내림차순으로 출력
select sg1.course_id, s1.year, s1.student_id, s1.name, count(title), sum(score), round(avg(score),2)
from t_sg_scores sg1, student s1
where sg1.student_id=s1.student_id
group by sg1.course_id, s1.year, s1.student_id, s1.name;

--sg_scores 테이블의 'L1031', 'SQL응용' 과목의 행들을 출력하고, 'L1031' 과목의 평균 점수보다 높은 점수를 출력
select course_id, title, score
from sg_scores
where course_id='L1031' and title='SQL응용' and score >(
                                                        select avg(score)
                                                        from sg_scores
                                                        where course_id='L1031' 
                                                        );

--sg_scores 테이블의 'L1031', 'SQL응용' 과목에서 최고점을 받은 학생들의 학번, 과목코드,성적 성적취들일자를 출력
select student_id, course_id, score, score_assigned
from sg_scores 
where course_id ='L1031' and title ='SQL응용' and score in(
                                                            select max(score)
                                                            from sg_scores
                                                            where course_id='L1031' and title='SQL응용' 
                                                            );
                                                            
--sg_scores 테이블의 년월별 최고점을 받은 학생들의 학번, 과목코드, 성적, 성적취득년월을 출력
select student_id, course_id, score, to_char(score_assigned, 'yyyy-mm')as"성적취득년월"
from sg_scores
where (to_char(score_assigned,'yyyy-mm'), score) in(
                                                    select to_char(score_assigned, 'yyyy-mm'), max(score)
                                                    from sg_scores
                                                    group by to_char(score_assigned, 'yyyy-mm')
                                                    );
                                                    
--sg_scores 테이블의 'L1031', 'SQL응용' 과목에서 성적이 최하 점수보다 높은 점수의 학생에 대하여 학번, 과목코드, 성적, 성적취득일자를 출력
select student_id, course_id, score, score_assigned
from sg_scores
where course_id='L1031' and score > any(
                                        select min(score)
                                        from sg_scores
                                        where course_id='L1031' and title='SQL응용'
                                        );
                                        
--sg_scores 테이블의 'L1031' 'SQL응용' 과목에서 년도별 최고 점수를 받은 학생들의 학번, 코목코드, 성적, 취득일자를 출력
select student_id, course_id, score, score_assigned
from sg_scores
where course_id='L1031' and score >= all(
                                        select min(score)
                                        from sg_scores
                                        where course_id='L1031' and title='SQL응용'
                                        );
                 
--professor 테이블과 course 테이블을 이용하여 강의를 담당하고 있는 교수의 명단을 출력
select *
from professor p1
where exists(
                select *
                from course c1
                where p1.professor_id=c1.professor_id
                );

--professor 테이블과 course 테이블 이용하여 강의를 담당하지 않은 교수의 명단을 출력
select *
from professor p1
where not exists(
                    select *
                    from course c1
                    where p1.professor_id=c1.professor_id
                    );

--교수 번호 'p12'에 대한 교수명, 소속학과, 'p12'의 소속학과의 교수 수를 출력
select name, dept_id, (
                        select count(dept_id)
                        from professor p2
                        where p1.dept_id = p2.dept_id
                        group by dept_id) as "학과교수수"
from professor p1
where professor_id='p12';

--수강 테이블로 부터 한 과목 초과 학점 취득자에 대한 [학번, 성명, 취득과목수, 취득학점계]를 출력
select sg1.student_id, name, count(*) as"취득과목수", (
                                                    select sum(c_number)
                                                    from sg_scores inner join course using (course_id)
                                                    where student_id = sg1.student_id
                                                    group by student_id
                                                    ) as "취득학점계"
from sg_scores sg1 inner join student s1 on sg1.student_id=s1.student_id
group by sg1.student_id, name
having count(*)>1;

--수강 테이블로 부터 'C1602' 학생의 취득학점수보다 많은 학생의 학번, 총취득학점수를 출력
select student_id, sum(c_number)
from sg_scores inner join course using (course_id)
group by student_id
having sum(c_number) >(
                        select sum(c_number)
                        from sg_scores inner join course using (course_id)
                        where student_id='C1602'
                        );                      

--student 테이블에서 '컴공'학과에 재학중인 학생들을 student_computer 테이블을 생성하여 저장
create table student_computer(
                                depot_id, year, student_id, name, id_name, email
                                ) as
                                    select dept_id, year, student_id, name, id_number, email
                                    from student
                                    where dept_id='컴공';
    
--주문 처리 테이블로 부터 'jupark'가 주문한 상품과 동일한 상품의 구매자수를 조회
select order_id, product_code, (
                                select count(*)
                                from ec_order o2
                                where o1.product_code=o2.product_code
                                ) as"동일한상품의구매자수"
from ec_order o1
where order_id='jupark';

--과목 임시 테이블에서 추가 수강료의 평균값을 계산하여 출력하고, 추가 수강료가 평균 수강료보다 높은 과목을 출력
select *
from t_course
where course_fees > (
                        select avg(course_fees)
                        from t_course
                        );

--과목 임시 테이블에서 과목코드가 'L1'로 시작하는 과목중에서 추가 수강료가 가장 낮은 금액보다 많은 과목을 추가 수강료 역순으로 출력
select *
from t_course
where course_id like 'L1%' and course_fees > any(
                                                    select min(course_fees)
                                                    from t_course
                                                    )
order by course_fees desc;
                                                    
--수강 임시 테이블에서 성적 취득 일자가 2018년 6월 과목 별 최고점을 받은 과목의 [과목코드, 학번, 성적, 성적 취득일자]를 과목 코드 순으로 출력
select course_id, student_id, score, course_date
from t_sg_scores
where (course_id, score) in(
                            select course_id, score
                            from t_sg_scores
                            where to_char(course_date, 'yyyy-mm')='2018-06'
                            )
order by course_id;

--과목 임시 테이블과 수강 임시 테이블을 이용하여 한 명 이상 수강한 과목을 [과목코드, 과목명, 학점수, 담당교수번호, 추가 수강료]를 과목 코드 순으로 출력
select *
from t_course c1
where exists(
                select *
                from t_sg_scores sg1
                where sg1.course_id=c1.course_id
                )
order by course_id;

--과목 임시 테이블과 수강 임시 테이블을 이용하여 한번도 수강하지 않은 과목을 [과목코드, 과목명, 학점수, 담당교수번호, 추가 수강료]를 과목 코드 순으로 출력
select *
from t_course c1
where not exists(
                select *
                from t_sg_scores sg1
                where sg1.course_id=c1.course_id
                )
order by course_id;
