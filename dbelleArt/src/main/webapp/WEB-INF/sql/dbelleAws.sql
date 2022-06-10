create table user(
	userIdx int not null AUTO_INCREMENT,
	name varchar(10) not null,
	email varchar(50) not null,
	pw varchar(500) not null,
	pwCheck varchar(50) not null,
	tel int not null,
	address varchar(500) not null,
	checkAll boolean not null,
	PRIMARY KEY (userIdx)
);

select*from user;
drop table user;

create table authority(
	user_id varchar(500),
	authority varchar(500),
	created_date varchar(500),
	modified_date varchar(500)
);

select*from authority;

create table board(
	boardIdx int not null AUTO_INCREMENT PRIMARY KEY,
	title varchar(500) not null,
	content varchar(500) not null
	);
	
select*from board;
drop table board;
select * from dbelle.board where boardIdx=2;

insert into dbelle.board (title, content) value ("안녕", "안녕1");