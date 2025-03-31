CREATE TABLE Department (
Dept_ID      VARCHAR2(10)   CONSTRAINT Department_pk PRIMARY KEY,
Dept_Name    VARCHAR2(25),
Dept_Tel     VARCHAR2(12) );

CREATE TABLE Student (
Dept_ID      VARCHAR2(10),
Year         VARCHAR2(1),
Student_ID   VARCHAR2(7),
Name         VARCHAR2(10)   NOT NULL,
ID_Number    VARCHAR2(14)   NOT NULL CONSTRAINT Student_uk UNIQUE,
Address      VARCHAR2(40),
Telephone    VARCHAR2(13),
Email        VARCHAR2(20),
Status       VARCHAR2(1),
I_Date       DATE,
CONSTRAINT   Student_pk      PRIMARY KEY (Student_ID),
CONSTRAINT   Student_fk      FOREIGN KEY (Dept_ID)
                             REFERENCES Department);
                             
                             
CREATE  TABLE  Professor (
Professor_ID   VARCHAR2(3),
Name           VARCHAR2(10)  NOT NULL,
Position       VARCHAR2(10)  NOT NULL CONSTRAINT Professor_ck
        CHECK (Position in ('총장','교수','부교수','조교수','초빙교수')),
Dept_ID        VARCHAR2(10),
Telephone      VARCHAR2(12)  CONSTRAINT Professor_uk UNIQUE,
Email          VARCHAR2(20),
Duty           VARCHAR2(10),
Mgr            VARCHAR2(3), 
CONSTRAINT     Professor_pk  PRIMARY KEY (Professor_ID),
CONSTRAINT     Professor_fk  FOREIGN KEY (Dept_ID)
                             REFERENCES Department);
                             
CREATE  TABLE  Course (
Course_ID      VARCHAR2(5),
Title          VARCHAR2(40) NOT NULL,
C_Number       NUMBER(1)    NOT NULL,
Professor_ID   VARCHAR2(3),
Course_Fees    NUMBER(7),
CONSTRAINT     Course_pk    PRIMARY KEY (Course_ID),
CONSTRAINT     Course_fk    FOREIGN KEY (Professor_ID)
                            REFERENCES   Professor); 
                    
CREATE  TABLE  SG_Scores (
Student_ID     VARCHAR2(7),
Course_ID      VARCHAR2(5),
Score          NUMBER(3),
Grade          VARCHAR2(2),
Score_Assigned DATE          DEFAULT  SYSDATE,
CONSTRAINT     SG_Scores_pk  PRIMARY KEY (Student_ID, Course_ID),
CONSTRAINT     SG_Scores_fk1 FOREIGN KEY (Student_ID)
                             REFERENCES   Student,
CONSTRAINT     SG_Scores_fk2 FOREIGN KEY (Course_ID)
                             REFERENCES   Course);
                             
CREATE TABLE Score_Grade (
LOW    NUMBER(3),
HIGH   NUMBER(3),
GRADE  CHAR(2));

CREATE  TABLE  T_Course 
AS 
   SELECT * 
   FROM   Course
   WHERE  10=20;

CREATE TABLE T_SG_Scores
AS
   SELECT *
   FROM   SG_Scores
   WHERE  10 = 20;

INSERT INTO Department VALUES ('대학','대학본부',      '765-4000');
INSERT INTO Department VALUES ('컴공','컴퓨터공학과',  '765-4100');
INSERT INTO Department VALUES ('정통','정보통신공학과','765-4200');
INSERT INTO Department VALUES ('경영','경영학과',      '765-4400');
INSERT INTO Department VALUES ('행정','세무행정학과',  '765-4500');

INSERT INTO Student  VALUES ('컴공','3','C1601','한영삼','000708-3******','부산시 동래구',  '010-7999-0101', 'c1601@cyber.ac.kr', Null,'2016/02/26');
INSERT INTO Student  VALUES ('컴공','3','C1602','서희경','990205-2******','서울시 영등포구','010-4333-0707', 'c1602@cyber.ac.kr', Null,'2016/02/26');
INSERT INTO Student  VALUES ('컴공','2','C1701','이정민','011109-4******','대구시 수성구',  Null,            'c1701@cyber.ac.kr', Null,'2017/03/02');
INSERT INTO Student  VALUES ('컴공','2','C1702','박주영','020917-3******','경남 진해시',   '010-8555-1616',  'c1702@cyber.ac.kr', Null,'2017/03/02');
INSERT INTO Student  VALUES ('정통','2','T1702','이정필','001117-3******','충남 천안시',    Null,            't1702@cyber.ac.kr', Null,'2017/03/02');
INSERT INTO Student  VALUES ('경영','2','B1701','배상문','961225-1******','대전시 동구읍',  Null,            'b1701@cyber.ac.kr', Null,'2017/03/02');
INSERT INTO Student  VALUES ('행정','1','A1701','이미나','001217-4******','전남 광양시',    '010-3888-5050',  Null,               Null,'2017/03/02');
INSERT INTO Student  VALUES ('컴공','1','C1801','김대현','020121-3******','서울시 송파구',  '010-3932-9999', 'c1801@cyber.ac.kr', Null,'2018/02/28');
INSERT INTO Student  VALUES ('컴공','1','C1802','신지애','020521-4******','대전시 대덕구',  '010-6343-8838', 'c1802cyber.ac.kr',  'H', '2018/02/28');
INSERT INTO Student  VALUES ('정통','1','T1801','김병호','991124-1******','대구시 달서구',  '011-1222-0303',  Null,               Null,'2018/02/28');
INSERT INTO Student  VALUES ('경영','1','B1801','김빛나','030422-4******','서울시 은평구',  Null,             Null,               Null,'2018/02/28');

INSERT INTO Professor VALUES ('P00', '서한식', '총장',   '대학','765-4000','hsseo@cyber.ac.kr', '총장',    NULL);
INSERT INTO Professor VALUES ('P11', '신기술', '교수',   '컴공','765-4111','ksshin@cyber.ac.kr','학과장', 'P00');
INSERT INTO Professor VALUES ('P12', '이대호', '부교수', '컴공','765-4112','dhlee@cyber.ac.kr',  Null,    'P11');
INSERT INTO Professor VALUES ('P13', '유소연', '조교수', '컴공','765-4113','syyoo@cyber.ac.kr',  Null,    'P11');
INSERT INTO Professor VALUES ('P21', '박지성', '부교수', '정통','765-4211','jspark@cyber.ac.kr','학과장', 'P00');
INSERT INTO Professor VALUES ('P22', '김하늘', '부교수', '정통','765-4212','hnkim@cyber.ac.kr',  Null,    'P21');
INSERT INTO Professor VALUES ('P23', '이상혁', '조교수', '정통','765-4213','shlee@cyber.ac.kr',  Null,    'P21');
INSERT INTO Professor VALUES ('P24', '최경주', '조교수', '정통','765-4214','kjchoi@cyber.ac.kr', Null,    'P21');
INSERT INTO Professor VALUES ('P41', '안연홍', '부교수', '경영','765-4411','yhahn@cyber.ac.kr', '학과장', 'P00');
INSERT INTO Professor VALUES ('P51', '함영애', '부교수', '행정','765-4511','yaham@cyber.ac.kr', '학과장', 'P00');

INSERT INTO Course VALUES ('L0011','TOEIC연구',     2, Null,Null);
INSERT INTO Course VALUES ('L0012','문학과 여행',   2, Null,Null);
INSERT INTO Course VALUES ('L0013','문학개론',      2, Null,Null);
INSERT INTO Course VALUES ('L1011','컴퓨터구조',    2,'P11',Null);
INSERT INTO Course VALUES ('L1012','웹디자인',      2, Null,20000);
INSERT INTO Course VALUES ('L1021','데이터베이스',  2,'P12',Null);
INSERT INTO Course VALUES ('L1022','정보통신개론',  2,'P21',Null);
INSERT INTO Course VALUES ('L1031','SQL',           3,'P12',30000);
INSERT INTO Course VALUES ('L1032','자바프로그래밍',3,'P13',Null);
INSERT INTO Course VALUES ('L1041','컴퓨터네트워크',2,'P21',Null);
INSERT INTO Course VALUES ('L1042','Delphi',        3,'P13',50000);
INSERT INTO Course VALUES ('L1051','웹서버관리',    2,'P11',Null);
INSERT INTO Course VALUES ('L1052','전자상거래',    3,'P22',30000);
INSERT INTO Course VALUES ('L2031','게임이론',      3,'P23',50000);
INSERT INTO Course VALUES ('L2061','스프링프레임워크',3, Null,50000);

INSERT INTO SG_Scores VALUES ('C1601','L1011',  93, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1601','L1021', 105, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1601','L0011',  68, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1601','L1031',  82, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1601','L1032',  78, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1601','L1041',  87, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1601','L1051',  87, Null, '2018/06/28');
INSERT INTO SG_Scores VALUES ('C1602','L0011',  98, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1602','L1011',  87, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1602','L1021',  98, Null, '2016/12/27');
INSERT INTO SG_Scores VALUES ('C1602','L1031',  94, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1602','L1041',  77, Null, '2018/06/28');
INSERT INTO SG_Scores VALUES ('C1602','L1051',  77, Null, '2018/06/28');
INSERT INTO SG_Scores VALUES ('C1701','L1011',  97, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1701','L1021',  96, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1701','L1031',  96, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1701','L1022',  97, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1701','L1042',  83, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1701','L1032',  93, Null, '2018/06/28');
INSERT INTO SG_Scores VALUES ('C1701','L1051',  89, Null, '2018/06/29'); 
INSERT INTO SG_Scores VALUES ('C1702','L1011',  89, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1702','L1021',  96, Null, '2017/06/29');
INSERT INTO SG_Scores VALUES ('C1702','L1031',  86, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1702','L1022',  87, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1702','L1042',  98, Null, '2017/12/23');
INSERT INTO SG_Scores VALUES ('C1702','L1032',  97, Null, '2018/06/28');
INSERT INTO SG_Scores VALUES ('C1702','L1051',  84, Null, '2018/06/29'); 
INSERT INTO SG_Scores VALUES ('C1801','L1031',  85, Null, '2018/06/27');
INSERT INTO SG_Scores VALUES ('C1802','L1031',  77, Null, '2018/06/27');
INSERT INTO SG_Scores VALUES ('C1701','L2061',Null, Null, '2018/08/26');
INSERT INTO SG_Scores VALUES ('C1702','L2061',Null, Null, '2018/08/26');
INSERT INTO SG_Scores VALUES ('C1601','L2061',Null, Null, '2018/08/26'); 
INSERT INTO SG_Scores VALUES ('C1602','L2061',Null, Null, '2018/08/26');

INSERT INTO T_Course VALUES ('L1031','SQL응용',       3,'P12',50000);
INSERT INTO T_Course VALUES ('L1032','JAVA',          3,'P13',30000);
INSERT INTO T_Course VALUES ('L1043','JSP프로그래밍', 3, NULL,50000);
INSERT INTO T_Course VALUES ('L2033','게임프로그래밍',3,'P24',40000);
INSERT INTO T_Course VALUES ('L4011','경영정보시스템',3,'P41',30000);
INSERT INTO T_Course VALUES ('L4012','세무행정학',    3,'P51',50000);

INSERT INTO SCORE_GRADE VALUES (95,100,'A+');
INSERT INTO SCORE_GRADE VALUES (90, 94,'A ');
INSERT INTO SCORE_GRADE VALUES (85, 89,'B+');
INSERT INTO SCORE_GRADE VALUES (80, 84,'B ');
INSERT INTO SCORE_GRADE VALUES (75, 79,'C+');
INSERT INTO SCORE_GRADE VALUES (70, 74,'C ');
INSERT INTO SCORE_GRADE VALUES (65, 69,'D+');
INSERT INTO SCORE_GRADE VALUES (60, 64,'D ');
INSERT INTO SCORE_GRADE VALUES ( 0, 59,'F ');

create table EC_Product(
    Product_Code VARCHAR2(10) not null PRIMARY KEY,
    Product_Name varchar2(10) not null,
    Standard varchar2(20),
    Unit varchar2(10),
    Unit_Prie number(7) not null,
    Left_Qty number(5) not null,
    Company varchar2(20),
    ImageName varchar2(20),
    Info varchar2(50),
    Detail_Info varchar2(255)
);

create table EC_Member(
    User_ID varchar2(10) not null primary key,
    Passwd varchar2(10) not null, 
    Name varchar2(10) not null,
    Regist_No varchar2(14) not null constraint EC_Member UNIQUE,
    Email varchar2(20),
    Telephone varchar2(13) not null,
    Address varchar2(40),
    Buycash number(9) default 0,
    Timestamp date DEFAULT SYSDATE
);

create table EC_Basket(
    Order_No varchar2(10) not null primary key,
    Order_ID varchar2(10) not null, foreign key(Order_ID) REFERENCES EC_Member(USER_ID),
    Product_Code varchar2(10) not null, foreign key(Product_Code) REFERENCES EC_Product(Product_Code),
    Order_Qty number(3) not null, 
    Order_Date date DEFAULT SYSDATE
);

Create table EC_Order(
    Order_No varchar2(10) not null primary key,
    Order_ID varchar2(10) not null,
    Product_Code varchar2(10) not null,
    Order_Qty number(3) not null,
    Csel varchar2(10),
    CMoney number(9),
    Cdate date,
    Mdate date,
    Gubun varchar2(10)
);
create table Board(
    B_ID number(5) not null primary key,
    B_Name varchar2(20) not null,
    B_Pwd varchar2(20) not null,
    B_Email varchar2(20) not null,
    B_Title varchar2(80) not null,
    B_Content varchar2(2000) not null,
    B_Date date DEFAULT SYSDATE,
    B_Hit number(5) DEFAULT 0,
    B_Ip varchar2(15)
);
alter table Board ADD(B_Ref number(5) default 0, B_Step number(5) default 0, B_Order number(5) default 0);
alter table Board MODIFY (B_Title varchar2(100));
alter table Board MoDIFY (B_Pwd varchar2(20) null);
alter table Board Drop COLUMN B_Ip;
alter table EC_Member add constraint User_ID check(User_ID>='a' and USER_ID<='z');
insert into EC_Member (UserID, Passwd, Name, Regist_No, Telephone) values ('Srlee', '1234', '이소라', '821001-2******','010-1234-1234');
insert into EC_Member (UserID, Passwd, Name, Regist_No, Telephone) values ('20park', '1234', '박연수', '810604-1******','010-2345-2345');
alter table Board rename column B_Step to B_Level;
alter table EC_Order drop PRIMARY key;
alter table Board add unique(B_Email);
rename Board to Free_Board;
drop table EC_Basket;
select * from department;
select distinct Dept_id from Professor;
select distinct Dept_id as "소속학과" from Professor;
select Course_id as "과목코드", Title as "과목명", C_Number as "학점수" from Course;
select Course_id as "과목코드", Title as "과목명", C_Number as "학점수" from Course order by 과목명 asc;
select Course_id as "과목코드", Title as "과목명", C_Number as "학점수", C_Number*30000+COURSE_FEES as "과목별 수강료" 
from Course order by "과목별 수강료" desc, "과목코드" asc;
select name from Professor where position='교수' and Dept_id='컴공';
select title from course where course_fees >= 30000 order by course_fees desc; 
select dept_id, year, name from student where dept_id='컴공' and year=2;
select * from student where dept_id='컴공'and year=2;
select Dept_ID||'학과'||name||position||'의 전화번호는'||Telephone||'이다' from professor;
select * from student where name like '_정_';
select * from student where not (name like '이%' or name like '김%');
select * from professor where dept_ID in('컴공', '정통') order by dept_id asc; 
select * from professor where dept_ID not in('컴공', '정통') order by dept_id asc; 
select * from SG_Scores where score between 90 and 94 order by score desc;
select * from SG_Scores where score not between 60 and 100 order by score;
select * from Course where course_fees is null order by title;
select * from Course where course_fees is not null order by title;
commit;
DROP TABLE EC_Order;
DROP TABLE EC_Basket;
DROP TABLE EC_Member;
DROP TABLE EC_Product;
CREATE TABLE EC_Product (
Product_Code    VARCHAR2(10),
Product_Name    VARCHAR2(20)  NOT NULL,
Standard        VARCHAR2(20),
Unit            VARCHAR2(10),
Unit_Price      NUMBER(7)     NOT NULL,
Left_Qty        NUMBER(5),
Company         VARCHAR2(20),
ImageName       VARCHAR2(20),
Info            VARCHAR2(80),
Detail_Info     VARCHAR2(255),
CONSTRAINT      EC_Product_pk PRIMARY KEY (Product_Code));
CREATE TABLE EC_Member (
UserID         VARCHAR2(10)  CONSTRAINT EC_Member_ck
               CHECK (UserID BETWEEN 'a' AND 'z'),
Passwd         VARCHAR2(10)  NOT NULL,
Name           VARCHAR2(10)  NOT NULL,
Regist_No      VARCHAR2(14)  NOT NULL CONSTRAINT EC_Member_uk UNIQUE,
Email          VARCHAR2(20),
Telephone      VARCHAR2(13)  NOT NULL,
Address        VARCHAR2(40),
BuyCash        NUMBER(9)     DEFAULT  0,
Timestamp      DATE          DEFAULT  SYSDATE,
CONSTRAINT     EC_Member_pk  PRIMARY KEY (UserID) );
CREATE TABLE EC_Basket (
Order_No      VARCHAR2(10),
Order_ID      VARCHAR2(10)   NOT NULL,
Product_Code  VARCHAR2(10)   NOT NULL,
Order_Qty     NUMBER(3)      NOT NULL,
Order_date    Date           Default    SYSDATE,
CONSTRAINT    EC_Basket_pk   PRIMARY KEY (Order_NO),
CONSTRAINT    EC_Basket_fk1  FOREIGN KEY (Order_ID)
                             REFERENCES   EC_Member,
CONSTRAINT    EC_Basket_fk2  FOREIGN KEY (Product_Code)
                             REFERENCES   EC_Product);
CREATE TABLE EC_Order (
Order_No      VARCHAR2(10),
Order_ID      VARCHAR2(10)   NOT NULL,
Product_Code  VARCHAR2(10)   NOT NULL,
Order_Qty     NUMBER(3)      NOT NULL,
CSel          VARCHAR2(30),
CMoney        NUMBER(9),
CDate         DATE,
MDate         DATE,
Gubun         VARCHAR2(10),
CONSTRAINT    EC_Order_pk    PRIMARY KEY (Order_NO) );
commit;
INSERT INTO EC_Product VALUES ('NB01', '노트북컴퓨터','GT633',       '대', 930000, 15,'SAMSUNG', 'nb01.jpg', '인텔 i5-460M 2.53GHz: RAM 4GB: HDD 500GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES ('NB02', '노트북컴퓨터','U35JC',       '대', 750000, 10,'SAMSUNG', 'nb02.jpg', '인텔 i5-450M 2.40GHz: RAM 4GB: HDD 500GB: 13.3" 모니터', Null);
INSERT INTO EC_Product VALUES ('NB03', '노트북컴퓨터','DV6',         '대', 665000, 10,'HP',      'nb03.jpg', '인텔 i3-350M 2.66GHz: RAM 2GB: HDD 250GB: 15.6" 모니터', Null);
INSERT INTO EC_Product VALUES ('CM01', '개인용컴퓨터','HPE-340KL',   '대', 747000, 30,'HP',      'cm01.jpg', '인텔 i750 2.66GHz: RAM 4GB: HDD 1TB: GeForce GTX260',    Null);
INSERT INTO EC_Product VALUES ('CM02', '개인용컴퓨터','DM-C200',     '대', 434000, 20,'Samsung', 'cm02.jpg', '인텔 E5700 3.00GHz: RAM 2GB: HDD 320GB: 내장그래픽',     Null);
INSERT INTO EC_Product VALUES ('CM03', '개인용컴퓨터','T30MS',       '대', 740000, 20,'LG전자',  'cm03.jpg', '인텔 E6700 3.20GHz: RAM 2GB: HDD 500GB: GeForce GT220',  Null);
INSERT INTO EC_Product VALUES ('PRT01','프린터',      'CLX-3185WK',  '대', 235000, 10,'SAMSUNG', 'pt01.jpg', '무선컬러레이저복합기: 600DPI: 개인용',                   Null);
INSERT INTO EC_Product VALUES ('PRT02','프린터',      'CLP-325WK',   '대', 860000,  3,'SAMSUNG', 'pt02.jpg', '무선칼러레이저: 1200DPI: 오피스용',                      Null);
INSERT INTO EC_Product VALUES ('PRT03','프린터',      'K8600',       '대', 272000, 10,'HP',      'pt03.jpg', '잉크젯: 1200DPI: 칼러인쇄 10PPM: 개인용',                Null);
INSERT INTO EC_Product VALUES ('PRT04','프린터',      'CP3525DN',    '대', 482000,  5,'HP',      'pt04.jpg', '칼러레이저젯: 30PPM: USB2.0: 양면: 오피스용',            Null);
INSERT INTO EC_Product VALUES ('TV01', 'TV',          'LN46C632M1F', '대',1060000, 10,'SAMSUNG', 'tv01.jpg', 'PAVV LCD 632: 46" 스탠드형',                             Null);
INSERT INTO EC_Product VALUES ('TV02', 'TV',          '47LD452',     '대', 980000, 10,'LG전자',  'tv02.jpg', 'Xcanvas 120Hz Full-HD급 47": 벽결이형(슬림)',            Null);
INSERT INTO EC_Product VALUES ('TV03', 'TV',          'UN46C8000XF', '대',1785000,  5,'samsung', 'tv03.jpg', 'PAVV 3D LED Full HD: 46"',                               Null);
INSERT INTO EC_Product VALUES ('TV04', 'TV',          '47LX9500',    '대',1920000,  5,'LG전자',  'tv04.jpg', '3D Full LED Slim: 47"',                                  Null);
INSERT INTO EC_Product VALUES ('DK01', '책상',        '1200x745x750','개',  53000,100, Null,     'dk01.jpg',  '사무용 컴퓨터 책상',                                    Null);
INSERT INTO EC_Product VALUES ('CH01', '의자',        '회전용',      '개',  70000,100, Null,     'ch01.jpg', '회전의자: 590x640x980',                                  Null);
COMMIT;
INSERT INTO EC_Member VALUES ('jupark','1234','박지운','951214-1******',Null,'011-8011-2923','서울특별시 영등포구',Null, '2017/07/11');
INSERT INTO EC_Member VALUES ('imjung','1234','정일미','860807-2******',Null,'011-2242-6666','서울특별시 송파구',  Null, '2017/06/01');
INSERT INTO EC_Member VALUES ('shchoi','1234','최상희','630125-2******',Null,'010-2411-5558','광주광역시 동구',    Null, '2017/11/10'); 
INSERT INTO EC_Member VALUES ('uskang','1234','강욱선','810911-2******',Null,'010-7899-6547','경북 경주시',        Null, '2017/02/01');
INSERT INTO EC_Member VALUES ('kcchoi','1234','최광수','690514-1******',Null,'010-5556-9998','인천광역시 서구',    Null, '2017/05/31');
INSERT INTO EC_Member VALUES ('cscho', '1234','조철상','650707-1******',Null,'010-8884-8884','서울특별시 은평구',  Null, '2017/09/15');
INSERT INTO EC_Member VALUES ('hskim', '1234','김혜수','831122-2******',Null,'010-8228-1112','광주광역시 북구',    Null, '2018/01/14');
INSERT INTO EC_Member VALUES ('sbhong','1234','홍서빈','800110-2******',Null,'010-3922-9921','제주도 서귀포시',    Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('mhlee', '1234','이민형','820222-1******',Null,'010-1020-1010','강원도 춘천시',      Null, '2018/03/03');
INSERT INTO EC_Member VALUES ('jskang','1234','강준상','920303-1******',Null,'010-1115-3333','강원도 원주시',      Null, '2018/04/08');
INSERT INTO EC_Member VALUES ('usko',  '1234','고우선','010102-4******',Null,'010-8874-1452','서울특별시 강남구',  Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('supark','1234','박세우','030914-3******',Null,'010-6666-8745','부산광역시 동래구',  Null, '2018/02/01');
INSERT INTO EC_Member VALUES ('mskim', '1234','김미선','020506-4******',Null,'010-8887-3254','대구광역시 달서구',  Null, '2018/07/11');
INSERT INTO EC_Member VALUES ('ujjung','1234','정유진','901225-2******',Null,'011-2833-9383','서울특별시 종로구',  Null, '2018/07/11');
INSERT INTO EC_Member VALUES ('shlee', '1234','이상혁','870709-1******',Null,'011-8766-9876','대전광역시 유성구',  Null, '2018/07/15');
INSERT INTO EC_Member VALUES ('uychoi','1234','최윤영','911010-2******',Null,'010-6669-7777','대구광역시 수성구',  Null, '2018/07/15'); 

INSERT INTO EC_Basket VALUES  ('180711001','usko', 'TV01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711002','hskim','CM01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711003','mskim','TV01',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711004','mhlee','NB02',1,'2018/07/11');
INSERT INTO EC_Basket VALUES  ('180711005','mhlee','CM03',1,'2018/07/11');

INSERT INTO EC_Order VALUES ('180205001','usko',  'NB01', 1,'신용카드', 930000,'2018/02/15','2018/02/16','배달');
INSERT INTO EC_Order VALUES ('180204001','supark','NB02', 1,'현금입금', 750000,'2018/02/24','2018/02/25','배달');
INSERT INTO EC_Order VALUES ('180311001','supark','PRT01',1,'현금입금', 235000,'2018/03/11','2018/03/12','배달');
INSERT INTO EC_Order VALUES ('180315001','imjung','TV03', 1,'신용카드',1785000,'2018/03/15','2018/03/17','배달');
INSERT INTO EC_Order VALUES ('180403001','uskang','PRT03',1,'현금입금', 272000,'2018/04/03','2018/04/05','배달');
INSERT INTO EC_Order VALUES ('180412001','cscho', 'CM03', 1,'계좌이체', 740000,'2018/04/12','2018/04/15','배달');
INSERT INTO EC_Order VALUES ('180505001','jskang','TV01', 1,'계좌이체',1060000,'2018/05/07',Null,        '취소'); 
INSERT INTO EC_Order VALUES ('180505002','kcchoi','DK01', 1,'신용카드',  53000,'2018/05/07',Null,        '결제');
INSERT INTO EC_Order VALUES ('180505003','kcchoi','CH01', 1,'계좌이체',  70000,'2018/05/07',Null,        '결제');
INSERT INTO EC_Order VALUES ('180707001','jupark','CM01', 5, Null,     3735000, Null,       Null,        Null);
INSERT INTO EC_Order VALUES ('180707002','jupark','PRT02',5, Null,     4300000, Null,       Null,        Null);
INSERT INTO EC_Order VALUES ('180707003','cscho', 'CM01' ,1, Null,      747000, Null,       Null,        Null);

select product_code, product_name, unit_price from EC_product where unit_price>1000000;
select userID, name regist_no, address from EC_Member where address like '서울특별시%';
select order_ID, product_code from EC_basket where order_date='2018-07-11'; 
select order_no, product_code, order_qty, csel, cmoney, mdate, gubun from Ec_order where not gubun='배달' or gubun is null;
select userid, name, regist_no from EC_member where name like '%우%';
select order_no, order_id, product_code, csel, gubun from EC_order where not csel='신용카드' order by order_id; 
select product_code, product_name, unit_price, left_qty, company from Ec_product 
where unit_price>=300000 and unit_price<500000 order by unit_price desc;
select order_no, order_id, product_code, order_qty, cmoney, gubun from EC_order where csel is null;
select order_id, product_code, order_qty, csel, cmoney, gubun from ec_order where order_id='usko';
insert into T_course values('L1061', 'ERP', 3, 'p12', 50000);
insert into T_course values('L1062', '그룹웨어구축', 3, 'p13', 40000);
insert into sg_scores values('B1701', 'L1051',85,null,'2018-06-28');
insert into course values('L3041', 'JQUERY', 3, 'p31', 30000);--기본키인 course_id가 중복으로 저장함
insert into course values('L1031', 'SQL', 3, 'p12', 30000);--기본키인 course_id가 중복으로 저장함
insert into course values('정보보안', 3,'p22',30000);--기본키가 null값이라서 오류
insert into Professor values('p14', '조성우', '조교수', '컴공','765-4114', null,null,null);
insert into student values('컴공', 2,'c1731','박은혜','011109-4**',null,null,'c1731@cyber.ac.kr',null,null);
insert into student values('컴공', 2,'c1731','박은혜','011109-4**',null,null,'c1731@cyber.ac.kr',null,null);
insert into professor values('p91', 'BOb Miner', '시간강사', '컴공', '765-4119', null, null, null);
--professor에 컬럼 position에 값이 커서 안들어감
insert into SG_scores values('c1731', 'L1021', 97,null, '2018-06-28');
commit;
--alter table department rename column dept_name to "컴퓨터정보계열";
--select * from department;
rollback;
update course set title='델파이' where title='Delphi';
update sg_scores set score=85 where student_id='C1601' and course_id='L1021' and score=105; 
select course_id from sg_scores where course_id='L2061';
alter table sg_scores add (title varchar2(40));
update sg_scores set title=null;
update sg_scores set title='스프링프레임워크',score_assigned='2018=12-26' 
where course_id='L2061';
update sg_scores set score=87 where student_id='C1701' and course_id='L2061';
update sg_scores set score=87 where student_id='C1702' and course_id='L2061';
update sg_scores set score=99 where student_id='C1601' and course_id='L2061';
update sg_scores set score=93 where student_id='C1602' and course_id='L2061';
delete from course where course_id='L0012' and title='문학과 여행';
insert into ec_product(product_code, product_name, standard, unit_price, left_qty, company, imagename)
values('SP01', '아이폰', 'IPHONE8+64G', 816000, 10, 'APPLE', 'sp01.jpg');
insert into ec_product(product_code, product_name, standard, unit_price, left_qty, company, imagename)
values('SP02', '갤럭시노트', 'NOTE8+256G', 829000, 15, 'SAMSUNG', 'sp02.jpg');
insert into ec_product(product_code, product_name, standard, unit_price, left_qty, company, imagename)
values('SP03', 'G7 ThinQ', 'G7+128G', 822000, 10, 'LG전자', 'sp03.jpg');
update ec_order set gubun='배달' where order_id='kcchoi';
select order_no, order_id, product_code, order_qty, cdate, gubun from ec_order where order_id='kcchoi';
update ec_order set csel='신용카드', cdate='2018-07-12', mdate='2018-07-12',gubun='결제' where (order_id='jupark' or order_id='cscho') and order_no in(180707001, 180707002, 180707003); 
select order_no, order_id, cmoney, cmoney as Payment_amount, csel, cdate, gubun from ec_order where order_no in(180707001, 180707002, 180707003);
select order_no, product_code, order_qty, cmoney, csel, cdate from Ec_order where cdate='2018-07-12' order by order_no asc;
update ec_member set BUYCASH=0 where BUYCASH is null;