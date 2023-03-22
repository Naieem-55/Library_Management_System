drop table loans;
drop table reservations;
drop table books;
drop table members;

CREATE TABLE books (
    book_id NUMBER(10) PRIMARY KEY,
    title varchar(60),
    author VARCHAR(60),
    isbn VARCHAR(10),
    year_published NUMBER(10),
    publisher VARCHAR(60),
    quantity NUMBER(10)
);

create table members(
   member_id NUMBER(10) PRIMARY KEY,
   name VARCHAR(60),
   email VARCHAR(60),
   phone_number VARCHAR(15),
   address VARCHAR(60)
);

CREATE TABLE loans (
   loan_id NUMBER(10) PRIMARY KEY,
   book_id NUMBER(10),
   member_id NUMBER(10),
   loan_date VARCHAR(15),
   due_date VARCHAR(15),
   return_date VARCHAR(15),
   FOREIGN KEY(book_id) REFERENCES books(book_id),
   FOREIGN KEY(member_id) REFERENCES members(member_id)
);


create table reservations(
   reservation_id NUMBER(10) PRIMARY KEY,
   book_id NUMBER(10),
   member_id NUMBER(10),
   reservation_date VARCHAR(15),
   FOREIGN KEY (book_id) REFERENCES books(book_id),
   FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO books VALUES (1001,'Learn C++','Md.Islam','15548',2002,'A publication',10);
INSERT INTO books VALUES (1002,'Machine learning','Anderson','15549',2000,'B publication',13);
INSERT INTO books VALUES (1003,'Basic Electrical','Pitter','15550',1995,'C publication',17);
INSERT INTO books VALUES (1004,'Urban Planning','Jhon','15551',2003,'D publication',14);

INSERT INTO members VALUES (501,'Abdullah','abdullah@gmail.com','01234567891','Dhaka');
INSERT INTO members VALUES (502,'karim','karim@gmail.com','01234567892','Rajshahi');
INSERT INTO members VALUES (503,'Islam','islam@gmail.com','01234567893','Rajshahi');
INSERT INTO members VALUES (504,'Mobin','mobin@gmail.com','01234567894','Chittagong');


INSERT INTO loans values(2001,1001,501,'01/10/2018','02/11/2018','15/10/2018');
INSERT INTO loans values(2002,1002,502,'01/9/2018','02/10/2018','15/9/2018');
INSERT INTO loans values(2003,1003,503,'10/05/2018','10/06/2018','15/06/2018');
INSERT INTO loans values(2004,1004,504,'07/02/2018','07/03/2018','10/03/2018');

INSERT INTO reservations values(102,1002,502,'07/07/2017');
INSERT INTO reservations values(103,1003,503,'12/03/2017');
INSERT INTO reservations values(101,1001,501,'19/04/2017');
INSERT INTO reservations values(104,1004,504,'14/05/2017');

select * from books;
select * from members;
select * from loans;
select * from reservations;

