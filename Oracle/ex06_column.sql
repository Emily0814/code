/*

    ex06_column.sql
    
    컬럼 리스트에서 할 수 있는 행동
    - SELECT 컬럼리스트


*/

-- 컬럼명
select name from tblCountry;

-- 연산 > 결과셋의 컬럼명이 유효한지 확인?? > 별칭 사용!!
select area + 100, name || '나라' from tblCountry;

-- 상수
select name, population, 100 from tblCountry;
select 100 from tblCountry;

-- 함수(메서드) == 데이터
select length(name) from tblCountry;



/*

    distinct
    - Java Stream: list.stream().distinct().forEach()
    - 컬럼 리스트에서 사용
    - 중복값 제거
    - 컬럼의 중복값 제거(X) > 레코드 전체의 중복값 제거(O)
    
    
    

*/

-- tblCountry에 어떤 종류의 대륙이 있습니까?
select Continent from tblCountry;
select distinct Continent from tblCountry;

-- tblInsa. 이 회사는 어떤 부서가 있어요?
select buseo from tblInsa;
select distinct buseo from tblInsa;
select distinct jikwi from tblInsa;

select name from tblInsa;
select distinct name from tblInsa; --동명이인 없음.

--어떤 부서? + 그 부서에 속해 있는 직원명?
select distinct buseo, name from tblInsa;



/*

    case
    - 대부분의 절에서 사용
    - switch case문 역할
    - 조건을 만족하면 then을 반환
    - 조건을 불만족하면 null을 반환

*/


select 
    last || first as name,
    gender,
    case
        -- when 조건 then 값
        when gender = 'm' then '남자'
        when gender = 'f' then '여자'
    end as kgender
from tblComedian;

select
    name, continent,
    case
        when continent = 'AS' then '아시아'
        when continent = 'EU' then '유럽'
        when continent = 'AF' then '아프리카'
        --else '기타'
        --else continent
        --else 100 > ORA-00932: inconsistent datatypes: expected CHAR got NUMBER
        else name 
    end as continentName
from tblCountry;



select 
    last || first as name,
    weight,
    case
        when weight > 90 then '과체중'
        when weight > 50 then '보통체중'
        else '저체중'
    end as state,
    case
        when weight >= 50 and weight <= 90 then '보통체중'
        else '주의체중'
    end as state2,
    case
        when weight between 50 and 90 then '보통체중'
        else '주의체중'
    end as state3
from tblComedian;


-- 사원, 대리 > 현장직
-- 과장, 부장 > 관리직
select
    name, jikwi,
    case
        when jikwi = '과장' or jikwi = '부장' then '관리직'
        --else '현장직'
    end,
    case
        when jikwi in( '과장', '부장' ) then '관리직'
        else '현장직'
    end,
    case
        when jikwi like '%장' then '관리직'
        else '현장직'
    end
from tblInsa;

select 
    title,
    case
        when completedate is not null then '완료'
        when completedate is null then '미완료'
    end
from tblTodo;










