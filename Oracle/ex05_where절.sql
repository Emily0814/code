/*
    
    ex05_where절.sql
    
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];
    
    WHERE절
    - 레코드(행)을 검색한다.
    - 조건절
    - 조건을 제시한 후 그 조건을 만족하는 레코드(행)을 가져온다.
    - 자바 스트림: list.stream().fiter(조건).forEach();
    - 조건을 만족하는 레코드를 결과셋을 만든다.
    - where절의 각 레코드에게 대해서 검사를 진행한다.(*****)
    
    역할
    SELECT 컬럼리스트  -- 원하는 컬럼을 지정 > 지정된 컬럼만 가져와라.
    FROM 테이블;       -- 데이터 소스, 어떤 테이블로부터 데이터를 가져와라.
    WHERE 검색조건;    -- 조건 지정. 원하는 레코드만 걸러낸다.
            
    순서
    3. SELECT   > 대부분 환경에서 꼴등!
    1. FROM     > 무조건 FROM이 1등!
    2. WHERE 
    
*/

-- 컬럼 5개, 레코드 14개
-- 레코드 1개 == 국가 1개
select *                --3.
from tblCountry         --1.
where continent = 'AS'; --2.

-- WHERE절 > 레코드 필터 역할(가로)
-- SELECT절 > 컬럼 필터 역할(세로)
select name, capital from tblCountry where continent = 'AS';


select * from tblCountry
    where name = '대한민국';

select * from tblCountry
    where capital = '서울';

select * from tblCountry
    where population = 10000;

select * from tblCountry
    where area >= 100 and area < 500;

select * from tblCountry
    where continent = 'AS' or continent = 'EU';

select * from tblMen;

select * from tblMen
    where (age - 1) >= 25;

select * from tblComedian
    where (height + weight) > 300;

-- tblComedian
-- 1. 몸무게가 60kg이상이고, 키가 170cm 미만인 사람을 가져오시오.

-- 2. 몸무게가 70kg이하인 여자만 가져오시오.

-- tblInsa
-- 3. 부서가 '개발부'이고, 급여가 150만원 이상 받는 직원을 가져오시오.

-- 4. 급여 + 수당을 합친 금액이 200만원 이상 받는 직원을 가져오시오.

select * from tblComedian
    where weight >= 60 and height < 170;
    
select * from tblComedian
    where weight <= 70 and gender = 'f';
    
select * from tblInsa
    where buseo = '개발부' and basicpay >= 1500000;

select * from tblInsa
    where (basicpay + sudang) >= 2000000;


/*

    between
    - where절에서 사용 > 조건으로 사용
    - 컬럼명 between 최솟값 and 최댓값
    - 범위 조건
    - 가독성 향상
    - 최솟값, 최댓값 모두 포함
    
*/

select * from tblInsa
    where basicpay >= 1000000 and basicpay <= 1200000;

select * from tblInsa
    where basicpay <= 1200000 and basicpay >= 1000000;

select * from tblInsa
    where 1200000 >= basicpay and basicpay >= 1000000;
    
select * from tblInsa
    where basicpay between 1000000 and 1200000;

select * from tblInsa
    where basicpay between 1020000 and 1050000;

desc tblInsa;

-- 비교 연산(자료형)
-- 1. 숫자형
select * from tblInsa where basicpay >= 1000000 and basicpay <= 1200000;
select * from tblInsa where basicpay between 1000000 and 1200000;

--2. 문자형
select * from tblInsa where name >= '이순신'; -- name.compareTo('이순신')
select * from employees where first_name >= 'J' and first_name <= 'L'; 
select * from employees where first_name between 'J' and 'L';

--3. 날짜시간형
select * from tblInsa where ibsadate > '2010-01-01';   --날짜시간 리터럴
select * from tblInsa where ibsadate >= '2010-01-01'
                            and ibsadate <= '2010-12-31';

select * from tblInsa where ibsadate between '2010-01-01' and '2010-12-31';

/*

    in
    - where절에서 사용 > 조건으로 사용
    - 열거형 조건
    - 컬럼명 in (값, 값, 값)
    - 가독성 향상



*/

-- tblInsa. 개발부 + 총무부 + 홍보부
SELECT * from tblInsa
    where buseo = '개발부' or buseo = '총무부' or buseo = '홍보부';
    
SELECT * from tblInsa
    where buseo in ('개발부', '총무부', '홍보부');

-- 서울 or 경기 + 과장 or 부장 + 급여(250~300)
select * from tblInsa
    where city  in ('서울', '경기')
                and jikwi in ('과장', '부장')
                and basicpay between 2500000 and 3000000;

/*
    
    like
    - where절에서 사용 > 조건으로 사용
    - 패턴 비교
    - 컬럼명 like '패턴 문자열'
    - 정규표현식 초간단버전
    
    패턴 문자열의 구성요소
    1. _: 임의의 문자 1개(.)
    2. %: 임의의 문자 n개, 0~무한대(.*)
    
    
    

*/

-- 김OO
select name from tblInsa;
select name from tblInsa where name like '김__'; --김훈, 김강아지 > 찾을 수 없음
select name from tblInsa where name like '_길_';
select name from tblInsa where name like '__수';

select * from employees where first_name like 'S_____';

select name from tblInsa where name like '김%'; --김, 김훈, 김강아지
select name from tblInsa where name like '%길%';--길성준
select name from tblInsa where name like '%수';

select * from employees where first_name like 'S%';

select * from tblInsa where ssn like '______-2______';
select * from tblInsa where ssn like '%-2%';




select * from 게시판 where subject = '자바';

select * from 게시판 where subject = '%자바%'; --제목에 '자바'가 포함된 글



/*

    RDBMS에서의 null
    - 컬럼값(셀)이 비어있는 상태
    - null 상수 제공
    - ex) String txt = null;
    - ***** 대부분의 언어는 null을 연산의 대상이 될 수 없다.
    - ex) 10 + null = ?
    
    null 조건
    - where절에서 사용
    - 컬럼명 is null
    - 컬럼명 is not null
    

*/

-- 인구수가 미기재된 나라?
select * from tblcountry;

select * from tblcountry where population = null;
select * from tblcountry where population is null;

-- 인구수가 기재된 나라?
select * from tblcountry where population <> null;
select * from tblcountry where not population is null;
select * from tblcountry where population is not null;
















