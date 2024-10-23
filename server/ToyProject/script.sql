show user;
create user toy identified by java1234;
grant connect, resource, dba to toy;

create table tblUser (
    id varchar2(50) primary key,
    pw varchar2(50) not null,
    name varchar2(50) not null,
    email varchar2(100) not null,
    lv number(1) not null,
    pic varchar2(100) default 'pic.png' not null,
    intro varchar2(500) null,
    regdate date default sysdate not null,
    ing number(1) default 1 not null
);

-- ȸ�� ������
insert into tblUser (id, pw, name, email, lv, pic, intro, regdate, ing)
    values ('hong','1111','ȫ�浿','hong@gmail.com',1,default,'�ȳ��ϼ���.',default,default);
    
insert into tblUser (id, pw, name, email, lv, pic, intro, regdate, ing)
    values ('dog','1111','������','dog@gmail.com',1,default,'�۸�~',default,default);
    
insert into tblUser (id, pw, name, email, lv, pic, intro, regdate, ing)
    values ('cat','1111','�����','cat@gmail.com',2,default,'�Ŀ�~������',default,default);
    
select * from tblUser;

delete from tblUser u where u.id = 'otani';  

commit;


commit;

-- �α���
select * from tblUser where id = ? and pw = ?;


-- �Խ��� ���̺�
create table tblBoard (
    seq number primary key,                         --�۹�ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    regdate date default sysdate not null,          --��¥
    readcount number default 0 not null,            --��ȸ��
    id varchar2(50) not null references tblUser(id) --���̵�(FK)
);
/

create sequence seqBoard;

select * from tblBoard;

-- �ۼ���¥ or �ۼ��ð� �Լ�
-- 1. ��ȸ �ð��� ���ð� ���� ��¥�� > �ð� ��ȯ
-- 2. ��ȸ �ð��� ���ð� �ٸ� ��¥�� > ��¥ ��ȯ
create or replace function fnRegdate (
    regdate date
) return varchar2
is
begin

    if to_char(sysdate, 'yyyy-mm-dd') = to_char(regdate, 'yyyy-mm-dd') then
        return to_char(regdate, 'hh24:mi:ss');
    else
        return to_char(regdate, 'yyyy-mm-dd');
    end if;

end fnRegdate;
/
select fnRegdate(regdate) from tblBoard order by seq desc;

select tablespace_name, file_name, bytes from dba_data_files;
select username, default_tablespace from dba_users;

-- system���� ����
alter user toy default tablespace users;

select * from tblBoard order by seq desc;

update tblBoard set regdate = regdate - 1 where seq = 7;
update tblBoard set regdate = regdate - 2.5 where seq = 6;
update tblBoard set regdate = regdate - 5 where seq = 5; 

commit;

create or replace view vwBoard
as
select 
    tblBoard.*, fnRegdate(regdate) as regtime,
    (select name from tblUser where id = tblBoard.id) as name,
    (sysdate - regdate) as isnew
from tblBoard 
    order by seq desc;
/

select * from (select a.*, rownum as rnum from vwBoard a) where rnum between 1 and 10;

select * from (select a.*, rownum as rnum from vwBoard a) where rnum between 11 and 20;

-- ��� ���̺�
create table tblComment (
    seq number primary key,                             --��ȣ(PK)
    content varchar2(2000) not null,                    --���
    regdate date default sysdate not null,              --��¥
    id varchar2(50) not null references tblUser(id),    --����(FK)
    bseq number not null references tblBoard(seq)       --�θ��(FK)
);
/

select * from tblComment;

create or replace view vwBoard
as
select 
    tblBoard.*, fnRegdate(regdate) as regtime,
    (select name from tblUser where id = tblBoard.id) as name,
    (sysdate - regdate) as isnew,
    (select count(*) from tblComment where bseq = tblBoard.seq) as commentCount
from tblBoard 
    order by seq desc;
/

select * from vwBoard;

drop table tblComment;
drop table tblBoard;

-- �Խ��� ���̺�(+�亯 > ������)
create table tblBoard (
    seq number primary key,                         --�۹�ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    regdate date default sysdate not null,          --��¥
    readcount number default 0 not null,            --��ȸ��
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    thread number not null,                         --�亯��(�׷�+����)
    depth number not null,                          --�亯��(�鿩����)
    ing number(1) default 1 not null                --��������
);
/

-- ��� ���̺� > drop�ϰ� �Ȱ��� table �������
create table tblComment (
    seq number primary key,                             --��ȣ(PK)
    content varchar2(2000) not null,                    --���
    regdate date default sysdate not null,              --��¥
    id varchar2(50) not null references tblUser(id),    --����(FK)
    bseq number not null references tblBoard(seq)       --�θ��(FK)
);
/

select max(thread) as thread from tblBoard; 
select * from tblBoard; --������ null�� ���� ���ϸ� null�̱� ������ 0���� �ٲ�

-- view ����
create or replace view vwBoard
as
select 
    tblBoard.*, fnRegdate(regdate) as regtime,
    (select name from tblUser where id = tblBoard.id) as name,
    (sysdate - regdate) as isnew,
    (select count(*) from tblComment where bseq = tblBoard.seq) as commentCount
from tblBoard 
    order by thread desc;
/

select * from tblBoard where thread < 1997
    and thread > (select nvl(max(thread), from tblBoard
        where thread < ����� thread and depth = �����depth);

select * from tblBoard;
select * from vwBoard;

-- �Խ��� ���̺�(+÷�� ����)
create table tblBoard (
    seq number primary key,                         --�۹�ȣ(PK)
    subject varchar2(300) not null,                 --����
    content varchar2(4000) not null,                --����
    regdate date default sysdate not null,          --��¥
    readcount number default 0 not null,            --��ȸ��
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    thread number not null,                         --�亯��(�׷�+����)
    depth number not null,                          --�亯��(�鿩����)
    ing number(1) default 1 not null,               --��������
    attach varchar2(300) null                       --÷������
);
/


-- ���ƿ�/�Ⱦ�� ���̺�
create table tblGoodBad (
    seq number primary key,                         --PK
    id varchar2(50) not null references tblUser(id),--���̵�(FK)
    bseq number not null references tblBoard(seq),  --�Խù�(FK)
    state number(1) not null                        --1(���ƿ�), 0(�Ⱦ��)
);

create sequence seqGoodBad;

select * from tblGoodBad;

select state, count(*) as cnt from tblGoodBad where bseq = 292 group by state order by state asc;

delete from tblBoard;
delete from tblComment;
delete from tblGoodBad;

commit;

create sequence seqHashtag;

-- �ؽ��±�
create table tblHashtag (
    seq number primary key,             --��ȣ(PK)
    tag varchar2(100) unique not null   --�ؽ��±�(UQ)
);
create sequence seqHashtag;

-- ����(����)
create table tblTagging (
    seq number primary key,                         --��ȣ(PK)
    bseq number not null references tblBoard(seq),  --�۹�ȣ(FK)
    hseq number not null references tblHashtag(seq) --�ؽ��±׹�ȣ(FK)
);
create sequence seqTagging;

commit;

-- 1015

select * from tblBoard order by seq desc;
select * from tblTagging;
select * from tblHashtag;

select h.tag from tblBoard b
    inner join tblTagging t
        on b.seq = t.bseq
            inner join tblHashtag h
                on h.seq = t.hseq
                    where b.seq = 302;
/


select * from (select a.*, rownum as rnum from vwBoard a %s) b
    inner join tblTagging t
            on b.seq = t.bseq
                inner join tblHashtag h
                    on h.seq = t.hseq
                        where h.tag = '�ڹ�';


-- view ����
create or replace view vwBoard
as
select 
    tblBoard.*, fnRegdate(regdate) as regtime,
    (select name from tblUser where id = tblBoard.id) as name,
    (sysdate - regdate) as isnew,
    (select count(*) from tblComment where bseq = tblBoard.seq) as commentCount,
    (select count(*) from tblBoard b
        inner join tblTagging t
            on b.seq = t.bseq
                inner join tblHashtag h
                    on h.seq = t.hseq
                        where b.seq = tblBoard.seq) as istag
from tblBoard 
    order by thread desc;
/

select * from vwBoard;

-- ���� ���
create table tblLog (
    seq number primary key,                             --��ȣ(PK)
    id varchar2(50) not null references tblUser(id),    --���̵�(FK)
    regdate date default sysdate not null               --���� �ð�
);
/
create sequence seqLog;




-- �׽�Ʈ�� ������
delete from tblGoodBad;
delete from tblComment;
delete from tblTagging;
delete from tblBoard;
delete from tblLog;

commit;

-- �α��� ���
insert into tblLog values (seqLog.nextVal, 'hong', sysdate); --1
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 2);
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 3); --3
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 7); --1
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 10);
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 12);
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 20); --2
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 22); --1
insert into tblLog values (seqLog.nextVal, 'hong', sysdate - 23);

select * from tblLog;

-- �۾���(hong)
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 23, default, 'hong', 1000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 22, default, 'hong', 2000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 20, default, 'hong', 3000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 7, default, 'hong', 4000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 3, default, 'hong', 5000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 3, default, 'hong', 6000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 3, default, 'hong', 7000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate, default, 'hong', 8000, 0, default, '');

insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 5, default, 'otani', 9000, 0, default, '');
insert into tblBoard values (seqBoard.nextVal, '�׽�Ʈ�Դϴ�.', '����', sysdate - 11, default, 'otani', 10000, 0, default, '');

select * from tblBoard;

-- ���(hong)
desc tblComment;

insert into tblComment values (seqComment.nextVal, '����Դϴ�.', sysdate, 'hong', 313);
insert into tblComment values (seqComment.nextVal, '����Դϴ�.', sysdate, 'hong', 313);
insert into tblComment values (seqComment.nextVal, '����Դϴ�.', sysdate-5, 'hong', 314);
insert into tblComment values (seqComment.nextVal, '����Դϴ�.', sysdate-22, 'hong', 316);
insert into tblComment values (seqComment.nextVal, '����Դϴ�.', sysdate-23, 'hong', 317);
select * from tblBoard order by seq desc;
select * from tblComment;


commit;

-- 2024�� 10�� hong�� ���� Ȱ��
-- ���� �� �� �����?
-- ����� �� �� �����?
-- �α��� ���� �ߴ���?
-- �±� �� �� �����? X �̰� �� ���ٶ�� �Ͻ�;;


select 
    count(*) as cnt,
    to_char(regdate, 'yyyy-mm-dd') as regdate,
    (select count(*) from tblBoard where to_char(regdate, 'yyyy-mm-dd') = to_char(l.regdate, 'yyyy-mm-dd')) as bcnt,
    (select count(*) from tblComment where to_char(regdate, 'yyyy-mm-dd') = to_char(l.regdate, 'yyyy-mm-dd')) as ccnt
from tblLog l
    where to_char(l.regdate, 'yyyy-mm') = '2024-10' and l.id = 'hong'
                group by to_char(regdate, 'yyyy-mm-dd');

delete from tblComment;
delete from tblBoard;

commit;







select tblComment.*, (select name from tblUser where id = tblComment.id) as name from tblComment where bseq = 319 order by seq desc;


