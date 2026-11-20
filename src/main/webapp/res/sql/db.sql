show databases;

create database db_diary;

use db_diary;

create table tbl_member(
	memNo	int	auto_increment	comment '회원번호',
	memId	varchar(20)	unique not null	comment	'회원아이디',
	memPw	varchar(20)	not null	comment	'회원비밀번호',
	memMail	varchar(50)	comment	'회원메일',
	memPhone	varchar(50)	comment '회원연락처',
	memRegDate	timestamp default CURRENT_TIMESTAMP comment '회원등록일',
	memModDate	timestamp default CURRENT_TIMESTAMP on update current_timestamp comment '회원수정일',
	primary key(memNo)
) auto_increment = 1001;   -- 1001번부터 시작

show tables;
desc tbl_member;
select * from tbl_member;

insert into tbl_member(memId, memPw, memMail, memPhone)
values('gildong', '1234', 'gildong@gamil.com', '010-1234-5678');
insert into tbl_member(memId, memPw, memMail, memPhone)
values('chanho', '0000', 'chanho@gamil.com', '010-1234-9999');

-- set @@auto_increment_increment = 3;   -- 3씩 증가 (1001 -> 1004 -> 1007)
set GLOBAL auto_increment_increment = 3; -- 3씩 증가 (1001 -> 1004 -> 1007)

insert into tbl_member(memId, memPw, memMail, memPhone)
values('seari', '1111', 'seari@gamil.com', '010-1234-7777');
insert into tbl_member(memId, memPw, memMail, memPhone)
values('seari2', '1111', 'seari2@gamil.com', '010-1234-7778');

drop table tbl_member;

select count(*) cnt from tbl_member where memId = 'gildong';

delete from tbl_member;

-- 쿼리문 쓸 때 지향하는 방법
select 
	* 
from 
	tbl_member 
where 
	memId = 'gildong';