/*

    ex14_sequence.sql
    
    
    시퀀스, Sequence
    - 데이터베이스 객체 중 하나(테이블, 제약사항, 시퀀스)
    - 오라클 전용 객체(다른 DBMS 제품에는 없음)
    - 일련 번호를 생성하는 객체(*******)
    - 주로 식별자를 만드는데 사용한다.  > 주로 PK 값으로 사용한다.
                                        > 이외에 다양한 용도로 활용한다.
    
    
    시퀀스 객체 생성하기
    - create sequence 시퀀스명;
    
    시퀀스 객체 삭제하기
    - drop sequence 시퀀스명;
    
    시퀀스 객체 사용하기
    - 시퀀스명.nextVal
    - 시퀀스명.currVal
    

*/


-- DB Object 명명법
-- : 헝가리언 표기법
-- ex) tblMemo
-- ex) seqMemo

create sequence seqNum;

drop sequence seqNum;
create sequence seqNum start with 21;

select sysdate from dual;
select seqNum.nextVal from dual; --10 > 11 > 12
select seqNum.currVal from dual; --11 > 11 > 11


insert into tblMemo(seq, name, memo, regdate) 
             values(seqNum.nextVal, '시퀀스', '일련번호입니다.', sysdate);

select * from tblMemo;

-- 쇼핑몰 > 상품번호 > ABC001 > ABC002 > ABC003

select 'ABC' || seqNum.nextVal from dual;
select 'ABC' || lpad(seqNum.nextVal, 3, '0') from dual;

--------------------------------------------------------------------------------

/*

    시퀀스 객체 생성하기
    - create sequence 시퀀스명;

    시퀀스 객체 생성하기
    - create sequence 시퀀스명 
                    increment by n  --증감치
                    start with n    --시작값
                    maxvalue n      --최댓값
                    minvalue n      --최솟값
                    cycle           --순환 유무
                    cache n;        --임시 저장
                    

*/

drop sequence seqTest;

create sequence seqTest
                --increment by -1
                --start with 10
                --maxvalue 10
                --minvalue 1
                --cycle
                cache 20
                ;
                
select seqTest.nextVal from dual; -- 5 > 6 > 10 > 11(X) > 26












