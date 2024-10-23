/*

    ex30_transaction.sql
    
    트랜잭션, Transaction
    - 데이터를 조작하는 업무(DML > insert, update, delete)의 물리적(시간적) 단위
    - 1개 이상의 명령어를 묶어 놓은 단위
    
    *** 트랜잭션 처리(rollback)이 과거로 돌아갈 수 있는 이유?
    - 트랜잭션내의 insert, update, delete 작업은 실제 데이터베이스에 적용되지 않는다.
    - 트랜잭션내의 insert, update, delete 작업은 실행 중인 메모리에만 임시 적용된다.
    
    트랜잭션 명령어
    - DCL, TCL
    1. commit       < 
    2. rollback     < 이 2개만 잘 알면됌
    3. savepoint
    
    
    

*/


create table tblTrans
as
select name, buseo, jikwi from tblInsa where city = '서울';

select * from tblTrans; -- 여기로 다시 와서 실행하지 말자~

-- 우리가 하는 행동(SQL) > 반드시 시간순서대로 기억!!!!!!!!!


-- 로그인 직후(접속) > 트랜잭션 시작~
-- 현재 트랜잭션 > 모든 명령어(X) 
--  > insert, update, delete 명령어만 트랜잭션에 포함된다.

select * from tblTrans; -- 트랜잭션 포함(X)

delete from tblTrans where name = '박문수'; --트랜잭션 포함(O)

select * from tblTrans;

rollback; -- 트랜잭션 종료 > 새로운 트랜잭션 시작

select * from tblTrans;

delete from tblTrans where name = '박문수';

select * from tblTrans;

rollback;

select * from tblTrans;

delete from tblTrans where name = '박문수';

select * from tblTrans;

commit;

--------------------------------------------------------------------------------

select * from tblTrans;

insert into tblTrans values ('강아지', '기획부', '사원');

update tblTrans set jikwi = '대리' where name = '한석봉';

delete from tblTrans where buseo = '영업부';

select * from tblTrans;

rollback;

select * from tblTrans;

/*

    트랜잭션이 언제 시작해서 ~ 언제 끝나는지?
    
    새로운 트랜잭션이 시작하는 지점
    1. 클라이언트 접속 직 후
    2. commit 실행 직 후
    3. rollback 실행 직 후
    
    현재 트랜잭션이 종료되는 시점
    1. commit > DB에 반영O
    2. rollback > DB에 반영X
    3. 클라이언트 접속 종료
        a. 정상 종료
            - 현재 트랜잭션에 반영이 안된 명령어가 남아 있으면 > 질문?
        b. 비정상 종료
            - 트랜잭션을 처리할 만한 시간적 여유가 없는 경우
            - 무조건 rollback
    4. DDL 실행(*** 주의!!)
        - create, alter, drop > 실행 > 즉시 commit 실행 !!!!
        - DDL 성격 > 구조 변경 > 데이터 영향 미침 > 여태까지의 임시 작업 > 미리 적용(commit)
        
    
        
        
*/

insert into tblTrans values ('강아지', '기획부', '사원');

select * from tblTrans;

insert into tblTrans values ('고양이', '기획부', '사원');   --결정?

select * from tblTrans;

create sequence seqAAA; -- + commit 동반

rollback;

select * from tblTrans; --고양이	기획부	사원


-- 트랜잭션 통제 방법(패턴)
-- 1. 시간 정하기
--      - 5분마다
--      - 1시간마다
--      - 하루에 1번
-- 2. 작업 단위로
-- 3. 자신의 행동 > 기록 > 적당한 주석


-- hr 접속
select * from tabs;

insert into tblTrans values ('병아리', '기획부', '사원');
delete from tblTrans; "
select * from tblTrans;

rollback;

insert into tblTrans values ('병아리', '기획부', '사원');
select * from tblTrans;

commit;

select * from tblTrans;

commit;

select * from tblTrans;

insert into tblTrans values ('호랑이', '개발부', '사원');

savepoint a;

delete from tblTrans where name = '홍길동';

savepoint b;

update tblTrans set buseo = '영업부' where name = '호랑이';

select * from tblTrans;

rollback to b;

select * from tblTrans;

rollback;

select * from tblTrans;
























