create table user(
	userIdx int not null AUTO_INCREMENT,
	name varchar(10) not null,
	email varchar(50) not null,
	pw varchar(50) not null,
	pwCheck varchar(50) not null,
	tel int not null,
	address varchar(500) not null,
	checkAll boolean not null,
	PRIMARY KEY (userIdx)
);

select*from user;