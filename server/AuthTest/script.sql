-- AuthTest > script.sql

-- ȸ�� ���̺�
create table tblUser (
    id varchar2(30) primary key,    --���̵�(PK)
    pw varchar2(30) not null,       --��ȣ
    name varchar2(30) not null,     --�̸�
    lv number(1) not null check (lv between 1 and 2)    --1(ȸ��),2(������)
);

insert into tblUser values ('hong', '1111', 'ȫ�浿', 1);
insert into tblUser values ('dog', '1111', '������', 1);
insert into tblUser values ('cat', '1111', '�����', 2);

commit;

