-- decode


-- 1. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
    select * from tblInsa;    
    
    select 
        count(*),
        case
            when jikwi = '부장' then 1
            when jikwi = '과장' then 1
            when jikwi = '대리' then 1
        end
    from tblInsa
        group by jikwi = '부장';

-- 2. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?


-- 3. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?


-- 4. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?

