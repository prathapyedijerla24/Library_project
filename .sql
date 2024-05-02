--------------------------------------------------------
--  File created - Thursday-May-02-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CUST_ID
--------------------------------------------------------

   CREATE SEQUENCE  "C##LIBRARY_PROJECT"."SEQ_CUST_ID"  MINVALUE 11 MAXVALUE 9999 INCREMENT BY 1 START WITH 31 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."BOOK" 
   (	"ISBN" VARCHAR2(4 BYTE), 
	"BOOKID" VARCHAR2(6 BYTE), 
	"STATE" VARCHAR2(10 BYTE), 
	"AVAILABILITY" VARCHAR2(1 BYTE), 
	"RENTCOST" NUMBER(10,2), 
	"LOSTCOST" NUMBER(10,2), 
	"ADDRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BRANCH
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."BRANCH" 
   (	"NAME" VARCHAR2(40 BYTE), 
	"ADDRESS" VARCHAR2(50 BYTE), 
	"PHONE" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CARD
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."CARD" 
   (	"CARDID" NUMBER, 
	"STATUS" VARCHAR2(1 BYTE), 
	"FINES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."CUSTOMER" 
   (	"CUSTOMERID" NUMBER, 
	"NAME" VARCHAR2(40 BYTE), 
	"CUSTOMERADDRESS" VARCHAR2(50 BYTE), 
	"PHONE" NUMBER(9,0), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"DATESIGNUP" DATE, 
	"CARDNUMBER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."EMPLOYEE" 
   (	"EMPLOYEEID" NUMBER, 
	"NAME" VARCHAR2(40 BYTE), 
	"EMPLOYEEADDRESS" VARCHAR2(50 BYTE), 
	"PHONE" NUMBER(9,0), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(10 BYTE), 
	"PAYCHECK" NUMBER(8,2), 
	"BRANCHNAME" VARCHAR2(40 BYTE), 
	"CARDNUMBER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."LOCATION" 
   (	"ADDRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RENT
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."RENT" 
   (	"CARDID" NUMBER, 
	"ITEMID" VARCHAR2(6 BYTE), 
	"APPORPRIATIONDATE" DATE, 
	"RETURNDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "C##LIBRARY_PROJECT"."VIDEO" 
   (	"TITLE" VARCHAR2(50 BYTE), 
	"YEAR" NUMBER(*,0), 
	"VIDEOID" VARCHAR2(6 BYTE), 
	"STATE" VARCHAR2(10 BYTE), 
	"AVAILABILITY" VARCHAR2(1 BYTE), 
	"RENTCOST" NUMBER(10,2), 
	"LOSTCOST" NUMBER(10,2), 
	"ADDRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##LIBRARY_PROJECT.BOOK
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('A123','B1A123','GOOD','O',5,20,'ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('A123','B2A123','NEW','O',6,30,'ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('B234','B1B234','NEW','A',2,15,'CHEMISTRY ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('C321','B1C321','BAD','A',1,10,'PHYSICS ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('H123','B1H123','GOOD','A',3,15,'CHEMISTRY ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('Z123','B1Z123','GOOD','O',4,20,'COMPUTING ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('L321','B1L321','NEW','O',4,20,'COMPUTING ROAD');
Insert into C##LIBRARY_PROJECT.BOOK (ISBN,BOOKID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('P321','B1P321','USED','A',2,12,'CHEMISTRY ROAD');
REM INSERTING into C##LIBRARY_PROJECT.BRANCH
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.BRANCH (NAME,ADDRESS,PHONE) values ('ARCHEOLOGY','ARCHEOLOGY ROAD',645645645);
Insert into C##LIBRARY_PROJECT.BRANCH (NAME,ADDRESS,PHONE) values ('CHEMISTRY','CHEMISTRY ROAD',622622622);
Insert into C##LIBRARY_PROJECT.BRANCH (NAME,ADDRESS,PHONE) values ('COMPUTING','COMPUTING ROAD',644644644);
Insert into C##LIBRARY_PROJECT.BRANCH (NAME,ADDRESS,PHONE) values ('PHYSICS','PHYSICS ROAD',666666666);
REM INSERTING into C##LIBRARY_PROJECT.CARD
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (101,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (102,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (103,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (104,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (105,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (106,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (107,'B',50);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (108,'B',10);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (109,'B',25.5);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (110,'B',15.25);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (151,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (152,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (153,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (154,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (155,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (111,'A',0);
Insert into C##LIBRARY_PROJECT.CARD (CARDID,STATUS,FINES) values (112,'A',0);
REM INSERTING into C##LIBRARY_PROJECT.CUSTOMER
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (1,'ALFRED','BACON STREET',623623623,'alfred123','al1',to_date('12-05-18','DD-MM-RR'),101);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (2,'JAMES','DOWNTOWN ABBEY',659659659,'james123','ja2',to_date('10-05-18','DD-MM-RR'),102);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (3,'GEORGE','DETROIT CITY',654654654,'george123','ge3',to_date('21-06-17','DD-MM-RR'),103);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (4,'TOM','WASHINGTON DC.',658658658,'tom123','tom4',to_date('05-12-16','DD-MM-RR'),104);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (5,'PETER','CASTERLY ROCK',652652652,'peter123','pe5',to_date('09-08-16','DD-MM-RR'),105);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (6,'JENNY','TERRAKOTA',651651651,'jenny123','je6',to_date('30-04-17','DD-MM-RR'),106);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (7,'ROSE','SWEET HOME ALABAMA',657657657,'rose123','ro7',to_date('28-02-18','DD-MM-RR'),107);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (8,'MONICA','FAKE STREET 123',639639639,'monica123','mo8',to_date('15-01-16','DD-MM-RR'),108);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (9,'PHOEBE','CENTRAL PERK',678678678,'phoebe123','pho9',to_date('25-03-16','DD-MM-RR'),109);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (10,'RACHEL','WHEREVER',687687687,'rachel123','ra10',to_date('01-09-17','DD-MM-RR'),110);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (11,'MARI CARMEN','CORDOBA',645892456,'maricarmen123','ma11',to_date('02-05-24','DD-MM-RR'),112);
Insert into C##LIBRARY_PROJECT.CUSTOMER (CUSTOMERID,NAME,CUSTOMERADDRESS,PHONE,PASSWORD,USERNAME,DATESIGNUP,CARDNUMBER) values (13,'prathap','hyderabad',789456123,'ypr','ypr123',to_date('28-04-24','DD-MM-RR'),111);
REM INSERTING into C##LIBRARY_PROJECT.EMPLOYEE
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.EMPLOYEE (EMPLOYEEID,NAME,EMPLOYEEADDRESS,PHONE,PASSWORD,USERNAME,PAYCHECK,BRANCHNAME,CARDNUMBER) values (215,'JAIRO','ARMILLA',698754321,'jairo123','ja15',2200.5,'CHEMISTRY',155);
Insert into C##LIBRARY_PROJECT.EMPLOYEE (EMPLOYEEID,NAME,EMPLOYEEADDRESS,PHONE,PASSWORD,USERNAME,PAYCHECK,BRANCHNAME,CARDNUMBER) values (214,'VICTOR','SANTA FE',654321987,'victor123','vic14',2200,'COMPUTING',154);
Insert into C##LIBRARY_PROJECT.EMPLOYEE (EMPLOYEEID,NAME,EMPLOYEEADDRESS,PHONE,PASSWORD,USERNAME,PAYCHECK,BRANCHNAME,CARDNUMBER) values (213,'JOEY','LITTLE ITAYLY',628628628,'joey123','jo13',975.75,'ARCHEOLOGY',153);
Insert into C##LIBRARY_PROJECT.EMPLOYEE (EMPLOYEEID,NAME,EMPLOYEEADDRESS,PHONE,PASSWORD,USERNAME,PAYCHECK,BRANCHNAME,CARDNUMBER) values (212,'CHANDLER','OUR HEARTHS',688688688,'chandler123','chand12',1150.5,'ARCHEOLOGY',152);
Insert into C##LIBRARY_PROJECT.EMPLOYEE (EMPLOYEEID,NAME,EMPLOYEEADDRESS,PHONE,PASSWORD,USERNAME,PAYCHECK,BRANCHNAME,CARDNUMBER) values (211,'ROSS','HIS HOUSE',671671671,'ross123','ro11',1200,'ARCHEOLOGY',151);
REM INSERTING into C##LIBRARY_PROJECT.LOCATION
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.LOCATION (ADDRESS) values ('ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.LOCATION (ADDRESS) values ('CHEMISTRY ROAD');
Insert into C##LIBRARY_PROJECT.LOCATION (ADDRESS) values ('COMPUTING ROAD');
Insert into C##LIBRARY_PROJECT.LOCATION (ADDRESS) values ('PHYSICS ROAD');
REM INSERTING into C##LIBRARY_PROJECT.RENT
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (101,'B2A123',to_date('10-05-18','DD-MM-RR'),to_date('20-05-18','DD-MM-RR'));
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (102,'B1Z123',to_date('10-05-18','DD-MM-RR'),to_date('25-05-18','DD-MM-RR'));
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (104,'V1JA15',to_date('01-05-18','DD-MM-RR'),to_date('21-05-18','DD-MM-RR'));
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (105,'V1DI00',to_date('02-05-18','DD-MM-RR'),to_date('25-05-18','DD-MM-RR'));
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (154,'B1L321',to_date('04-05-18','DD-MM-RR'),to_date('26-05-18','DD-MM-RR'));
Insert into C##LIBRARY_PROJECT.RENT (CARDID,ITEMID,APPORPRIATIONDATE,RETURNDATE) values (155,'V1CH16',to_date('29-04-18','DD-MM-RR'),to_date('29-05-18','DD-MM-RR'));
REM INSERTING into C##LIBRARY_PROJECT.VIDEO
SET DEFINE OFF;
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('CHEMISTRY FOR DUMMIES',2016,'V1CH16','NEW','O',10,50,'CHEMISTRY ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('CHEMISTRY FOR DUMMIES',2016,'V2CH16','BAD','A',5,20,'CHEMISTRY ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('COMPUTING MANAGER',2014,'V1CO14','GOOD','A',4,20,'COMPUTING ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('JAVA LANGUAGE',2015,'V1JA15','USED','O',4,20,'COMPUTING ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('DINOSAURS',2000,'V1DI00','GOOD','O',5,25,'ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('T-REX, DEADLY KING',1992,'V1TR92','USED','A',10,50,'ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('ANCESTORS OF THE HUMANITY',1998,'V1AN98','BAD','A',3,15,'ARCHEOLOGY ROAD');
Insert into C##LIBRARY_PROJECT.VIDEO (TITLE,YEAR,VIDEOID,STATE,AVAILABILITY,RENTCOST,LOSTCOST,ADDRESS) values ('PHYSICS, MOST BORING SH*T',2018,'V1PH18','NEW','A',1,5,'PHYSICS ROAD');
--------------------------------------------------------
--  DDL for Trigger ADD_CARD_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##LIBRARY_PROJECT"."ADD_CARD_CUSTOMER" 
AFTER INSERT
ON customer
FOR EACH ROW
declare
BEGIN
    insert into card
    values(:new.cardnumber,'A',0);
    DBMS_OUTPUT.PUT_LINE('Card created');
end;
/
ALTER TRIGGER "C##LIBRARY_PROJECT"."ADD_CARD_CUSTOMER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ADD_CARD_EMPLOYEE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##LIBRARY_PROJECT"."ADD_CARD_EMPLOYEE" 
AFTER INSERT
ON employee
FOR EACH ROW
DECLARE
BEGIN
  INSERT INTO card
  VALUES (:new.cardnumber,'A',0);

  DBMS_OUTPUT.PUT_LINE('Card created');
END;
/
ALTER TRIGGER "C##LIBRARY_PROJECT"."ADD_CARD_EMPLOYEE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MODIFY_FINES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##LIBRARY_PROJECT"."MODIFY_FINES" 
AFTER DELETE
on rent
FOR EACH ROW
DECLARE
v_rentcost number;
v_cardid number;
v_itemid varchar2(50);
v_cnt_video number;
v_cnt_book number;
BEGIN
select cardid,itemid into v_cardid,v_itemid from rent where cardid = :old.cardid;
select count(*) into v_cnt_video from video WHERE videoid = v_itemid;
select count(*) into v_cnt_book from book WHERE bookid = v_itemid;
    IF sysdate > :old.returndate then
        IF v_cnt_video > 0 THEN
            select rentcost into v_rentcost from video where videoid = v_itemid;
        ELSIF v_cnt_book > 0 then
            select rentcost into v_rentcost from book where bookid = v_itemid;
        END IF;
        UPDATE card set status = 'B', fines =(fines+v_rentcost) where cardid = v_cardid;
    else
        DBMS_OUTPUT.PUT_LINE('The item has been return before deadline');
    END IF;
end;

/
ALTER TRIGGER "C##LIBRARY_PROJECT"."MODIFY_FINES" ENABLE;
--------------------------------------------------------
--  DDL for Procedure PRC_ADD_BOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_ADD_BOOK" (
p_ISBN	VARCHAR2,
p_BOOKID	VARCHAR2,
p_STATE	VARCHAR2,
p_DEBYCOST	NUMBER,
p_LOSTCOST	NUMBER,
p_ADDRESS	VARCHAR2)
as
begin
    insert into book
    values (p_ISBN,p_BOOKID,p_STATE,'A',p_DEBYCOST,p_LOSTCOST,p_ADDRESS);
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_ADD_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_ADD_CUSTOMER" (
p_name in customer.name%type,
p_customeraddress in customer.customeraddress%TYPE,
p_phone in customer.phone%TYPE,
p_username in customer.username%TYPE,
p_password in customer.password%type,
p_cardnumber in customer.cardnumber%TYPE)
AS
v_cust_id NUMBER;
BEGIN
    v_cust_id := seq_cust_id.nextval;
    dbms_output.put_line('customer id = '||v_cust_id);
    insert into customer
    values(v_cust_id,p_name,p_customeraddress,p_phone,p_username,p_password,to_date(sysdate),p_cardnumber);
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_ADD_VIDEO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_ADD_VIDEO" (
p_TITLE	VARCHAR2,
p_YEAR	NUMBER,
p_VIDEOID	VARCHAR2,
p_STATE	VARCHAR2,
p_DEBYCOST	NUMBER,
p_LOSTCOST	NUMBER,
p_ADDRESS	VARCHAR2)
AS
BEGIN
    insert into video
    values (p_TITLE,p_YEAR,p_VIDEOID,p_STATE,'A',p_DEBYCOST,p_LOSTCOST,p_ADDRESS);
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_ALL_ITEM_IN_LIBRARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_ALL_ITEM_IN_LIBRARY" (p_item_type VARCHAR2)
AS
CURSOR cur_book is select * from book;
CURSOR cur_video is select * from video;
v_book cur_book%rowtype;
v_video cur_video%rowtype;
BEGIN
    IF p_item_type like 'book' THEN
        OPEN cur_book;
        dbms_output.put_line('ISBN  BOOKID  STATE  AVAILABILITY  DEBYCOST  LOSTCOST  ADDRESS');
        dbms_output.put_line('--------------------------------------------------------------');
        LOOP
        FETCH cur_book into v_book;
        EXIT WHEN cur_book%notfound;
        dbms_output.put_line(v_book.ISBN||'  '||v_book.BOOKID||'  '||v_book.AVAILABILITY||'  '||v_book.DEBYCOST||'  '||v_book.LOSTCOST||'  '||v_book.ADDRESS);
        end loop;
        CLOSE cur_book;
    ELSIF p_item_type like 'video' then
        open cur_video;
        dbms_output.put_line('TITLE  YEAR  VIDEOID  STATE  AVAILABILITY  DEBYCOST  LOSTCOST  ADDRESS');
        dbms_output.put_line('----------------------------------------------------------------------');
        loop
        fetch cur_video into v_video;
        exit when cur_video%notfound;
        dbms_output.put_line(v_video.TITLE||'  '||v_video.YEAR||'  '||v_video.VIDEOID||'  '||v_video.STATE||'  '||v_video.AVAILABILITY||'  '||v_video.DEBYCOST||'  '||v_video.LOSTCOST||'  '||v_video.ADDRESS);
        end loop;
        CLOSE cur_video;
    else 
    DBMS_OUTPUT.PUT_LINE('TYPE INCORRECT, you must choose between books or videos');
    END if;
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_CUSTOMERLOGIN_LIBRARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_CUSTOMERLOGIN_LIBRARY" (
p_username in varchar2,
P_password in varchar2)
AS
v_username VARCHAR2(50);
incorrect_password EXCEPTION;
BEGIN
    select username into v_username from customer where password = p_password;
    IF  v_username = p_username THEN
        dbms_output.put_line('user' || p_username ||' '|| 'loginsuccesfull');
    ELSE 
    RAISE incorrect_password;
    END IF;
    EXCEPTION
    WHEN no_data_found OR incorrect_password THEN
        dbms_output.put_line('incorrect_password_or_username');
END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_CUST_ACCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_CUST_ACCOUNT" (
p_customerid NUMBER)
AS
v_cardnumber number;
v_cnt_item number;
v_itemid VARCHAR2(10);
v_fines number;
BEGIN
    SELECT cardnumber into v_cardnumber from customer WHERE customerid = p_customerid;
    dbms_output.put_line('Customer id - '||p_customerid||' and customer card number is '||v_cardnumber);
    select COUNT(*) INTO v_cnt_item from rent WHERE cardid = v_cardnumber;
    IF v_cnt_item > 0 THEN
        SELECT itemid into v_itemid from rent WHERE cardid = v_cardnumber;
        dbms_output.put_line('The user has '||v_itemid||' Rented');
    ELSE
        dbms_output.put_line('The user has no rents');
    END IF;
    SELECT fines into v_fines from card WHERE cardid = v_cardnumber;
    IF v_fines > 0 THEN
        dbms_output.put_line('The user fines are '||v_fines);
    ELSE
        dbms_output.put_line('The user has no fines');
    END IF;
    EXCEPTION when no_data_found THEN dbms_output.put_line('No data found for this id');
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_EMPLOYEELOGIN_LIBRARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_EMPLOYEELOGIN_LIBRARY" (
p_username in varchar2,
P_password in varchar2)
AS
v_username VARCHAR2(50);
BEGIN
    select username into v_username from employee where password = p_password;
    IF  v_username = p_username THEN
        dbms_output.put_line('user ' || p_username ||' '|| 'login succesfull');
    ELSE
        dbms_output.put_line('user name or pssword incorrect');
    END IF;

END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_EMP_ACCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_EMP_ACCOUNT" (
p_employeeid NUMBER)
AS
v_cardnumber number;
v_cnt_item number;
v_itemid VARCHAR2(10);
v_fines number;
BEGIN
    SELECT cardnumber into v_cardnumber from employee WHERE employeeid = p_employeeid;
    dbms_output.put_line('employee id - '||p_employeeid||' and employee card number is '||v_cardnumber);
    select COUNT(*) INTO v_cnt_item from rent WHERE cardid = v_cardnumber;
    IF v_cnt_item > 0 THEN
        SELECT itemid into v_itemid from rent WHERE cardid = v_cardnumber;
        dbms_output.put_line('The user has '||v_itemid||' Rented');
    ELSE
        dbms_output.put_line('The user has no rents');
    END IF;
    SELECT fines into v_fines from card WHERE cardid = v_cardnumber;
    IF v_fines > 0 THEN
        dbms_output.put_line('The user fines are '||v_fines);
    ELSE
        dbms_output.put_line('The user has no fines');
    END IF;
    EXCEPTION when no_data_found THEN dbms_output.put_line('No data found for this id');
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_PAY_FINES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_PAY_FINES" (
p_cardnumber in NUMBER,
p_amount_topay in number)
AS
v_fines number;
v_total number;
BEGIN
    select fines into v_fines from card where cardid =p_cardnumber;
    dbms_output.put_line('Total fines = '||v_fines);
            IF v_fines < p_amount_topay THEN
                v_total :=  p_amount_topay - v_fines;
                dbms_output.put_line('total fines are paid and money back amount is '||v_total);
                UPDATE card SET fines = 0, status = 'A'  WHERE cardid = p_cardnumber;
            ELSIF v_fines = p_amount_topay THEN
                dbms_output.put_line('total fines are paid');
                UPDATE card SET fines = 0, status = 'A' WHERE cardid = p_cardnumber;
            ELSE  
                v_total := v_fines - p_amount_topay;
                dbms_output.put_line('After payment remaining amount to pay is '||v_total);
                update card set fines = v_total WHERE  cardid = p_cardnumber;
            END IF;
        EXCEPTION when no_data_found  THEN dbms_output.put_line('card number was wrong');
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_REMOVE_ITEM_FROM_LIBRARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_REMOVE_ITEM_FROM_LIBRARY" (
p_item_id varchar2)
AS
v_cnt_book number;
v_cnt_video number;
BEGIN
    select count(*) into v_cnt_book from book where bookid = p_item_id;
    IF v_cnt_book > 0 THEN
        DELETE from book WHERE bookid = p_item_id;
        dbms_output.put_line('book was removed from library');
    END IF;
    select count(*) into v_cnt_video from video where video.videoid = p_item_id;
    IF v_cnt_video > 0 THEN
        DELETE from video WHERE video.videoid = p_item_id;
        dbms_output.put_line('video was removed from library');
    END IF;
    EXCEPTION WHEN no_data_found then dbms_output.put_line('no item is found with that id you provided');
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_RENT_ITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_RENT_ITEM" (
p_cardnumber number,
p_itemid VARCHAR2,
p_item_type VARCHAR2,
p_item_return_date DATE)
AS
v_status VARCHAR2(1);
BEGIN
    select status into v_status from card where cardid = p_cardnumber;
    if v_status = 'A' then
        if p_item_type like 'book' then
            select AVAILABILITY into v_status from book WHERE bookid = p_itemid;
                IF v_status like 'A' THEN
                    UPDATE book SET  availability = 'O' WHERE bookid =p_itemid;
                    insert into rent
                    values(p_cardnumber,p_itemid,TO_DATE(sysdate),p_item_return_date);
                    dbms_output.put_line('item '||p_itemid||' rented');
                ELSE
                    dbms_output.put_line('The book is already rented');
                END IF;
        ELSIF p_item_type LIKE 'video' THEN
            SELECT AVAILABILITY INTO v_status FROM  video WHERE videoid = p_itemid;
                IF v_status like 'A' THEN
                    UPDATE video SET  availability = 'O' WHERE videoid =p_itemid;
                    insert into rent
                    values(p_cardnumber,p_itemid,TO_DATE(sysdate),p_item_return_date);
                    dbms_output.put_line('item '||p_itemid||' rented');
                ELSE
                    dbms_output.put_line('The book is already rented');
                END IF;
        ELSE dbms_output.put_line('The item type was entered wrong');
        END IF;
    else dbms_output.put_line('this card not in active status');
    END IF;
    EXCEPTION when no_data_found then dbms_output.put_line('This card number not registered in library');
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_RETURN_ITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_RETURN_ITEM" (p_item_id IN VARCHAR2)
IS
  v_cnt_rent NUMBER;
  v_cnt_book NUMBER;
  v_cnt_video NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_cnt_rent
  FROM rent
  WHERE itemid LIKE p_item_id;

  SELECT COUNT(*) INTO v_cnt_book
  FROM book
  WHERE bookid LIKE p_item_id;

  SELECT COUNT(*) INTO v_cnt_video
  FROM video
  WHERE videoid LIKE p_item_id;

  IF v_cnt_rent > 0 THEN
    DELETE FROM rent
    WHERE itemid = p_item_id;
    IF v_cnt_book > 0 THEN
      UPDATE book
      SET AVAILABILITY = 'A'
      WHERE bookid LIKE p_item_id;
      DBMS_OUTPUT.PUT_LINE('The book ' || p_item_id || ' is now avaible.');
    ELSIF v_cnt_video > 0 THEN
      UPDATE video
      SET AVAILABILITY = 'A'
      WHERE videoid LIKE p_item_id;
      DBMS_OUTPUT.PUT_LINE('The video ' || p_item_id || ' is now avaible.');
    END IF;
  ELSE
    DBMS_OUTPUT.PUT_LINE('This item is not rented at the moment');
  END IF;
  EXCEPTION WHEN no_data_found THEN 
  DBMS_OUTPUT.PUT_LINE('Item ID incorrect');    
END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_UPDATE_CUST_INFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_UPDATE_CUST_INFO" (
p_customerid in number,
p_CUSTOMERADDRESS in customer.CUSTOMERADDRESS%type,
p_phone in number,
p_password in customer.password%type)
AS
BEGIN
    update customer SET  customeraddress = p_CUSTOMERADDRESS, phone = p_phone, password =p_password where customerid = p_customerid;
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_UPDATE_EMP_INFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_UPDATE_EMP_INFO" (
p_employeeid in number,
p_EMPLOYEEADDRESS in employee.EMPLOYEEADDRESS%type,
p_phone in number,
p_password in employee.password%type)
AS
BEGIN
    update employee SET  employeeaddress = p_employeeADDRESS, phone = p_phone, password =p_password where employeeid = p_employeeid;
end;

/
--------------------------------------------------------
--  DDL for Procedure PRC_VIEW_CUST_INFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_VIEW_CUST_INFO" (p_CustomerID IN NUMBER)
IS
  v_name VARCHAR2(40);
  v_customeraddress VARCHAR2(50);
  v_phone NUMBER(9);
  v_username VARCHAR2(10);
  v_datesigup DATE;
  v_cardnumber NUMBER;
BEGIN
  SELECT name,customeraddress,phone,username,datesignup,cardnumber
  INTO v_name, v_customeraddress, v_phone, v_username, v_datesigup, v_cardnumber
  FROM customer
  WHERE customerid = p_CustomerID;

  DBMS_OUTPUT.PUT_LINE('CUSTOMER ' || p_CustomerID || ' INFO');
  DBMS_OUTPUT.PUT_LINE('------------------------------------------');
  DBMS_OUTPUT.PUT_LINE('NAME: ' || v_name);
  DBMS_OUTPUT.PUT_LINE('ADDRESS: ' || v_customeraddress);
  DBMS_OUTPUT.PUT_LINE('PHONE: ' || v_phone);
  DBMS_OUTPUT.PUT_LINE('USER NAME: ' || v_username);
  DBMS_OUTPUT.PUT_LINE('DATE OF SIGN UP: ' || v_datesigup);
  DBMS_OUTPUT.PUT_LINE('CARD NUMBER: ' || v_cardnumber);
  DBMS_OUTPUT.PUT_LINE('------------------------------------------');

END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_VIEW_ITEM_INFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##LIBRARY_PROJECT"."PRC_VIEW_ITEM_INFO" (
p_item_id in varchar2)
AS
v_book_cnt NUMBER;
v_video_cnt NUMBER;
v_isbn varchar2(10);
v_state varchar2(10);
v_availability VARCHAR2(5);
v_debycost NUMBER;
v_lostcost NUMBER;
v_address varchar2(50);
v_title varchar2(50);
v_year NUMBER;
no_data_found EXCEPTION;
BEGIN
    select count(*) into v_book_cnt from book where bookid = p_item_id;
    select count(*) into v_video_cnt from video where videoid =  p_item_id;
        IF v_book_cnt > 0 THEN
            SELECT isbn, state, availability, debycost, lostcost, address
            INTO v_isbn, v_state, v_availability, v_debycost, v_lostcost, v_address
            FROM book
            WHERE bookid = p_item_id;
        DBMS_OUTPUT.PUT_LINE('BOOK ' || p_item_id || ' INFO');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('ISBN: ' || v_isbn);
        DBMS_OUTPUT.PUT_LINE('STATE: ' || v_state);
        DBMS_OUTPUT.PUT_LINE('AVALABILITY: ' || v_availability);
        DBMS_OUTPUT.PUT_LINE('DEBY COST: ' || v_debycost);
        DBMS_OUTPUT.PUT_LINE('LOST COST: ' || v_lostcost);
        DBMS_OUTPUT.PUT_LINE('ADDRESS: ' || v_address);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        ELSIF v_video_cnt > 0 THEN
            SELECT title, year, state, availability, debycost, lostcost, address
            INTO v_title, v_year, v_state, v_availability, v_debycost, v_lostcost, v_address
            FROM video
            WHERE videoid = p_item_id;
        DBMS_OUTPUT.PUT_LINE('VIDEO ' || p_item_id || ' INFO');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('TITLE: ' || v_title);
        DBMS_OUTPUT.PUT_LINE('YEAR: ' || v_year);
        DBMS_OUTPUT.PUT_LINE('STATE: ' || v_state);
        DBMS_OUTPUT.PUT_LINE('AVALABILITY: ' || v_availability);
        DBMS_OUTPUT.PUT_LINE('DEBY COST: ' || v_debycost);
        DBMS_OUTPUT.PUT_LINE('LOST COST: ' || v_lostcost);
        DBMS_OUTPUT.PUT_LINE('ADDRESS: ' || v_address);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        ELSE
        RAISE no_data_found;
        END IF;
        EXCEPTION
        WHEN no_data_found then
        dbms_output.put_line('item code was not correct');
end;

/
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."LOCATION" ADD PRIMARY KEY ("ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARD
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."CARD" ADD CHECK ((status = 'A') OR (status = 'B')) ENABLE;
  ALTER TABLE "C##LIBRARY_PROJECT"."CARD" ADD PRIMARY KEY ("CARDID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."CUSTOMER" ADD PRIMARY KEY ("CUSTOMERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BRANCH
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."BRANCH" ADD PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."VIDEO" ADD CHECK ("AVAILABILITY"='A' OR "AVAILABILITY"='O') ENABLE;
  ALTER TABLE "C##LIBRARY_PROJECT"."VIDEO" ADD PRIMARY KEY ("VIDEOID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."EMPLOYEE" ADD PRIMARY KEY ("EMPLOYEEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."BOOK" ADD CHECK ("AVAILABILITY"='A' OR "AVAILABILITY"='O') ENABLE;
  ALTER TABLE "C##LIBRARY_PROJECT"."BOOK" ADD PRIMARY KEY ("BOOKID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."BOOK" ADD CONSTRAINT "ADDRESS_FK" FOREIGN KEY ("ADDRESS")
	  REFERENCES "C##LIBRARY_PROJECT"."LOCATION" ("ADDRESS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BRANCH
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."BRANCH" ADD CONSTRAINT "BRANCH_FK" FOREIGN KEY ("ADDRESS")
	  REFERENCES "C##LIBRARY_PROJECT"."LOCATION" ("ADDRESS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."CUSTOMER" ADD CONSTRAINT "SYS_C008014" FOREIGN KEY ("CARDNUMBER")
	  REFERENCES "C##LIBRARY_PROJECT"."CARD" ("CARDID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."EMPLOYEE" ADD CONSTRAINT "BRANCHNAME_FK" FOREIGN KEY ("BRANCHNAME")
	  REFERENCES "C##LIBRARY_PROJECT"."BRANCH" ("NAME") ENABLE;
  ALTER TABLE "C##LIBRARY_PROJECT"."EMPLOYEE" ADD CONSTRAINT "CARDNUMBER_FK1" FOREIGN KEY ("CARDNUMBER")
	  REFERENCES "C##LIBRARY_PROJECT"."CARD" ("CARDID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "C##LIBRARY_PROJECT"."VIDEO" ADD CONSTRAINT "ADRESS_FK" FOREIGN KEY ("ADDRESS")
	  REFERENCES "C##LIBRARY_PROJECT"."LOCATION" ("ADDRESS") ENABLE;
