/*

    ex03_select.sql
    
    SQL
    - Query
    - 시퀄(SEQUEL)
    
    SELECT문
    - DML, DQL
    - 테이블로부터 데이터를 읽어온다.
    - C[R]UD
    - DB(SQL)는 select로 시작해서 select로 끝난다.
    
    *** 각각의 절은 역할과 실행 순서가 있다.
    
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];
    
    역할
    SELECT column_list -- 원하는 컬럼을 지정 > 지정된 컬럼만 가져와라.
    FROM table_name; -- 데이터 소스, 어떤 테이블로부터 데이터를 가져와라.
    
    순서
    2. SELECT
    1. FROM

*/

select * --모든 컬럼
from tblType;


-- tabs(tables) : 시스템 테이블
-- > 현재 계정이 소유한 테이블 목록
select * from tabs;

select *     --모든 컬럼
from employees;

-- *** select문 결과는 항상 테이블이다. > 결과 테이블(Result Table), 결과셋(ResultSet)
select *
from tblCountry; --원본

select name, capital, population, continent, area
from tblCOuntry;

select name                 --단일 컬럼
from tblCountry;

select name, capital    --다중 컬럼
from tblCountry;

select capital, name        --다중 컬럼
from tblCountry;

select name, length(name)   
from tblCountry;

--ORA-00942: table or view does not exist, 테이블이 존재하지 않는 에러
select name, length(name)
from tblCountr;

--RA-00904: "NAM": invalid identifier
select name, length(name)
from tblCountry;













