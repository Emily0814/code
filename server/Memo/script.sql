//0925
-- server ����
create table tblMemo (
    seq number primary key,                 --�޸��ȣ
    name varchar2(30) not null,             --�ۼ���
    pw varchar2(30) not null,               --��ȣ
    memo varchar2(2000) not null,           --�޸�
    regdate date default sysdate not null   --�ۼ���
);

create sequence seqMemo;

-- �׽�Ʈ & ���� SQL

-- �޸𾲱�
insert into tblMemo (seq, name, pw, memo, regdate)
    values (seqMemo.nextVal, 'ȫ�浿', '1111', '�޸��Դϴ�.', default);
    
-- �޸��б� > ��Ϻ���
select * from tblMemo order by seq desc;

-- �޸� �����ϱ�
update tblMemo set memo = '�����մϴ�.' where seq = 1;

-- �޸� �����ϱ�
delete from tblMemo where seq = 1;

-- ����/���� ���� Ȯ���ϱ�
-- 1: ����O
-- 0: ����X
select count(*) from tblMemo where seq = 1 and pw = '1111';

select * from tblMemo;
