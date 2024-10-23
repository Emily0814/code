-- 코드 테이블
create table tblCode (
    seq number primary key,
    subject varchar2(300) not null,
    code varchar2(2000) not null,
    regdate date default sysdate not null,
    language varchar2(30) not null
);

drop table tblCode;

create sequence seqCode;

commit;

select * from tblCode;

select * from tblAddress where seq = 1;

select * from tblAddress order by seq desc;

desc tblAddress;