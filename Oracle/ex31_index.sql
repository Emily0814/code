/*

    ex31_index.sql
    
    인덱스, Index
    - 색인
    - 검색을 빠른 속도로 하기 위해 사용되는 도구
    
    데이터베이스
    - 실제 데이터베이스(저장 장치) > 레코드 순서가 사용자가 insert한 순서(X)
        > DBMS가 자체적으로 순서에 맞게 저장
    - 어떤 데이터를 검색(select) > 처음 ~ 끝까지 차례대로 검색 > table full scan
    - 특정 컬럼 선택 > 별도의 테이블 복사 > 미리 정렬 >> 인덱스
    
    인덱스 장단점
    - 처리 속도를 향상시킨다.(select)
    - DB 성능을 저하시킬 수 있다. > 주의!!
    
    
    자동으로 인덱스가 걸리는 컬럼
    1. Promary key
    2. Unique
    
    *** where seq = 1  >>>>>>  where buseo = '영업부'
    
    
*/

select * from tblAddressBook;

select count(*) from tblAddressBook;

create table tblIndex
as
select * from tblAddressBook;

insert into tblIndex select * from tblIndex;

select count(*) from tblIndex; --8,192,000

set timing on; -- 검색할 코드?에 F5하면 경과 시간 출력

-- 인덱스없이 검색
select count(*) from tblIndex where name = '최민기'; --F5

-- 인덱스 생성
create index idxName on tblIndex(name);

-- 인덱스 삭제
drop index idxName;

select count(*) from tblIndex where name = '최민기';



/*

    인덱스 종류
    1. 고유 인덱스
        - PK, UQ > 자동으로 생성되는 인덱스
        - 색인의 값이 중복이 불가능하다.
    
    2. 비고유 인덱스
        - 일반 컬럼 > 사용자가 생성하는 인덱스
        - 색인의 값이 중복이 가능하다.
        
    3. 단일 인덱스
        - 컬럼 1개를 대상으로 만드는 인덱스
        
    
    4. 복합 인덱스
        - 컬럼 N개를 대상으로 만드는 인덱스ㅈㅅ ㄷㅇ
    
    5. 함수 기반 인덱스
        

*/
-- 경과 시간: 00:00:01.312
select count(*) from tblIndex where hometown = '서울';

create index idxHometown on tblIndex(hometown);

-- 경과 시간: 00:00:00.047
select count(*) from tblIndex where hometown = '서울';
-- 경과 시간: 00:00:05.890
select count(*) from tblIndex where hometown = '서울' and job = '학생'; -- 색인 걸지 않은 조건과 함께 실행될 때는 색인이 사용되지 않음

create index idxHometownJob on tblIndex(hometown, job);

select count(*) from tblIndex where hometown = '서울' and job = '학생';

select count(*) from tblIndex where job = '학생' and hometown = '서울';


select substr(email, instr(email, '@')) from tblIndex where rownum <= 10;

select count(*) from tblIndex
    where substr(email, instr(email, '@')) = '@naver.com';

create index idxEmail on tblIndex(email);
drop index idxEmail;
create index idxEmail on tblIndex(substr(email, instr(email, '@')));

/*

    인덱스를 사용해야 하는 상황    ex)공지사항
    1. 테이블에 데이터(레코드)가 많을 때
    2. where절에 사용되는 횟수가 많은 컬럼에 적용(***)
    3. 인덱스 손익분기점 > 검색 결과가 원본 테이블의 10~15% 이하인 경우
    4. null을 포함하는 경우 > 인덱스 null을 제외

    
    인덱스를 사용하지 말아야 하는 상황
    1. 테이블에 데이터(레코드)가 적을 때 > 풀 스캔과 차이 없음
    2. where절에 사용되는 횟수가 적은 컬럼에 ㄴ적용 > 효과 없음
    3. 인덱스 손익분기점 > 검색 결과가 원본 테이블의 15% 이상인 경우    
    4. 해당 테이블이 삽입, 수정, 삭제가 빈번할 경우(*****)
    
*/ -- 이번 프로젝트에서는 신경쓰지 말자~






