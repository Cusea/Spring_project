
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
	admin number(1) not null,
	gender varchar2(20) not null,
	mypage varchar2(100) not null,
	imageadd varchar2(100) not null,
	signup_Time timestamp not null,
	withdraw timestamp,
	likeTipList varchar2(4000)
);

