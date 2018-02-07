
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
	id varchar2(320) constraint users_uk_id unique,
	pw varchar2(40) not null,
	name varchar2(30) not null,
	admin number(1) constraints users_ck_admin check(admin in(0,1,2)),			-- 0:관리자, 1:일반유저, 2:탈퇴유저
	gender varchar2(20) constraint users_ck_gender check(gender in('F','M')),
	mypage varchar2(100) constraint users_uk_mypage unique,
	signupTime timestamp not null,
	imageadd varchar2(100),
	withdraw timestamp,
	likeTipList varchar2(4000)
);

insert into users(num, id, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'admin@test.com', '123', '관리자', 0, 'M', '/admin123', sysdate, '/img/user.png');
insert into users(num, id, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'user1@test.com', '123', '유저1', 1, 'M', '/user1', sysdate, '/img/user.png');
insert into users(num, id, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'user2@test.com', '123', '유저2', 1, 'F', '/user2', sysdate, '/img/user.png');
insert into users(num, id, pw, name, admin, gender, mypage, signupTime, imageadd)
	values(users_seq.nextval, 'user3@test.com', '123', '유저3', 1, 'F', '/user3', sysdate, '/img/user.png');

commit;

-- 2. 도시 table 생성
create sequence city_seq start with 1 increment by 1;
create table city(
	num number(8) constraint city_pk_num primary key,
	area varchar2(100) not null, 		-- 도시 이름 넣을 것
	imageaddList varchar2(4000)
);

insert into city(num, area, imageaddList)
	values(city_seq.nextval,'후쿠오카', '{후쿠오카1.jpg,후쿠오카2.jpg,후쿠오카3.jpg}');
insert into city(num, area, imageaddList)
	values(city_seq.nextval,'오사카', '{오사카1.jpg,오사카2.jpg,오사카3.jpg}');
	
commit;
-- 3.category table 생성
create sequence category_seq start with 1 increment by 1;
create table category(
	num number(8) constraint category_pk_num primary key,
	main_category varchar2(60) not null,
	mid_category varchar2(60),					
	sub_category varchar2(60) not null			
);

insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','공원/정원/광장');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','건축물');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','관공서/학교');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','교통');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','유명거리/이색장소');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','랜드마크');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','박물관/미술관');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','관광지','역사/종교');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','레저/액티비티','데이투어/액티비티');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','레저/액티비티','스포츠');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','레저/액티비티','오락/이벤트');
insert into category(num, main_category, mid-category, sub-category)
	values(category_seq.nextval,'관광명소','레저/액티비티','전시/공연/관람');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','레저/액티비티','테마파크/동물원');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','레저/액티비티','웰니스/스파');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','나이트라이프','나이트스팟');
insert into category(num, main_category, mid_category, sub_category)
	values(category_seq.nextval,'관광명소','나이트라이프','펍/선술집');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '현지요리');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '카페/디저트/베이커리');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '돈까스');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '딤섬');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '면요리');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '북미요리');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '뷔페');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'음식점', '스테이크/바비큐');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '마트/식료품');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '면세점/아울렛');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '생활소품/기념품');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '쇼핑몰/백화점');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '시장/쇼핑거리');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '의류/잡화');
insert into category(num, main_category, sub_category)
	values(category_seq.nextval,'쇼핑', '전문상점');
	
commit;
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
	send_users_num number(8) constraint message_fk_send_users_num references users(num) not null,
	get_users_num number(8) constraint message_fk_get_users_users_num references users(num) not null,
	text varchar2(300) not null,
	sendDate timestamp not null,
	ischeck number(1) constraint message_ck_ischeck check(ischeck in(0,1)) 		-- 0: 확인 x, 1:확인함
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
	name varchar2(30) constraint tag_pk_name primary key
);

insert into TAG values ('오사카');
insert into TAG values ('후쿠오카');
insert into TAG values ('오사카 맛집');

commit;
-- 8. QUESTION Table 생성
create sequence question_seq start with 1 increment by 1;
create table question(
	NUM number(8) constraint question_pk_num primary key,
	USERS_num number(8) not null constraint QUESTION_fk_USERS_num references USERS(num),
	TAG_NAME varchar2(50) constraint question_fk_tag_name references tag(name),
	TEXT varchar2(4000) not null,
	TITLE varchar2(300) not null,
	indate timestamp not null
);

insert into QUESTION (NUM, USERS_num, TAG_NAME, TEXT, TITLE, indate)
	values (question_seq.nextval, 2, '오사카', '오사카 좋은지 추천좀요!!!', '오사카 좋나요?', sysdate);
insert into QUESTION (NUM, USERS_num, TAG_NAME, TEXT, TITLE, indate)
	values (question_seq.nextval, 3, '후쿠오카', '후쿠오카 좋은지 추천좀요!!!', '후쿠오카 좋나요?', sysdate);
insert into QUESTION (NUM, USERS_num, TAG_NAME, TEXT, TITLE, indate)
	values (question_seq.nextval, 2, '오사카 맛집', '오사카 맛집 추천좀요!!!', '오사카 맛집 많나요?', sysdate);

commit;
-- 9. answer table 생성
create sequence answer_seq start with 1 increment by 1;
create table ANSWER(
	NUM number(8) constraint answer_pk_num primary key,
	USERS_num number(8) not null constraint ANSWER_fk_USERS_ID references USERS(num),
	question_num number(8) constraint answer_fk_question_num references question(num),
	TAG_NAME varchar2(50) constraint ANSWER_fk_TAG_NAME references TAG(NAME),
	TEXT varchar2(4000) not null,
	indate timestamp not null
);

-- 10. review table 생성
create sequence review_seq start with 1 increment by 1;
create table review(
	num number(8) constraint review_pk_num primary key,
	users_num number(8) constraint review_fk_users_num references users(num) not null,
	reference_num number(8) not null,		
	check_ref_num number(1) constraint review_ck_check_ref_num check(check_ref_num in (0,1,2)),
	text varchar2(4000) not null,
	indate timestamp not null
);
-- 리뷰를 단 테이블의 pk num을 reference_num에 저장, 참조는 안하고 자바에서 check_ref_num을 확인해서
-- 0: place_num, 1:planInfo_num, 2:Tip_num으로 reference_num을 넣어준다

-- 11. planInfo table 생성
create sequence planInfo_seq start with 1 increment by 1;
create table planInfo(
	num number(8) constraint planInfo_pk_num primary key,
	users_num number(8) constraint planInfo_fk_users_num references users(num) not null,
	name varchar2(300) not null,
	planDay number(8) not null,
	theme number(1) constraint planInfo_ck_theme check(theme in (0,1,2,3,4)),
	isFinish number(1) constraint planInfo_ck_isFinish check(isFinish in (0,1)),
	isOpen number(1) constraint planInfo_ck_isOpen check(isOpen in (0,1))
);
-- theme 는 0:가족여행, 1:나홀로 여행, 2:커플 여행, 3:친구와 함께, 4: 비지니스 여행

-- 12. planDetail table 생성
create sequence planDetail_seq start with 1 increment by 1;
create table planDetail(
	num number(8) constraint planDetail_pk_num primary key,
	plan_num number(8) constraint planDetail_fk_plan_num references planInfo(num) not null,
	day number(4) not null,
	data varchar2(4000)
);

-- 13. contactUs table 생성
create sequence contactUs_seq start with 1 increment by 1;
create table contactUs(
	num number(8) constraint contactUs_pk_num primary key,
	email varchar2(320) not null,
	text varchar2(4000) not null,
	inTime timestamp not null,
	answer varchar2(4000),
	isanswer number(1) default 0 check(isanswer in(0,1))
);

-- 14. TipList table 생성
create sequence TipList_seq start with 1 increment by 1;
create table TipList(
 	num number(8) constraint TipList_pk_num primary key,
 	users_num number(8) constraint TipList_fk_users_num references users(num) not null,
 	place_num number(8) constraint TipList_fk_place_num references place(num) not null,
 	text varchar2(300) not null
);
 
-- 15. Tip table 생성
create sequence Tip_seq start with 1 increment by 1;
create table Tip(
 	num number(8) constraint Tip_pk_num primary key,
 	name varchar2(300) not null,
 	title varchar2(300) not null,
 	text varchar2(4000) not null,
 	tag_name varchar2(30) constraint Tip_fk_tag_name references tag(name) not null,
 	isFinish number(1) constraint Tip_ck_isFinish check(isFinish in(0,1)),
 	likeCount number(8) default 0,
 	tipList_num number(8) constraint Tip_fk_tipList_num references TipList(num) not null
);
commit;

alter table users add sessionkey varchar2(50) default 'none';
alter table users add sessionlimit timestamp;
