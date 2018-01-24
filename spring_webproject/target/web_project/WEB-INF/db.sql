
-- tablespace 생성 전 삭제
drop tablespace japan_DB including contents and datafiles;

-- tablespace 생성
create tablespace japan_DB
datafile 'C:/oraclexe/app/oracle/oradata/XE/japan_DB.dbf'
size 200m
autoextend on next 10m
maxsize 500m;

-- tablespace datafile 확인
-- select * from dba_data_files where tablespace_name='japan_DB';

-- 유저 삭제 후 생성
drop user japan_dba cascade;

create user japan_dba identified by dba123
default tablespace japan_DB quota unlimited on japan_DB
temporary tablespace temp;

-- 유저에게 DBA 권한 주기
grant connect, resource, dba to japan_dba;

-- 접속
conn japan_dba/dba123

-- 1. 회원 table 생성
create sequence users_seq start with 1 increment by 1;
create table users(
	num number(8) constraint users_pk_num primary key,
	email varchar2(320) constraint users_uk_email unique,
	pw varchar2(40) not null,
	name varchar2(30) not null,
	admin number(1) constraint users_ck_admin default 1 check admin in(0,1,2),	-- 0:관리자, 1:일반유저, 2:탈퇴유저
	gender varchar2(20) constraint users_ck_gender check gender in('F','M'),
	mypage varchar2(100) constraint users_uk_mypage unique,
	signupTime timestamp not null,
	imageadd varchar2(100),
	withdraw timestamp,
	likeTipList varchar2(4000)
);

insert into users(num, email, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'admin@test.com', '123', '관리자', 0, 'M', '/admin123', sysdate, '/resources/img/user.png');
insert into users(num, email, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'user1@test.com', '123', '유저1', 1, 'M', '/user1', sysdate, '/resources/img/user.png');
insert into users(num, email, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'user2@test.com', '123', '유저2', 1, 'F', '/user2', sysdate, '/resources/img/user.png');

-- 2. 도시 table 생성
create sequence city_seq start with 1 increment by 1;
create table city(
	num number(8) constraint city_pk_num primary key,
	area varchar2(100) not null, 		-- 지역 이름 넣을 것 ex: 규슈, 간사이, 훗카이도 ..... 
	imageaddList varchar2(4000)
);

-- 3.category table 생성
create sequence category_seq start with 1 increment by 1;
create table category(
	num number(8) constraint category_pk_num primary key,
	main_category not null,
	mid_category,					-- main_category가 관광 명소이면 있고, 나머지는 없음
	sub_category not null			
);

-- 4. place table 생성
create sequence place_seq start with 1 increment by 1;
create table place(
	num number(8) constraint place_pk_num primary key,
	name_ko varchar2(300) constraint place_uk_name_ko unique,
	name_en varchar2(300),
	summary varchar2(1200) not null,
	wayToGo varchar2(1200) not null,
	tel varchar2(50),
	open_time varchar2(1200) not null,
	address varchar2(600) not null,
	imageaddList varchar2(4000) not null,
	homepage varchar2(1000),
	category_num number(8) constraint place_fk_category_num references category(num) not null,
	city_num number(8) constraint place_fk_city_num references city(num) not null,
	clipCount number(8) default 0
);

-- 5. message table 생성
create sequence message_seq start with 1 increment by 1;
create table message(
	num number(8) constraint message_pk_num primary key,
	users_num number(8) constraint message_fk_users_num references users(num) not null,
	text varchar2(300) not null,
	sendDate timestamp not null,
	ischeck number(1) constraint users_ck_gender check ischeck in(0,1) 		-- 0: 확인 x, 1:확인함
);

-- 6. clip table 생성
create sequence clipe_seq start with 1 increment by 1;
create table clip(
	num number(8) constraint clip_pk_num primary key,
	users_num number(8) constraint message_fk_users_num references users(num) not null,
	place_num number(8) constraint message_fk_place_num references place(num) not null,
	inDate timestamp not null,
	memo varchar2(300)
);

-- 7. tag table 생성
create table TAG(
	name varchar(30) constraint tag_pk_name primary key
);

insert into TAG values ('오사카');
insert into TAG values ('후쿠오카');
insert into TAG values ('오사카 맛집');