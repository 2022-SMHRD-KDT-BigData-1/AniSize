drop table member
create table member(
	mem_num int not null auto_increment,
	mem_email varchar(45) not null,
	mem_pw varchar(45) not null,
	mem_nick varchar(45) not null,
	mem_tel varchar(45) not null,
	mem_address varchar(200) not null,
	primary key(mem_num)
)
select * from member

insert into member(mem_email, mem_pw, mem_nick, mem_tel, mem_address)
values('스프링1 게시판', '오늘 첨2 써봄', '박병3괸','123','55');
