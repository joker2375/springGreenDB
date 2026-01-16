select * from test2;

show tables;

create table test2 (
	idx     int not null auto_increment primary key,  /* 고유번호 */ 
	name    varchar(20) not null,                     /* 성명  */     
	age     int default 20,                           /* 나이 */
	gender  char(2) not null default '남자',           /* 성별 */
	address varchar(20)                               /* 주소 */
);

desc test2;

select * from test2;


--insert into test2 (age) values (23);
insert into test2 (name) values ('홍길동');
insert into test2 (name) values ('');
insert into test2 (name,age) values ('',0);
insert into test2 values (default,'김말숙',default,'여자','');
insert into test2 values (default,'이기자',default,default,'');
insert into test2 values (default,'김연아',29,default,'서울');
insert into test2 values (default,'소나무',55,default,'청주');
insert into test2 values (default,'오하늘',39,'여자','서울');
insert into test2 values (default,'가나다',39,'여자','제주');
insert into test2 values (default,'고인돌',39,'남자','광주');
insert into test2 values (default,'아톰',19,'여자','청주');
insert into test2 values (default,'비톰',44,'남자','제주');
insert into test2 values (default,'시톰',46,'여자','서울');

delete from test2;

desc test2;

-- 필드 구조변경(alter table 테이블명~~~)

-- test2테이블에 job필드 추가(가변길이문자 10Byte) - add column
alter table test2 add column job varchar(10);

-- 1건의 자료를 추가하시오.
insert into test2 values (default, '케이톰',45,'남자','서울','공무원');

-- job 필드를 삭제하시오. -- drop column
alter table test2 drop column job;

-- address필드의 길이를 10Byte로 변경처리 -- modify column
alter table test2 modify column address varchar(10);

-- name필드명을 irum 으로 변경하시오 -- change column
alter table test2 change column name irum varchar(20);

-- test2의 모든 내용(레코드)를 삭제하시오
delete from test2;

-- test2테이블을 삭제하시오.
drop table test2;

-- '이기자' 레코드를 삭제하시오.
delete from test2 where name='이기자';

-- '시톰' 레코드 삭제
delete from test2 where name='시톰';

-- idx가 15번 자료 삭제
delete from test2 where idx =(15);

-- idx가 16번 자료 삭제
delete from test2 where idx =(16);

-- 새로 생성되는 idx값을 15번부터 부여하시오.
alter table test2 auto_increment = 15;

-- 성명 '연습맨' 추가?
insert into test2 (name) values ('연습맨');

