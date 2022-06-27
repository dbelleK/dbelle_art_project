create table user(
	userIdx int not null AUTO_INCREMENT,
	name varchar(10),
	email varchar(50),
	pw varchar(500),
	pwCheck varchar(50),
	tel varchar(50),
	address varchar(500),
	checkAll boolean,
	kakaoId varchar(50),
	PRIMARY KEY (userIdx)
);

SELECT*FROM user;
drop table user;

create table authority(
	user_id varchar(500),
	authority varchar(500),
	created_date varchar(500),
	modified_date varchar(500)
);

select*from authority;
drop table authority;

create table board(
	boardIdx int not null AUTO_INCREMENT PRIMARY KEY,
	title varchar(500) not null,
	content varchar(500) not null
	);
	
select*from board;
drop table board;
select * from dbelle.board where boardIdx=2;

insert into dbelle.board (title, content) value ("안녕", "안녕1");