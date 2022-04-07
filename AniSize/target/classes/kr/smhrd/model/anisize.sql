drop table member
create table member(
	mem_num int not null auto_increment,
	mem_email varchar(45) not null,
	mem_pw varchar(45) not null,
	mem_nick varchar(45) not null,
	mem_tel varchar(45) not null,
	mem_address varchar(200) not null,
	primary key(mem_num),
	unique key(mem_nick)
)
select * from member

insert into member(mem_email, mem_pw, mem_nick, mem_tel, mem_address)
values('스프링1 게시판', '오늘 첨2 써봄', '박병3괸','123','55');
SHOW TABLE STATUS;

drop table member
drop table animal
drop table cart
drop table purchase_history
drop table animal_kind
drop table product_review
drop table product_stock
drop table product
drop table seller
drop table product_category
drop table 
drop table 
drop table 
drop table 
drop table 