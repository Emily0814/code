/*

    ex07_order.sql
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];
    
    
    역할
    SELECT 컬럼리스트  -- 원하는 컬럼을 지정 > 지정된 컬럼만 가져와라.
    FROM 테이블;       -- 데이터 소스, 어떤 테이블로부터 데이터를 가져와라.
    WHERE 검색조건;    -- 조건 지정. 원하는 레코드만 걸러낸다.
    ORDER BY  정렬기준;-- 결과셋의 레코드 순서를 정한다.
         
    순서
    3. SELECT   > 대부분 환경에서 꼴등!
    1. FROM     > 무조건 FROM이 1등!
    2. WHERE 
    4. ORDER BY > 절대적 꼴등!
    
    ORDER BY절
    - 정렬
    - ORDER BY 컬럼명 -- ascending
    - ORDER BY 컬럼명 ASC -- ascending
    - ORDER BY 컬럼명 DESC -- descending
    
*/


select * from tblInsa;



select * from tblInsa order by basicpay;
select * from tblInsa order by sudang desc;


-- 자료형 확인
select * from tblInsa order by basicpay;    --숫자형
select * from tblInsa order by name;        --문자형
select * from tblInsa order by ibsadate;    --날짜시간형

-- 다중 정렬
select * from tblInsa order by buseo asc;   --1차정렬
select * from tblInsa order by buseo asc, jikwi asc;    --2차정렬
select * from tblInsa order by buseo asc, jikwi asc, basicpay desc; --3차정렬

-- Java > 첨자가 0부터 시작한다.(컴파일 언어)
-- SQL > 첨자가 1부터 시작한다.(스크립트 언어)
select 
    num, name, buseo, jikwi --2.
from tblInsa                --1.
    order by 3 asc;         --3. 컬럼의 순서 > 정렬 기준 > 비권장 ^관리하기 힘듦


-- 가공된 값을 정렬 기준으로 사용
select * from tblInsa order by basicpay desc;
select * from tblInsa order by basicpay + sudang desc;


-- 남자 > 여자순으로 정렬
select 
    name, ssn,
    case
        when ssn like '%-1%' then '남자'
        when ssn like '%-2%' then '여자'
    end as gender                       --2.
from tblInsa                            --1.
    order by gender asc;                --3.

-- 직위순으로 정렬: 부장(1) > 과장(2) > 대리(3) > 사원(4)순으로
select
    name, jikwi

from tblInsa
    order by case
        when jikwi = '부장' then 1
        when jikwi = '과장' then 2
        when jikwi = '대리' then 3
        when jikwi = '사원' then 4
    end asc;












