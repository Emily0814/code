
-- SecurityBoardTest > script.sql

create table Board (
    seq number primary key,
    subject varchar2(500) not null,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    memberid varchar2(50) not null references Member(memberid)
);
/
create sequence seqBoard;

commit;

insert into Board (seq, subject, content, regdate, memberid) values (seqBoard.nextVal, '�Խ����Դϴ�.', '�����Դϴ�.', default, 'dog');

select * from Board;

commit;

select * from member;