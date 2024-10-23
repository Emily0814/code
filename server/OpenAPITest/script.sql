-- OpenAPITest > script.sql

-- ��ǥ(��Ŀ) ���̺�
create table tblMarker(
    seq number primary key,     --PK
    lat number not null,        --����(Latitude)
    lng number not null         --�浵(Longitude)
);

create sequence seqMarker;

--�ѵ����� : 37.499330, 127.033181
--���￪ : 37.500089, 127.035399
--�Ե����� : 37.498556, 127.030443
--�������� : 37.499707, 127.032141
--�������� : 37.499944, 127.035494
--�ĸ��ٰԶ� : 37.499378, 127.034302
--�ѷ��긣 : 37.499097, 127.034532
--�����Ϸ��� : 37.499028, 127.033160
--CU : 37.498798, 127.033485
--���콺������ : 37.498982, 127.032267

insert into tblMarker values (seqMarker.nextVal, 37.499330, 127.033181);
insert into tblMarker values (seqMarker.nextVal, 37.500089, 127.035399);
insert into tblMarker values (seqMarker.nextVal, 37.498556, 127.030443);
insert into tblMarker values (seqMarker.nextVal, 37.499707, 127.032141);
insert into tblMarker values (seqMarker.nextVal, 37.499944, 127.035494);
insert into tblMarker values (seqMarker.nextVal, 37.499378, 127.034302);
insert into tblMarker values (seqMarker.nextVal, 37.499097, 127.034532);
insert into tblMarker values (seqMarker.nextVal, 37.499028, 127.033160);
insert into tblMarker values (seqMarker.nextVal, 37.498798, 127.033485);
insert into tblMarker values (seqMarker.nextVal, 37.498982, 127.032267);

commit;

select * from tblMarker;

-- Food
create table tblCategory (
    seq number primary key,         --PK
    name varchar2(100) not null,    --ī�װ���(�ѽ�, �߽�, ���, ����..)
    img varchar2(100) not null      --ī�װ��� ��Ŀ �̹���
);

insert into tblCategory values (1, '�ѽ�', 'forest.png');
insert into tblCategory values (2, '���', 'restaurant.png');
insert into tblCategory values (3, '�߽�', 'town-hall.png');
insert into tblCategory values (4, '�Ͻ�', 'bus-stop.png');
insert into tblCategory values (5, '�н�', 'bakery.png');
insert into tblCategory values (6, '�н�ƮǪ��', 'store.png');
insert into tblCategory values (7, '����', 'bar.png');
insert into tblCategory values (8, '������/��Ʈ', 'shopping.png');
insert into tblCategory values (9, '��Ÿ', 'jewelry.png');

drop table tblFood;

create table tblFood (
    seq number primary key,         --PK
    name varchar2(300) not null,    --��Ҹ�
    lat number not null,            --����
    lng number not null,            --�浵
    category number not null references tblCategory(seq),    --ī�װ�
    address varchar2(500) null,     --�ּ�
    star number(1) not null,        --����
    menu varchar2(1000) null        --��õ �޴�
);
create sequence seqFood;

commit;

select * from tblCategory;
select * from tblFood;

delete from tblFood;

commit;









