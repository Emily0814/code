/*

    ex17_delete.sql
    
    delete 문
    - DML
    - 원하는 행을 삭제하는 명령어
    
    delete [from] 테이블명 [where 절];

*/

commit;
rollback;

select * from tblInsa;

delete from tblInsa where name = '홍길동';
delete from tblInsa where num = 1001;

select count(*) from tblInsa;

-- tblInsa. 평균 급여보다 많이 받는 직원?
select * from tblInsa where basicpay >= (select avg(basicpay) from tblInsa);

-- tblMen, tblWomen
select * from tblMen;
select * from tblWomen;

-- 남자(166cm)의 여자친구 키?
select * from tblWomen where couple = (select name from tblMen where height = 166);

/*

    서브 쿼리 삽입 위치
    1. 조건절 > 비교값으로 사용하기 위해
        a. 반환값이 1행 1열 > 단일값 반환 > 상수 취급 > 값 1개                   ^연습 많이 하자~
        b. 반환값이 N형 1열 > 다중값 반환 > 열거형 비교 > in 사용
        c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼:N컬럼
        d. 반환값이 N행 N열 > 다중값 반환 > b + c > in + 그룹 비교
    

*/

-- 급여가 260만원 이상 받는 직원 > 근무하는 부서의 직원들 명단을 가져오시오.
-- ORA-01427: single-row subquery returns more than one row
select * from tblInsa;
select * from tblInsa 
    where buseo = (select buseo from tblInsa where basicpay >= 2600000);

select * from tblInsa 
    where buseo = '기획부' or buseo = '총무부';

select * from tblInsa 
    where buseo in ('기획부', '총무부');

select * from tblInsa 
    where buseo in (select buseo from tblInsa where basicpay >= 2600000);

-- '홍길동'과 같은 지역(city), 같은 부서(buseo)인 직원 명단 >
select city, buseo from tblInsa where name = '홍길동';

select * from tblInsa where city = '서울' and buseo = '기획부';

select * from tblInsa 
    where city = (select city from tblInsa where name = '홍길동')  
        and buseo = (select buseo from tblInsa where name = '홍길동');

select * from tblInsa 
    where (city, buseo) = (select city, buseo from tblInsa where name = '홍길동');


-- 급여가 200만원 이상 받는 직원과 같은 지역, 같은 부서의 직원 명단
select * from tblInsa
    where (buseo, city) in (select buseo, city from tblInsa 
                                                    where basicpay >= 2600000);



















