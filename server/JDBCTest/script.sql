-- 0924
-- JDBCTest/script.sql
show user;
create user server identified by java1234;
grant connect, resource, dba to server;


-- �ּҷ� ���̺�
create table tblAddress (
    seq number,                             --��ȣ(PK)
    name varchar2(30) not null,             --�̸�
    age number(3) not null,                 --����
    gender char(1) not null,                --����(m,f)
    tel varchar2(15) not null,              --��ȭ��ȣ
    address varchar2(300) not null,         --�ּ�
    regdate date default sysdate not null   --�����
);

alter table tblAddress
    add constraint address_seq_pk primary key(seq);
    
alter table tblAddress
    add constraint address_age_ck check (age between 0 and 150);
    
alter table tblAddress
    add constraint address_gender_ck check (gender in ('m', 'f'));
    
create sequence seqAddress;


-- CRUD
insert into tblAddress (seq, name, age, gender, tel, address, regdate)
    values (seqAddress.nextVal, 'ȫ�浿', 20, 'm', '010-1234-5678'
            , '����� ������ ���ﵿ', default);

select * from tblAddress;

update tblAddress set age = age + 1 where seq = 1;

delete from tblAddress where seq = 1;
 
commit;


create table tblJava (
    seq number primary key,
    data varchar2(100) not null
);

select * from tblJava;

select count(*) from tblAddress;


select * from tblAddress where seq = 3;


select * from tblAddress;

select * from tblInsa;

select * from tblInsa;
select * from tblBonus order by seq desc;
select i.name as name, b.bonus as bonus, i.num as num from tblInsa i inner join tblBonus b on i.num = b.num where b.seq = (select max(seq) from tblBonus);


select * from tblAddress;

-- Ex06_CallableStatement.java
-- m1. ���ڰ�X, ��ȯ��X
create or replace procedure procM1
is
begin
    insert into tblAddress (seq, name, age, gender, tel, address, regdate)
        values (seqAddress.nextVal, 'Ÿ��', 20, 'm', '010-1234-5678'
            , '����� ������ ���ﵿ', default);
end procM1;
/


-- m2. ���ڰ�O, ��ȯ��X
create or replace procedure procM2 (
    pname varchar2,
    page number,
    pgender varchar2,
    ptel varchar2,
    paddress varchar2
)
is
begin
    insert into tblAddress (seq, name, age, gender, tel, address, regdate)
        values (seqAddress.nextVal, pname, page, pgender, ptel, paddress, default);
end procM2;
/


-- m3. ���ڰ�X, ��ȯ��O
create or replace procedure procM3 (
    pcnt out number
)
is
begin
    select count(*) into pcnt from tblAddress;
end procM3;
/




-- m4. ���ڰ�O, ��ȯ��O
-- ������ȣ > �̸�, �μ�, ����
create or replace procedure procM4 (
    pnum in number,
    pname out varchar2,
    pbuseo out varchar2,
    pjikwi out varchar2
)
is
begin
    select name, buseo, jikwi into pname, pbuseo, pjikwi from tblInsa
        where num = pnum;
end procM4;
/


-- m5. Ŀ�� ��ȯ
create or replace procedure procM5(
    public in varchar2,
    pcursor out sys_refcursor
)
is
begin
    open pcursor
    for
    select * from tblInsa where buseo = pbuseo;
end procM5;
/







