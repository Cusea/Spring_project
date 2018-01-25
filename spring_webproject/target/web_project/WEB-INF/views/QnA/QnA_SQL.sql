drop tablespace WEB_PROJECT including contents and datafiles;

create tablespace WEB_PROJECT
datafile 'C:/oraclexe/app/oracle/oradata/XE/WEB_PROJECT.dbf'
size 100m
autoextend on next 10m
maxsize 500m;

commit;


-- 사용자 생성
create user web_dba identified by dba1234;
-- 생성한 유저에 권한주기
grant resource, connect to web_dba;
-- 연결??
grant dba to web_dba;


-- 임시 FK 참조 테이블 생성 (USER ID)  질문, 답변, 리뷰댓글 참조. table name USER 는 왜 안되는거??
create table USERS(
NUM number(8) constraint USERS_pk_num primary key,
ID varchar2(300) constraint USERS_uk_id unique
);

-- 임시 insert USER values
insert into USERS(NUM,ID)
values(1,'kdh1');
insert into USERS(NUM,ID)
values(2,'kdh2');
insert into USERS(NUM,ID)
values(3,'kdh3');


-- 임시 FK 참조 테이블 생성 (TAG NAME)  질문, 답변, 리뷰댓글 참조.
create table TAG(
NAME varchar(30) constraint tag_pk_name primary key
);

-- 임시 insert TAG values
insert into TAG values ('오사카');
insert into TAG values ('후쿠오카');
insert into TAG values ('오사카 맛집');


-- FK 참조 테이블 생성 (PLANINFO NUM) pk를 참조 할수 있나??  리뷰댓글 참조.
create table PLANINFO(
NUM number(8) constraint PLANINFO_pk_NUM primary key,
USERS_ID varchar2(300) not null constraint PLANINFO_fk_USER_ID references USERS(ID)
);

-- 임시 insert PLANINFO values
insert into PLANINFO (NUM, USERS_ID)
values (1,'kdh1');
insert into PLANINFO (NUM, USERS_ID)
values (2,'kdh2');
insert into PLANINFO (NUM, USERS_ID)
values (3,'kdh3');


-- QUESTION Table (question_num)
create table QUESTION(
NUM number(8) constraint question_pk_num primary key,
USERS_ID varchar2(300) not null constraint QUESTION_fk_USERS_ID references USERS(ID),
TAG_NAME varchar2(50) constraint question_fk_tag_name references tag(name),
TEXT varchar2(4000) not null,
TITLE varchar2(300) not null,
DATEOF date not null
);

-- 임시 insert QUESTION values
insert into QUESTION (NUM, USERS_ID, TAG_NAME, TEXT, TITLE, DATEOF)
values (1, 'kdh1', '오사카', '오사카 좋은지 추천좀요!!!', '오사카 좋나요?', sysdate);
insert into QUESTION (NUM, USERS_ID, TAG_NAME, TEXT, TITLE, DATEOF)
values (2, 'kdh2', '후쿠오카', '후쿠오카 좋은지 추천좀요!!!', '후쿠오카 좋나요?', sysdate);
insert into QUESTION (NUM, USERS_ID, TAG_NAME, TEXT, TITLE, DATEOF)
values (3, 'kdh3', '오사카 맛집', '오사카 맛집 추천좀요!!!', '오사카 맛집 많나요?', sysdate);


-- 답변 테이블, REFERENCE(0,1,2): 0(질문답변), 1(정보답변?리뷰?), 2(TIP) 답변   *REFERENCE 가 0(질문답변)을 참조하면 TITLE NOT NULL 만들기?
create table ANSWER(
NUM number(8) constraint answer_pk_num primary key,
USERS_ID varchar2(300) not null constraint ANSWER_fk_USERS_ID references USERS(id),
TAG_NAME varchar2(50) constraint ANSWER_fk_TAG_NAME references TAG(NAME),
TEXT varchar2(4000) not null,
REFERENCE number(8) not null constraint ANSWER_ck_reference check(reference in(0,1,2)),
DATEOF date not null
);

-- 임시 insert ANSWER values (TITLE 만들기)
insert into ANSWER (NUM, USERS_ID, TAG_NAME, TEXT, REFERENCE, DATEOF)
values (1, 'kdh1', '오사카', '오사카 여기 좋아요!!!', 0, sysdate);
insert into ANSWER (NUM, USERS_ID, TAG_NAME, TEXT, REFERENCE, DATEOF)
values (2, 'kdh2', '오사카 맛집', '오사카 맛집 여기 좋아요!!!', 0, sysdate);
insert into ANSWER (NUM, USERS_ID, TAG_NAME, TEXT, REFERENCE, DATEOF)
values (3, 'kdh3', '후쿠오카', '후쿠오카 여기 좋아요!!!', 0, sysdate);


-- 리뷰 테이블
create table REVIEW (
NUM number(8) constraint REVIEW_PK_NUM primary key,
USERS_ID varchar2(300) not null constraint REVIEW_fk_USER_ID references USERS(ID),
PLANINFO_NUM number(8) not null constraint REVIEW_fk_PLANINPO_NUM references PLANINFO(NUM),
TEXT varchar2(4000) not null,
DATEOF date not null
);

-- 임시 insert REVIEW values
insert into REVIEW (NUM, USERS_ID, PLANINFO_NUM, TEXT, DATEOF)
values (1, 'kdh1', 1, '여기 관광지는 아주 공기가 좋습니다.', sysdate);
insert into REVIEW (NUM, USERS_ID, PLANINFO_NUM, TEXT, DATEOF)
values (2, 'kdh2', 2, '여기 관광지는 아주 공기가 더러워요.', sysdate);
insert into REVIEW (NUM, USERS_ID, PLANINFO_NUM, TEXT, DATEOF)
values (3, 'kdh3', 3, '여기 관광지는 맛집이 아예 없네요.', sysdate);





























