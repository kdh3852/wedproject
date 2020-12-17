create table board(
title varchar(10),
writer varchar(10),
content varchar(50),
joinDate date
);

CREATE table member(
user_id varchar2(10),
pwd varchar2(10),
pwdCheck varchar2(10),
name varchar2(50),
nickname varchar2(50),
tel varchar2(50),
email varchar2(50),
gender varchar2(50)
);