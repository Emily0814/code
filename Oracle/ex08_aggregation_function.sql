/*

    ex08_aggregation_function.sql
    
    
    메서드
    - 함수, 프로시저 등..
    - 클래스안에서 선언한 함수
    
    함수, Function
    1. 내장 함수(Built-in Function)
    2. 사용자 정의 함수(User Function) > 표준SQL(X), PL/SQL(O)
    
    집계 함수, Aggregation Function
    - Java Stream > count(), sum(), max(), min(), average()
    - 아주 쉬움 > 나중에 하는 수업과 결합 > 꽤 어려움;;
    
    1. count()
    2. sum()
    3. avg()
    4. max()
    5. min()
    
    
    
    1.count()
    - 결과 테이블의 레코드 수를 반환한다.
    - number count(컬럼명)
    - null값은 제외한다.(*****)
   
    2. sum()
    
    
    3. avg()
    
    
    4. max()
    
    
    5. min()
   
    
    
*/

select * from tblCountry;
select count(*) from tblCountry;

select name from tblCountry;
select count(name) from tblCountry;

select population from tblCountry;
select count(population) from tblCountry;

-- 연락처가 있는 직원수?
select tel from tblInsa;
select count(tel) from tblInsa;
select count(*) - count(tel) from tblInsa;

select count(*) from tblInsa where tel is not null;
select count(*) from tblInsa where tel is null;

-- tblInsa. 어떤 부서들이 있나? > 부서 총 몇개?
select distinct buseo from tblInsa;
select count(distinct buseo) from tblInsa; --무슨 수를 쓰더라도 테이블을 만들면 셀 수 있음


-- tblComedian. 남자수? 여자수?
select * from tblComedian;

select count(*) from tblComedian where gender = 'm';
select count(*) from tblComedian where gender = 'f';

-- tblComedian. 남자수? 여자수? > 1개의 테이블 > 자주 사용되는 패턴
select
    count(case
        when gender = 'm' then 1
    end),
    count(case
        when gender = 'f' then 1
    end)
from tblComedian;

--tblInsa. 기획부 몇명? 총무부 몇명? 개발부 몇명? > 1개의 테이블
select * from tblInsa where buseo = '기획부';
select * from tblInsa where buseo = '총무부';
select * from tblInsa where buseo = '개발부';

select
    count(case
        when buseo = '기획부' then 1
    end) as 기획부,
    count(case
        when buseo = '총무부' then 1
    end) as 총무부,
    count(case
        when buseo = '개발부' then 1
    end) as 개발부,
    count(case
        when buseo not in ('개발부', '총무부', '개발부') then 1
    end) as 나머지,
    count(*) as 총직원수
from tblInsa;



select
    name as "employee name",
    buseo as "select" --^왠만하면 ""쓰지 말자
from tblInsa;


select
    name,
    basicpay * 12 as "연봉"
from tblInsa
    order by 연봉 desc; --위에 연봉과 이 줄의 연봉이 다른 것이나, 동일한 식별자로 인식, 붙이지 말자!
    
    
    
    /*
    
    2. sum()
    - 해당 컬럼값의 합을 구한다.
    - number sum(컬럼명)
    
    
    */
    
    select * from tblCountry;
    
    select count(area) from tblCountry; --14    > 레코드 개수
    select count(name) from tblCountry; --14
    --select count(ibsadate) from tblCountry; ORA-00904: "IBSADATE": invalid identifier
    
    select sum(area) from tblCountry;   --3459  > 수치의 합
    select sum(name) from tblCountry;   --ORA-01722: invalid number
    select sum(ibsadate) from tblInsa;  --ORA-00932: inconsistent datatypes: expected NUMBER got DATE
    --select sum(*) from tblCountry;
    
    SELECT
        sum(basicpay) as "지출 급여 합",
        sum(sudang) as "지출 수당 합",
        sum(basicpay) + sum(sudang) as "총 지출",
        sum(basicpay + sudang) as "총 지출"
    from tblInsa;
    
    
/*

    3. avg
    - 해당 컬럼값의 평균값을 구한다.
    - number avg(컬럼명)
    - 숫자형에만 적용 가능
    
    

*/ 
    
    
-- tblInsa. 평균 급여
select sum(basicpay) / 60 from tblInsa; --1556526
select sum(basicpay) / count(*) from tblInsa; --1556526 > 위에 보다 좀 더 안정적인 코드
select avg(basicpay) from tblInsa;    

-- tblCountry. 14개국의 평균 인구수?
select sum(population) / 14 from tblCountry; --202652 > 14475
select sum(population) / count(*) from tblCountry;  --14475
select avg(population) from tblCountry;    --15588


select count(*) from tblCountry;  --14
select count(population) from tblCountry;   --13(케냐)
select sum(population) / count(population) from tblCountry; --15588

-- 회사 > 성과급 지급 > 출처 > 1팀 공로~
-- 1. 균등 지급 > 총성과급 / 모든직원수 = sum() / count(*)
-- 2. 차등 지급 > 총성과급 / 1팀직원수 = sum

/*
    
    4. max()
    -최댓값 반환
    -object max(컬럼명)
    
    5. min()
    -최솟값 반환
    - object min(컬럼명)
    
    - 컬럼명 + 반환값 > 숫자형, 문자형, 날짜형

*/

select max(basicpay), min(basicpay) from tblInsa;   --숫자형
select max(name), min(name) from tblInsa;   --문자형
select max(ibsadate), min(ibsadate) from tblInsa;   --날짜형


select
    count(*) as 직원수,
    sum(basicpay) as 총급여합,
    avg(basicpay) as 평균급여,
    max(basicpay) as 최고급여,
    min(basicpay) as 최저급여
from tblInsa;

    
    
-- 집계 함수 사용 시 주의점!! + 집계 함수의 특성(잘 이해!!!!)

-- ORA-00937: not a single-group group function
-- 컬럼 리스트(SELECT절)에서는 집계 함수와 일반컬럼을 동시에 사용할 수 있다.

-- 요구사항] 직원들 이름과 총직원수를 가져오시오.
select name, count(*) from tblInsa; --^일반 컬럼과 직계 함수를 같이 사용하지 못 함
select name from tblInsa;
select count(*) from tblInsa;

--2. ORA-00934: group function is not allowed here
-- where절에는 집계 함수를 사용할 수 없다.
-- where절 > 개인(레코드)에 대한 조건절 > 집합 값을 사용 불가능
-- 서브쿼리로 해결

-- 요구사항] 평균 급여보다 더 많이 받는 직원들?
select avg(basicpay) from tblInsa;  --1556526

select * from tblInsa where basicpay >= 1556526;  --27명
select * from tblInsa where basicpay >= avg(basicpay);  --나중에 사용하는 방법 알려줌




