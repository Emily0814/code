/*

    ex15_insert.sql
    - DML
    - 테이블에 데이터를 추가하는 명령어
    
    insert into 테이블명 (컬럼리스트) values (값리스트);
    
    

*/


drop table tblMemo;
select * from tblMemo;

create table tblMemo(
    seq number(3) primary key,          --메모번호(NN)
    name varchar2(30) default '익명',   --작성자
    memo varchar2(1000),                --메모내용(NN)
    regdate date default sysdate not null       --작성날짜
);

create sequence seqMemo;

-- 1. 표준
-- : 원본 테이블에 정의된 컬럼 순서대로 > 컬럼 리스트와 값 리스트를 생성
-- : 특별한 목적이 없으면 이 방식 사용
insert into tblMemo (seq, name, memo, regdate)
                values (seqMemo.nextVal, '홍길동', '메모입니다.', sysdate);
                
-- 2. 컬럼 리스트(값 리스트)의 순서는 원본 테이블과 상관없다.
-- : 컬럼 리스트의 순서와 값 리스트의 순서는 일치해야 한다.
insert into tblMemo (regdate, seq, name, memo)
                values (sysdate, seqMemo.nextVal, '홍길동', '메모입니다.');
                
-- 3. ORA-00947: not enough values
insert into tblMemo (seq, name, memo, regdate)
                values (seqMemo.nextVal, '홍길동', '메모입니다.');

-- 4. ORA-00913: too many values
insert into tblMemo (seq, name, memo)
                values (seqMemo.nextVal, '홍길동', '메모입니다.', sysdate);

-- 5. null 컬럼 조작
-- 5.1 null 상수 작용
insert into tblMemo (seq, name, memo, regdate)
                values (seqMemo.nextVal, '홍길동', null, sysdate);
           
-- 5.2 컬럼 생략           
insert into tblMemo (seq, name, regdate)
                values (seqMemo.nextVal, '홍길동', sysdate);
                
-- 5.3 default 컬럼 조작
-- 6.1 컬럼 생략 > null 대입 > default 호출 ^암시적 호출
insert into tblMemo (seq, memo, regdate)
                values (seqMemo.nextVal, '메모입니다.', sysdate);


-- 6.2 null 상수 > default 동작 안함
insert into tblMemo (seq, name, memo, regdate)
                values (seqMemo.nextVal, null, '메모입니다.', sysdate);

-- 6.3 default 상수 ^명시적 호출
insert into tblMemo (seq, name, memo, regdate)
                values (seqMemo.nextVal, default, '메모입니다.', sysdate);

-- 7. 단축
-- 7.1 컬럼리스트는 생략할 수 있다.
insert into tblMemo values (seqMemo.nextVal, '홍길동', '메모입니다.', sysdate);


-- 7.2 컬럼 리스트를 생략하면, 테이블 원본 컬럼 순서대로 값 리스트를 작성
-- ORA-00932: inconsistent datatypes: expected NUMBER got DATE
insert into tblMemo values (sysdate, seqMemo.nextVal, '홍길동', '메모입니다.');

-- 7.3 null 컬럼 생략 불가능
-- ORA-00947: not enough values
insert into tblMemo values (seqMemo.nextVal, '홍길동', sysdate);
insert into tblMemo values (seqMemo.nextVal, '홍길동', null, sysdate);

-- 7.4 default 컬럼
insert into tblMemo values (seqMemo.nextVal, '메모입니다.', sysdate);
insert into tblMemo values (seqMemo.nextVal, default, '메모입니다.', sysdate);

select * from tblMemo;

-- 8. 
-- tblMemo 테이블 > 복사 > 새 테이블 생성(tblMemoCopy)
drop table tblMemoCopy;

create table tblMemoCopy(
    seq number(3) primary key,          --메모번호(NN)
    name varchar2(30) default '익명',   --작성자
    memo varchar2(1000),                --메모내용(NN)
    regdate date default sysdate not null       --작성날짜
);

insert into tblMemoCopy select * from tblMemo; -- Sub Query
insert into tblMemoCopy select * from tblMemo where name = '홍길동';

select * from tblMemoCopy;

-- 9. 
-- tblMemo 테이블 > 복사 > 새 테이블 생성(tblMemoCopy)
-- 9.1 테이블 구조 복사(O)
-- 9.2 제약 사항 복사(X)     ^다량의 dummy용
create table tblMemoCopy
as
select * from tblMemo;

select * from tblMemoCopy;
desc tblMemoCopy;



















