-- 📃📃📃 select절 + from절 📃📃📃

-- 1. tblCountry
-- 모든 행과 모든 컬럼을 가져오시오.
select * from tblCountry;

-- 2.tblCountry
-- 국가명과 수도명을 가져오시오.
select name, capital from tblCountry;

-- 3.tblCountry
-- 아래와 같이 가져오시오
-- [국가명]    [수도명]   [인구수]   [면적]    [대륙] <- 컬럼명(Alias)
-- 대한민국   서울        4403       101       AS     <- 데이터
select 
    name as 국가명,
    capital as 수도명,
    population as 인구수,
    area as 면적,
    continent as 대륙
from tblCountry;

-- 4.tblCountry
-- 아래와 같이 가져오시오
-- [국가정보] <- 컬럼명
-- 국가명: 대한민국, 수도명: 서울, 인구수: 4403   <- 데이터
select * from tblCountry;

select 
    name as 국가명, capital as 수도명, population as 인구수
    from tblCountry
    where name = '대한민국';

-- 5. employees
-- 아래와 같이 가져오시오.
-- [이름]       [이메일]         [연락처]     [급여]
-- Steven King  SKING@gmail.com	 515.123.4567 $24000
select * from Employees;

select
    first_name as 이름, last_name,
    email as 이메일,
    phone_number as 연락처,
    salary as 급여
from employees
where first_name = 'Steven';
