/*

    ex12_datetime_function.sql
    
    sysdate()
    - 현재 시스템의 시각을 반환
    - date sysdate
    - Calendar.getInstance()
    



*/
select sysdate from dual;

/*

    날짜 연산
    1. 시각 - 시각 = 시간: tick - tick
    2. 시각 + 시간 = 시각: now.add(+)
    3. 시각 - 시간 = 시각: now.add(-)

*/

-- 1. 시각 - 시각 = 시간(일)
-- 현재 - 입사일
select
    name,
    to_char(ibsadate, 'yyyy-mm-dd') as 입사일,
    round(sysdate - ibsadate) as 근무일수, --5766.632789351851851851851851851851851852
    round((sysdate - ibsadate) * 24) as 근무시수,
    round((sysdate - ibsadate) * 24*60) as 근무분수,
    round((sysdate - ibsadate) * 24*60*60) as 근무초수,
    round((sysdate - ibsadate) / 30.4) as 근무개월수, --부정확
    round((sysdate - ibsadate) / 365) as 근무년수 --부정확
from tblInsa;

-- 맘먹고 실행하기까지 얼마나 걸렸는지?
select 
    title,
    adddate,
    completedate,
    round((completedate - adddate) * 24) as "실행하기까지걸린시간"
from tblToDo
    order by "실행하기까지걸린시간";
-- ORA-00972: identifier is too long
-- 오라클은 식별자(테이블명, 컬럼명, 별칭 등..)의 길이는 최대 30바이트까지 

/*
   2. 시각 + 시간(일) = 시각: now.add(+)
   3. 시각 - 시간(일) = 시각: now.add(-)

*/

select
    sysdate,
    sysdate + 1,
    sysdate - 3,
    sysdate + 100 as "100일 뒤",
    sysdate + 30 as "1달 뒤", --부정확
    sysdate + 365 as "1년 뒤",--부정확
    to_char(sysdate + (3 / 24), 'hh24:mi:ss') as "3시간 뒤",
    to_char(sysdate + (30 / 60 / 24), 'hh24:mi:ss') as "30분 뒤"
from dual;


/*

    일/시/분/초 > 연산자(+,-) 사용
    월/년 > 함수 사용
    
    months_between()
    - 시각 - 시각 = 시간(월)
    - number months_between(date, date)

*/
select
    name,
    round(sysdate - ibsadate) as 근무일수,
    round((sysdate - ibsadate) / 30.4)  as 근무월수,
    round(months_between(sysdate, ibsadate)) as 근무월수, --^이 식으로 구해야 함
    round(months_between(sysdate, ibsadate) / 12) as 근무년수
from tblInsa;


/*
    add_months()
    - 시각 + 시각(월) = 시각
    - 시각 - 시각(월) = 시각
    - date_add_months(date, 월)

*/

select
    sysdate,
    sysdate + 31,
    add_months(sysdate, 1),
    add_months(sysdate, 5),
    add_months(sysdate, 1*12),
    add_months(sysdate, -3*12)
from dual;












