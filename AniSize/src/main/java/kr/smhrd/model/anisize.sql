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

select * from product_category
CREATE TABLE product_category
(
    `pd_cate_num`   INT            NOT NULL    AUTO_INCREMENT COMMENT '상품 카테고리 번호', 
    `pd_cate_name`  VARCHAR(45)    NOT NULL    COMMENT '상품 카테고리 이름', 
     PRIMARY KEY (pd_cate_num)
);


drop table product
CREATE TABLE product
(
    `pd_num`        INT             NOT NULL    AUTO_INCREMENT COMMENT '상품페이지 번호', 
    `pd_cate_num`   INT             NOT NULL    COMMENT '상품 카테고리 번호', 
    `pd_name`       VARCHAR(100)    NOT NULL    COMMENT '상품페이지 이름', 
    `pd_price`      INT             NOT NULL    COMMENT '상품 페이지 가격',
    `pd_img`        INT             NOT NULL    COMMENT '상품 이미지 갯수(or 이미지 이름)', 
    `pd_avg_score`  DOUBLE          NOT NULL    COMMENT '평균 별점', 
    `seller_num`    INT             NULL        COMMENT '판매자 번호', 
    `pd_date`       datetime      NOT NULL default now()   COMMENT '상품 페이지 등록일', 
     PRIMARY KEY (pd_num),
     foreign key (pd_cate_num) references product_category(pd_cate_num),
     foreign key (seller_num) references seller(seller_num)
);
alter table product add pd_thumbnail varchar(1000) --
alter table product add brand varchar(100) not null default '자체브랜드'
update product set pd_avg_score = 0

select * from product_stock
select count(stk_num) from product_stock 
delete from product_stock where stk_num <= 100 

CREATE TABLE product_stock
(
    `stk_num`        INT             NOT NULL    AUTO_INCREMENT COMMENT '상품재고 번호', 
    `pd_num`         INT             NOT NULL    COMMENT '상품페이지 번호', 
    `stk_quantity`   INT             NOT NULL    COMMENT '수량', 
    `stk_price`      INT             NOT NULL    COMMENT '가격', 
    `stk_option`     VARCHAR(100)    NOT NULL    COMMENT '상품 옵션', 
    `stk_size`       VARCHAR(45)     NOT NULL    COMMENT '사이즈', 
    `stk_back_len`   DOUBLE          NULL        COMMENT '등길이', 
    `stk_neck_len`   DOUBLE          NULL        COMMENT '목둘레', 
    `stk_chest_len`  DOUBLE          NULL        COMMENT '가슴둘레', 
     PRIMARY KEY (stk_num),
     foreign key (pd_num) references product(pd_num)
);

CREATE TABLE seller
(
    `seller_num`   INT             NOT NULL    AUTO_INCREMENT COMMENT '판매자 번호', 
    `seller_name`  VARCHAR(100)    NOT NULL    COMMENT '판매자 회사명', 
    `seller_tel`   VARCHAR(45)     NULL        COMMENT '판매자 전화번호', 
    `seller_sns`   VARCHAR(100)    NULL        COMMENT '판매자 sns', 
     PRIMARY KEY (seller_num)
);

CREATE TABLE product_review
(
    `review_num`      INT              NOT NULL    AUTO_INCREMENT COMMENT '리뷰 번호', 
    `mem_num`         INT              NOT NULL    COMMENT '회원 번호', 
    `pd_num`          INT              NOT NULL    COMMENT '상품 페이지 번호', 
    `review_content`  VARCHAR(500)     NOT NULL    COMMENT '리뷰 내용', 
    `review_img`      VARCHAR(1000)    NOT NULL    COMMENT '리뷰 사진', 
    `stk_option`      VARCHAR(100)     NOT NULL    COMMENT '상품 옵션', 
    `stk_size`        VARCHAR(45)      NOT NULL    COMMENT '사이즈', 
    `review_score`    INT              NOT NULL    COMMENT '평점', 
     PRIMARY KEY (review_num),
     foreign key (mem_num) references member(mem_num),
     foreign key (pd_num) references product(pd_num)
);

CREATE TABLE cart
(
    `cart_num`       INT             NOT NULL    AUTO_INCREMENT COMMENT '장바구니 상품 번호', 
    `mem_num`        INT             NOT NULL    COMMENT '회원 번호', 
    `pd_num`         INT             NOT NULL    COMMENT '상품페이지 번호', 
    `cart_quantity`  INT             NOT NULL    COMMENT '수량', 
    `stk_price`      INT             NOT NULL    COMMENT '가격', 
    `stk_option`     VARCHAR(100)    NOT NULL    COMMENT '상품 옵션', 
    `stk_size`       VARCHAR(45)     NOT NULL    COMMENT '사이즈', 
     PRIMARY KEY (cart_num),
     foreign key (mem_num) references member(mem_num),
     foreign key (pd_num) references product(pd_num)
);

CREATE TABLE purchase_history
(
    `ph_num`             INT             NOT NULL    AUTO_INCREMENT COMMENT '구매내역 번호', 
    `mem_num`            INT             NOT NULL    COMMENT '회원 번호', 
    `pd_num`             INT             NOT NULL    COMMENT '상품페이지 번호', 
    `ph_quantity`        INT             NOT NULL    COMMENT '구매 수량', 
    `stk_price`          INT             NOT NULL    COMMENT '가격', 
    `stk_option`         VARCHAR(100)    NOT NULL    COMMENT '상품 옵션', 
    `stk_size`           VARCHAR(45)     NOT NULL    COMMENT '사이즈', 
    `ph_date`            DATETIME        NOT NULL    DEFAULT NOW() COMMENT '구매 날짜', 
    `recipient_address`  VARCHAR(200)    NOT NULL    COMMENT '배송지 주소', 
    `recipient`          VARCHAR(45)     NOT NULL    COMMENT '수령인', 
    `recipient_tel`      VARCHAR(45)     NOT NULL    COMMENT '수령인 연락처', 
    `delivery_requests`  VARCHAR(200)    NOT NULL    COMMENT '배송요청사항', 
    `payment`            VARCHAR(45)     NOT NULL    COMMENT '결제 수단', 
     PRIMARY KEY (ph_num),
     foreign key (mem_num) references member(mem_num),
     foreign key (pd_num) references product(pd_num)
);


select * from search_word
drop table search_word
create table search_word(
	searchWord varchar(45) not null,
	searchWord_count int not null default 1, 
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
insert into product_category
values(null, '티셔츠 l 탑');
insert into product_category
values(null, '원피스 l 팬츠');
insert into product_category
values(null, '올인원');
insert into product_category
values(null, '맨투맨 l 후드');
insert into product_category
values(null, '셔츠 l 블라우스');
insert into product_category
values(null, '아우터');
insert into product_category
values(null, '니트 l 가디건');
insert into product_category
values(null, '잠옷 l 가운');
insert into product_category
values(null, '한복');
insert into product_category
values(null, '레인코트');
insert into product_category
values(null, '구명조끼');
insert into product_category
values(null, '커플룩');