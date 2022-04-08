SHOW TABLE STATUS;

drop table member
create table member(
    `mem_num`      INT             NOT NULL    AUTO_INCREMENT COMMENT '회원 번호', 
    `mem_email`    VARCHAR(45)     NOT NULL    COMMENT '{u}회원 이메일', 
    `mem_pw`       VARCHAR(45)     NOT NULL    COMMENT '비밀번호', 
    `mem_nick`     VARCHAR(45)     NOT NULL    COMMENT '{u}회원 닉네임', 
    `mem_tel`      VARCHAR(45)     NOT NULL    COMMENT '전화번호', 
    `mem_address`  VARCHAR(200)    NOT NULL    COMMENT '주소', 
	primary key(mem_num),
	unique key(mem_nick)
)
select * from member

insert into member(mem_email, mem_pw, mem_nick, mem_tel, mem_address)
values('스프링1 게시판', '오늘 첨2 써봄', '박병a3괸','123','55');


CREATE TABLE animal_kind
(
    `ani_kind`  VARCHAR(100)    NOT NULL    COMMENT '동물 종', 
     PRIMARY KEY (ani_kind)
);

CREATE TABLE animal
(
    `ani_num`        INT             NOT NULL    AUTO_INCREMENT COMMENT '동물 번호', 
    `ani_name`       VARCHAR(45)     NOT NULL    COMMENT '동물 이름', 
    `mem_num`        INT             NOT NULL    COMMENT '회원 번호', 
    `ani_sex`        VARCHAR(45)     NOT NULL    COMMENT '동물 성별', 
    `ani_kind`       VARCHAR(100)    NULL        COMMENT '동물 종', 
    `ani_weight`     DOUBLE          NOT NULL    COMMENT '동물 체중', 
    `ani_back_len`   DOUBLE          NULL        COMMENT '동물 등길이', 
    `ani_neck_len`   DOUBLE          NULL        COMMENT '동물 목둘레', 
    `ani_chest_len`  DOUBLE          NULL        COMMENT '동물 가슴둘레', 
     PRIMARY KEY (ani_num),
     foreign key(ani_kind) references animal_kind(ani_kind),
     foreign key(mem_num) references member(mem_num)
);





select * from search_word
drop table search_word
create table search_word(
	searchWord varchar(45) not null,
	searchWord_count int default 0, 
	primary key(searchWord)
)









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