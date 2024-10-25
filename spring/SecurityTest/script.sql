
-- SecurityTest > script.sql

create table users (
	username varchar2(50) not null primary key,	--���̵�
	password varchar2(50) not null,				--��ȣ
	enabled char(1) default '1'
);
/
create table authorities (
    username varchar2(50) not null,
    authority varchar2(50) not null,
    constraint fk_authorities_users
        foreign key(username) references users(username)
);
/
create unique index ix_auth_username on authorities (username, authority);
/

insert into users (username, password) values ('dog', '1111');
insert into users (username, password) values ('cat', '1111');
insert into users (username, password) values ('tiger', '1111');


insert into authorities (username, authority) values ('dog', 'ROLE_MEMBER');
insert into authorities (username, authority) values ('cat', 'ROLE_MEMBER');
insert into authorities (username, authority) values ('tiger', 'ROLE_ADMIN');
insert into authorities (username, authority) values ('tiger', 'ROLE_MEMBER');

commit;

select * from users;

select * from authorities;


-- 28. ����ڰ� ���� ���� ��Ű�� ���
create table member (
    memberid varchar2(50) primary key,      --���̵�(PK)
    memberpw varchar2(100) not null,        --��ȣ
    membername varchar2(50) not null,       --�̸�
    enabled char(1) default '1',            --Ȱ��ȭ
    email varchar2(100) not null,           --�̸���
    age number not null,                    --����
    gender char(1) not null                 --����
);
/

create table member_auth (
    memberid varchar2(50) not null,
    auth varchar2(50) not null,
    constraint fk_auth foreign key(memberid) references member(memberid)
);
/


select * from member;
select * from member_auth;























