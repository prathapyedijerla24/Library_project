
CREATE TABLE Card(
  cardID NUMBER PRIMARY KEY,
  status VARCHAR2(1) CHECK ((status = 'A') OR (status = 'B')),
  fines NUMBER);
-----------------------------------------------------------------------------
CREATE TABLE Location(
  address VARCHAR2(50) PRIMARY KEY);
-----------------------------------------------------------------------------
CREATE TABLE Branch(
  name VARCHAR2(40) PRIMARY KEY,
  address VARCHAR2(50),
  phone NUMBER(9),
  CONSTRAINT Branch_FK FOREIGN KEY (address) REFERENCES Location(address));
------------------------------------------------------------------------------
CREATE TABLE Customer(
  customerID NUMBER PRIMARY KEY,
  name VARCHAR2(40),
  customerAddress VARCHAR2(50),
  phone NUMBER(9),
  password VARCHAR2(20),
  userName VARCHAR2(10),
  dateSignUp DATE,
  cardNumber NUMBER,
  CONSTRAINT Customer_FK  FOREIGN KEY (cardNumber) REFERENCES Card(cardID));
------------------------------------------------------------------------------
CREATE TABLE Employee(
  employeeID NUMBER PRIMARY KEY,
  name VARCHAR2(40),
  employeeAddress VARCHAR2(50),
  phone NUMBER(9),
  password VARCHAR2(20),
  userName VARCHAR2(10),
  paycheck NUMBER (8, 2),
  branchName VARCHAR2(40),
  cardNumber NUMBER,
  CONSTRAINT Employee_FK  FOREIGN KEY (cardNumber) REFERENCES Card(cardID));
-------------------------------------------------------------------------------
CREATE TABLE Book(
  ISBN VARCHAR2(4),
  bookID VARCHAR2(6) PRIMARY KEY,
  state VARCHAR2(10),
  avalability VARCHAR2(1) CHECK ((avalability = 'A') OR (avalability = 'O')),
  debyCost NUMBER(10,2),
  lostCost NUMBER(10,2),
  address VARCHAR2(50),
  CONSTRAINT Book_FK FOREIGN KEY (address) REFERENCES Location(address));
-----------------------------------------------------------------------------------
CREATE TABLE Video(
  title VARCHAR2(50),
  year INT,
  videoID VARCHAR2(6) PRIMARY KEY,
  state VARCHAR2(10),
  avalability VARCHAR2(1) CHECK ((avalability = 'A') OR (avalability = 'O')),
  debyCost NUMBER(10,2),
  lostCost NUMBER(10,2),
  address VARCHAR(50),
  CONSTRAINT Video_FK FOREIGN KEY (address) REFERENCES Location(address));
------------------------------------------------------------------------------------
CREATE TABLE Rent(
  cardID NUMBER PRIMARY KEY,
  itemID VARCHAR2(6),
  apporpriationDate DATE,
  returnDate DATE);
-------------------------------------------------------------------------------------
--incert into card  table
INSERT INTO Card VALUES (101,'A',0);
INSERT INTO Card VALUES (102,'A',0);
INSERT INTO Card VALUES (103,'A',0);
INSERT INTO Card VALUES (104,'A',0);
INSERT INTO Card VALUES (105,'A',0);
INSERT INTO Card VALUES (106,'A',0);
INSERT INTO Card VALUES (107,'B',50);
INSERT INTO Card VALUES (108,'B',10);
INSERT INTO Card VALUES (109,'B',25.5);
INSERT INTO Card VALUES (110,'B',15.25);
INSERT INTO Card VALUES (151,'A',0);
INSERT INTO Card VALUES (152,'A',0);
INSERT INTO Card VALUES (153,'A',0);
INSERT INTO Card VALUES (154,'A',0);
INSERT INTO Card VALUES (155,'A',0);
-----------------------------------------------------------------------------------
--insert  into Location table
INSERT INTO Location VALUES ('ARCHEOLOGY ROAD');
INSERT INTO Location VALUES ('CHEMISTRY ROAD');
INSERT INTO Location VALUES ('COMPUTING ROAD');
INSERT INTO Location VALUES ('PHYSICS ROAD');
-----------------------------------------------------------------------------------
--insert into Branch table
INSERT INTO Branch VALUES ('ARCHEOLOGY', 'ARCHEOLOGY ROAD', 645645645);
INSERT INTO Branch VALUES ('CHEMISTRY', 'CHEMISTRY ROAD', 622622622);
INSERT INTO Branch VALUES ('COMPUTING', 'COMPUTING ROAD', 644644644);
INSERT INTO Branch VALUES ('PHYSICS', 'PHYSICS ROAD', 666666666); 
-----------------------------------------------------------------------------------
--insert into customer table
INSERT INTO Customer VALUES (1, 'ALFRED', 'BACON STREET', 623623623, 'alfred123', 'al1', '12-05-2018', 101);
INSERT INTO Customer VALUES (2, 'JAMES', 'DOWNTOWN ABBEY', 659659659, 'james123', 'ja2', '10-05-2018', 102);
INSERT INTO Customer VALUES (3, 'GEORGE', 'DETROIT CITY', 654654654, 'george123', 'ge3', '21-06-2017', 103);
INSERT INTO Customer VALUES (4, 'TOM', 'WASHINGTON DC.', 658658658, 'tom123', 'tom4', '05-12-2016', 104);
INSERT INTO Customer VALUES (5, 'PETER', 'CASTERLY ROCK', 652652652, 'peter123', 'pe5', '09-08-2016', 105);
INSERT INTO Customer VALUES (6, 'JENNY', 'TERRAKOTA', 651651651, 'jenny123', 'je6', '30-04-2017', 106);
INSERT INTO Customer VALUES (7, 'ROSE', 'SWEET HOME ALABAMA', 657657657, 'rose123', 'ro7', '28-02-2018', 107);
INSERT INTO Customer VALUES (8, 'MONICA', 'FAKE STREET 123', 639639639, 'monica123', 'mo8', '15-01-2016', 108);
INSERT INTO Customer VALUES (9, 'PHOEBE', 'CENTRAL PERK', 678678678, 'phoebe123', 'pho9', '25-03-2016', 109);
INSERT INTO Customer VALUES (10, 'RACHEL', 'WHEREVER', 687687687, 'rachel123', 'ra10', '01-09-2017', 110);
--------------------------------------------------------------------------------------
--insert into Employee table
INSERT INTO Employee VALUES (211, 'ROSS', 'HIS HOUSE', 671671671, 'ross123', 'ro11', 1200, 'ARCHEOLOGY', 101);
INSERT INTO Employee VALUES (212, 'CHANDLER', 'OUR HEARTHS', 688688688, 'chandler123', 'chand12', 1150.50, 'ARCHEOLOGY', 102);
INSERT INTO Employee VALUES (213, 'JOEY', 'LITTLE ITAYLY', 628628628, 'joey123', 'jo13', 975.75, 'ARCHEOLOGY', 103);
INSERT INTO Employee VALUES (214, 'VICTOR', 'SANTA FE', 654321987, 'victor123', 'vic14', 2200, 'COMPUTING', 104);
INSERT INTO Employee VALUES (215, 'JAIRO', 'ARMILLA', 698754321, 'jairo123', 'ja15', 2200.50, 'CHEMISTRY', 105);
----------------------------------------------------------------------------------------
--insert into Book table
INSERT INTO Book VALUES ('A123', 'B1A123', 'GOOD', 'A', 5, 20, 'ARCHEOLOGY ROAD');
INSERT INTO Book VALUES ('A123', 'B2A123', 'NEW', 'O', 6, 30, 'ARCHEOLOGY ROAD');
INSERT INTO Book VALUES ('B234', 'B1B234', 'NEW', 'A', 2, 15, 'CHEMISTRY ROAD');
INSERT INTO Book VALUES ('C321', 'B1C321', 'BAD', 'A', 1, 10, 'PHYSICS ROAD');
INSERT INTO Book VALUES ('H123', 'B1H123', 'GOOD', 'A', 3, 15, 'CHEMISTRY ROAD');
INSERT INTO Book VALUES ('Z123', 'B1Z123', 'GOOD', 'O', 4, 20, 'COMPUTING ROAD');
INSERT INTO Book VALUES ('L321', 'B1L321', 'NEW', 'O', 4, 20, 'COMPUTING ROAD');
INSERT INTO Book VALUES ('P321', 'B1P321', 'USED', 'A', 2, 12, 'CHEMISTRY ROAD');
------------------------------------------------------------------------------------------
--insert into Video table
INSERT INTO Video VALUES ('CHEMISTRY FOR DUMMIES', 2016, 'V1CH16', 'NEW', 'O', 10, 50, 'CHEMISTRY ROAD');
INSERT INTO Video VALUES ('CHEMISTRY FOR DUMMIES', 2016, 'V2CH16', 'BAD', 'A', 5, 20, 'CHEMISTRY ROAD');
INSERT INTO Video VALUES ('COMPUTING MANAGER', 2014, 'V1CO14', 'GOOD', 'A', 4, 20, 'COMPUTING ROAD');
INSERT INTO Video VALUES ('JAVA LANGUAGE', 2015, 'V1JA15', 'USED', 'O', 4, 20, 'COMPUTING ROAD');
INSERT INTO Video VALUES ('DINOSAURS', 2000, 'V1DI00', 'GOOD', 'O', 5, 25, 'ARCHEOLOGY ROAD');
INSERT INTO Video VALUES ('T-REX, DEADLY KING', 1992, 'V1TR92', 'USED', 'A', 10, 50, 'ARCHEOLOGY ROAD');
INSERT INTO Video VALUES ('ANCESTORS OF THE HUMANITY', 1998, 'V1AN98', 'BAD', 'A', 3, 15, 'ARCHEOLOGY ROAD');
INSERT INTO Video VALUES ('PHYSICS, MOST BORING SH*T', 2018, 'V1PH18', 'NEW', 'A', 1, 5, 'PHYSICS ROAD');
-----------------------------------------------------------------------------------------------
--insert into Rent table
INSERT INTO Rent VALUES (101, 'B2A123', '10-05-2018', '20-05-2018');
INSERT INTO Rent VALUES (102, 'B1Z123', '10-05-2018', '25-05-2018');
INSERT INTO Rent VALUES (104, 'V1JA15', '01-05-2018', '21-05-2018');
INSERT INTO Rent VALUES (105, 'V1DI00', '02-05-2018', '25-05-2018');
INSERT INTO Rent VALUES (154, 'B1L321', '04-05-2018', '26-05-2018');
INSERT INTO Rent VALUES (155, 'V1CH16', '29-04-2018', '29-05-2018');
-------------------------------------------------------------------------------------------------
--create procedure to login customer
create or replace PROCEDURE prc_customerlogin_library(
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
--call procedure
begin
prc_customerlogin_library('username','password');
end;
--------------------------------------------------------------------------------------------------
--create  procedure to login emmployee
create or replace PROCEDURE prc_employeelogin_library(
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
--call procedure
BEGIN
prc_employeelogin_library('username','password');
end;
------------------------------------------------------------------------------------------------------
--create item info procedure to saw item is inn the library or not.
create or replace procedure prc_view_item_info (
p_item_id in varchar2)
AS
v_book_cnt NUMBER;
v_video_cnt NUMBER;
v_isbn varchar2(10);
v_state varchar2(10);
v_availability VARCHAR2(5);
v_RENTCOST NUMBER;
v_lostcost NUMBER;
v_address varchar2(50);
v_title varchar2(50);
v_year NUMBER;
no_data_found EXCEPTION;
BEGIN
    select count(*) into v_book_cnt from book where bookid = p_item_id;
    select count(*) into v_video_cnt from video where videoid =  p_item_id;
        IF v_book_cnt > 0 THEN
            SELECT isbn, state, AVALABILITY, RENTCOST, lostcost, address
            INTO v_isbn, v_state, v_availability, v_RENTCOST, v_lostcost, v_address
            FROM book
            WHERE bookid = p_item_id;
        DBMS_OUTPUT.PUT_LINE('BOOK ' || p_item_id || ' INFO');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('ISBN: ' || v_isbn);
        DBMS_OUTPUT.PUT_LINE('STATE: ' || v_state);
        DBMS_OUTPUT.PUT_LINE('AVALABILITY: ' || v_availability);
        DBMS_OUTPUT.PUT_LINE('RENTCOST: ' || v_RENTCOST);
        DBMS_OUTPUT.PUT_LINE('LOST COST: ' || v_lostcost);
        DBMS_OUTPUT.PUT_LINE('ADDRESS: ' || v_address);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        ELSIF v_video_cnt > 0 THEN
            SELECT title, year, state, AVALABILITY, RENTCOST, lostcost, address
            INTO v_title, v_year, v_state, v_availability, v_RENTCOST, v_lostcost, v_address
            FROM video
            WHERE videoid = p_item_id;
        DBMS_OUTPUT.PUT_LINE('VIDEO ' || p_item_id || ' INFO');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('TITLE: ' || v_title);
        DBMS_OUTPUT.PUT_LINE('YEAR: ' || v_year);
        DBMS_OUTPUT.PUT_LINE('STATE: ' || v_state);
        DBMS_OUTPUT.PUT_LINE('AVALABILITY: ' || v_availability);
        DBMS_OUTPUT.PUT_LINE('RENTCOST: ' || v_RENTCOST);
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
--call procedure
BEGIN
prc_view_item_info('item_id');
end;
-----------------------------------------------------------------------------------------------
--create procedure to view customer account. He rent any item or he has fines like  that.
create or replace procedure prc_cust_account(
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
--call procedure
BEGIN
prc_cust_account(1);
end;
----------------------------------------------------------------------------------------------------------
--create procedure to view Employee account. He rent any item or he has fines like  that.
create or replace procedure prc_emp_account(
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
--call procedure
BEGIN
prc_emp_account(211);
end;
----------------------------------------------------------------------------------------------------------------------
--create procedure to rent item in the library
create or replace PROCEDURE prc_rent_item (
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
            select AVALABILITY into v_status from book WHERE bookid = p_itemid;
                IF v_status like 'A' THEN
                    UPDATE book SET  AVALABILITY = 'O' WHERE bookid =p_itemid;
                    insert into rent
                    values(p_cardnumber,p_itemid,TO_DATE(sysdate),p_item_return_date);
                    dbms_output.put_line('item '||p_itemid||' rented');
                ELSE
                    dbms_output.put_line('The book is already rented');
                END IF;
        ELSIF p_item_type LIKE 'video' THEN
            SELECT AVALABILITY INTO v_status FROM  video WHERE videoid = p_itemid;
                IF v_status like 'A' THEN
                    UPDATE video SET  AVALABILITY = 'O' WHERE videoid =p_itemid;
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
--call procedure
BEGIN
prc_rent_item('cardnumber','itemid','itemtype','item_return_date');
end;
---------------------------------------------------------------------------------------------------------------
--create a procedure to pay fines
create or replace procedure prc_pay_fines (
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
--call procedure
BEGIN
prc_pay_fines('card_number','amount_to_pay');
end;
-----------------------------------------------------------------------------------------------------------------------
--create a procedure to update customer information like passwords,user names etc.
create or replace PROCEDURE prc_update_cust_info (
p_customerid in number,
p_CUSTOMERADDRESS in customer.CUSTOMERADDRESS%type,
p_phone in number,
p_password in customer.password%type)
AS
BEGIN
    update customer SET  customeraddress = p_CUSTOMERADDRESS, phone = p_phone, password =p_password where customerid = p_customerid;
end;
/
--call procedure
BEGIN
prc_update_cust_info('customerid','customeraddress','phone','password');
end;
-------------------------------------------------------------------------------------------------------------------------
--create a procedure to update employee information 
create or replace PROCEDURE prc_update_emp_info (
p_employeeid in number,
p_EMPLOYEEADDRESS in employee.EMPLOYEEADDRESS%type,
p_phone in number,
p_password in employee.password%type)
AS
BEGIN
    update employee SET  employeeaddress = p_employeeADDRESS, phone = p_phone, password =p_password where employeeid = p_employeeid;
end;
/
--call procedure
BEGIN
prc_update_emp_info('emp_id','emp_address','phone','password');
end;
-------------------------------------------------------------------------------------------------------------------------
--create procedre for add customre
create or replace procedure prc_add_customer (
p_name in customer.name%type,
p_customeraddress in customer.customeraddress%TYPE,
p_phone in customer.phone%TYPE,
p_username in customer.username%TYPE,
p_password in customer.password%type,
p_cardnumber in customer.cardnumber%TYPE)
AS
v_cust_id NUMBER;
BEGIN
    v_cust_id := seq_cust_id.nextval; --we create one sequal (create sequence seq_cust_id;)
    dbms_output.put_line('customer id = '||v_cust_id);
    insert into customer
    values(v_cust_id,p_name,p_customeraddress,p_phone,p_username,p_password,to_date(sysdate),p_cardnumber);
end;
/
--call procedure
BEGIN
prc_add_customer('name','cust_address','phone','username','password','cardnumber');
end;
-------------------------------------------------------------------------------------------------------------------------
--we creaete a TRIGGER to automatically add card when we create new customer with new card id 
create or replace TRIGGER add_card_customer
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
--note we dont call triggers. Triggers are fire automatically.
-------------------------------------------------------------------------------------------------------------------------
--we creaete a TRIGGER to automatically add card when we create new employee with new card id 
create or replace TRIGGER add_card_Employee
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
-------------------------------------------------------------------------------------------------------------------------
--create a procedre to view what are the item in the library
create or replace procedure prc_all_item_in_library (p_item_type VARCHAR2)
AS
CURSOR cur_book is select * from book;
CURSOR cur_video is select * from video;
v_book cur_book%rowtype;
v_video cur_video%rowtype;
BEGIN
    IF p_item_type like 'book' THEN
        OPEN cur_book;
        dbms_output.put_line('ISBN  BOOKID  STATE  AVALABILITY  RENTCOST  LOSTCOST  ADDRESS');
        dbms_output.put_line('--------------------------------------------------------------');
        LOOP
        FETCH cur_book into v_book;
        EXIT WHEN cur_book%notfound;
        dbms_output.put_line(v_book.ISBN||'  '||v_book.BOOKID||'  '||v_book.AVALABILITY||'  '||v_book.RENTCOST||'  '||v_book.LOSTCOST||'  '||v_book.ADDRESS);
        end loop;
        CLOSE cur_book;
    ELSIF p_item_type like 'video' then
        open cur_video;
        dbms_output.put_line('TITLE  YEAR  VIDEOID  STATE  AVALABILITY  RENTCOST  LOSTCOST  ADDRESS');
        dbms_output.put_line('----------------------------------------------------------------------');
        loop
        fetch cur_video into v_video;
        exit when cur_video%notfound;
        dbms_output.put_line(v_video.TITLE||'  '||v_video.YEAR||'  '||v_video.VIDEOID||'  '||v_video.STATE||'  '||v_video.AVALABILITY||'  '||v_video.RENTCOST||'  '||v_video.LOSTCOST||'  '||v_video.ADDRESS);
        end loop;
        CLOSE cur_video;
    else 
    DBMS_OUTPUT.PUT_LINE('TYPE INCORRECT, you must choose between books or videos');
    END if;
end;
/
--call procedure 
BEGIN
prc_all_item_in_library('item_type');
END;
-------------------------------------------------------------------------------------------------------------------
--create a procedure to return items we taken for rent
create or replace PROCEDURE prc_return_item(p_item_id IN VARCHAR2)
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
      SET AVALABILITY = 'A'
      WHERE bookid LIKE p_item_id;
      DBMS_OUTPUT.PUT_LINE('The book ' || p_item_id || ' is now avaible.');
    ELSIF v_cnt_video > 0 THEN
      UPDATE video
      SET AVALABILITY = 'A'
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
--call procedure
BEGIN
prc_return_item('item_id');
end;
------------------------------------------------------------------------------------------------------------------
--create a trigger to pay fines or update fines
create or replace TRIGGER modify_fines
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
------------------------------------------------------------------------------------------------------------------
--create procedure add book to the library 
create or replace procedure prc_add_book (
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
--call procedure
BEGIN
prc_add_book('isbn','bookid','state','rentcost','lostcost','address');
end;
--------------------------------------------------------------------------------------------------------------
--create procedure to add videos to library  
create or replace procedure prc_add_video(
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
--call procedure
BEGIN
prc_add_video('title','year','videoid','state','rent_cost','lost_cost','address');
end;
----------------------------------------------------------------------------------------------------------
--create procedure to remove item from library
create or replace procedure prc_remove_item_from_library(
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
--call procedure
BEGIN
prc_remove_item_from_library('item_id');
end;
-----------------------------------------------------------------------------------------------------------------
--create procedure view cusstomer full information
create or replace PROCEDURE prc_view_cust_info(p_CustomerID IN NUMBER)
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
--call procedure
BEGIN
prc_view_cust_info('customer_id');
end;