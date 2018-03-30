SELECT * FROM TAB;

CREATE TABLE TD_HOME(
	TD_HOME_NO NUMBER(5) PRIMARY KEY,
	TD_HOME_IMG VARCHAR2(50 CHAR) NOT NULL,
	TD_HOME_CATEGORY VARCHAR2(50 CHAR) NOT NULL,
	TD_HOME_ITEM_NO NUMBER(5) NOT NULL
);

CREATE SEQUENCE TD_HOME_SEQ;

CREATE TABLE TD_MEMBER(
	TD_MEMBER_ID VARCHAR2(15 CHAR) PRIMARY KEY,
	TD_MEMBER_PW VARCHAR2(15 CHAR) NOT NULL,
	TD_MEMBER_NAME VARCHAR2(15 CHAR) NOT NULL,
	TD_MEMBER_EMAIL VARCHAR2(50 CHAR) NOT NULL,
	TD_MEMBER_ADDR VARCHAR2(100 CHAR) NOT NULL,
	TD_MEMBER_PN VARCHAR2(6 CHAR) NOT NULL,
	TD_MEMBER_PHONE1 VARCHAR2(3 CHAR) NOT NULL,
	TD_MEMBER_PHONE2 VARCHAR2(4 CHAR) NOT NULL,d
	TD_MEMBER_PHONE3 VARCHAR2(4 CHAR) NOT NULL
);
insert into TD_MEMBER values(1,2,3,4,5,6,7,8,9);


			
delete from TD_MEMBER ;

select*from TD_MEMBER;

CREATE TABLE TD_DOGITEM(
	TD_DOGITEM_NO NUMBER(5) PRIMARY KEY,
	TD_DOGITEM_NAME VARCHAR2(20 CHAR) NOT NULL,
	TD_DOGITEM_DETAIL VARCHAR2(200 CHAR) NOT NULL,
	TD_DOGITEM_IMG VARCHAR2(50 CHAR) NOT NULL,
	TD_DOGITEM_PRICE NUMBER(10) NOT NULL,
	TD_DOGITEM_STOCK NUMBER(10) NOT NULL,
	TD_DOGITEM_REG_DATE DATE NOT NULL,
	TD_CATEGORY_NO NUMBER(5) NOT NULL
);

CREATE SEQUENCE TD_DOGITEM_SEQ;


CREATE TABLE TD_PHONEITEM(
	TD_PHONEITEM_NO NUMBER(5) PRIMARY KEY,
	TD_PHONEITEM_NAME VARCHAR2(20 CHAR) NOT NULL,
	TD_PHONEITEM_DETAIL VARCHAR2(200 CHAR) NOT NULL,
	TD_PHONEITEM_IMG VARCHAR2(50 CHAR) NOT NULL,
	TD_PHONEITEM_PRICE NUMBER(10) NOT NULL,
	TD_PHONEITEM_STOCK NUMBER(10) NOT NULL,
	TD_PHONEITEM_REG_DATE DATE NOT NULL,
	TD_CATEGORY_NO NUMBER(5) NOT NULL
);


CREATE SEQUENCE TD_PHONEITEM_SEQ;


CREATE TABLE TD_CATEGORY(
	TD_CATEGORY_NO NUMBER(3) PRIMARY KEY,
	TD_CATEGORY_NAME VARCHAR2(20 CHAR) NOT NULL
);

CREATE SEQUENCE TD_CATEGORY_SEQ;


CREATE TABLE TD_QNA(
	TD_QNA_NO NUMBER(5) PRIMARY KEY,
	TD_QNA_QTXT VARCHAR2(100 CHAR) NOT NULL,
	TD_QNA_ATXT VARCHAR2(100 CHAR) NOT NULL
);

CREATE SEQUENCE TD_QNA_SEQ;


CREATE TABLE TD_REVIEW(
	TD_REVIEW_NO NUMBER(5) PRIMARY KEY,
	TD_REVIEW_ID VARCHAR2(15 CHAR) NOT NULL,
	TD_REVIEW_TXT VARCHAR2(200 CHAR) NOT NULL,
	TD_REVIEW_DATE DATE NOT NULL
);

CREATE SEQUENCE TD_REVIEW_SEQ;


CREATE TABLE TD_WISHLIST(
	TD_WISHLIST_NO NUMBER(5) PRIMARY KEY,
	TD_WISHLIST_ID VARCHAR2(15 CHAR) NOT NULL,
	TD_WISHLIST_COUNT NUMBER(5) NOT NULL,
	TD_WISHLIST_DATE DATE NOT NULL
);

CREATE SEQUENCE TD_WISHLIST_SEQ;

DROP TABLE TD_PHONEITEM CASCADE CONSTRAINT PURGE;



select * from TD_MEMBER;