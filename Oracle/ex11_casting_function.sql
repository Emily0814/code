/*

    ex11_casting_function.sql
    
    (자료형)데이터
    
    형변환 함수
    1. varchar2 to_char(숫자형): 숫자 > 문자열 (X)
    2. varchar2 to_char(날짜형): 날짜 > 문자열 (OOO)
    3. number to_number(문자형): 문자열 > 숫자 (X)
    4. date to_date(문자형)    : 문자열 > 날짜 (OO)

    
    1. varchar2 to_char(숫자형 [, 형식문자열]): 숫자 > 문자열
    
    형식문자열 구성요소
    a. 9: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리는 공백으로 치환 > %5d
    b. 0: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리는 0으로 치환 > %05d
    c. $: 통화 기호
    d. L: 통화 기호(지역)
    e. .: 소숫점
    f. ,: 천단위 표기
    
    
*/

select
    100,
    to_char(100),
    '@' || to_char(100, '99999') || '@',
    '@' || to_char(100, '00000') || '@',
    to_char(100, '$999'),
    to_char(100, 'L999'),
    '$' || ltrim(to_char(100, '999'))
from dual;

select
    3.14,
    to_char(3.14, '9.99'),
    to_char(3.14, '9.9'),
    to_char(3.15, '9.9'), --반올림됨
    1000000,
    to_char(1000000, '9,999,999'),
    to_char(1000000, '9,99,9999')
from dual;


/*
    
    ************** Calendar.get(Calendar.YEAR) 역할
    
    2. varchar2 to_char(날짜형, 형식 문자열): 날짜 > 문자열
    
    형식 문자열 구성요소
    a. yyyy
    b. yy
    c. month
    d. mon
    e. mm
    f. day
    g. dy
    h. ddd
    i. dd
    j. d
    k. hh
    l. hh24
    m. mi
    n. ss
    o. am(pm)
    
    
    

*/

select sysdate from dual; -- sysdate 함수(현재 시각) > 24/07/25 ^yyyy-mm-dd hh24:mi:ss

select to_char(sysdate, 'yyyy') from dual;  --2024 > 년(4자리)
select to_char(sysdate, 'yy') from dual;    --24 > 년(2자리)
select to_char(sysdate, 'month') from dual; --7월 > 월(풀네임)
select to_char(sysdate, 'mon') from dual;   --7월 > 월(약어)
select to_char(sysdate, 'mm') from dual;    --07 > 월
select to_char(sysdate, 'day') from dual;   --목요일 > 요일(풀네임)
select to_char(sysdate, 'dy') from dual;    --목     > 요일(약어)
select to_char(sysdate, 'ddd') from dual;   --207   > 일 (올해의 며칠)
select to_char(sysdate, 'dd') from dual;    --25    > 일(이번달의 며칠)
select to_char(sysdate, 'd') from dual;     --5     > 일(이번주의 며칠, 요일)
select to_char(sysdate, 'hh') from dual;    --12    > 시(12H)
select to_char(sysdate, 'hh24') from dual;  --12    > 시(24H)
select to_char(sysdate, 'mi') from dual;    --35    > 분
select to_char(sysdate, 'ss') from dual;    --35    > 초
select to_char(sysdate, 'am') from dual;    --오후  > 오전/오후
select to_char(sysdate, 'pm') from dual;    --오후  > 오전/오후


select
    sysdate, --24/07/25
    to_char(sysdate, 'yyyy-mm-dd'), --2024-07-25
    to_char(sysdate, 'hh24:mi:ss'),  --12:38:41
    to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'), --2024-07-25 12:39:11
    to_char(sysdate, 'day am hh:mi:ss') --목요일 오후 12:39:54
from dual;

-- 휴일 입사 or 평일 입사
select
    name, 
    to_char(ibsadate, 'yyyy-mm-dd day') as ibsadate,
    case
        --when to_char(ibsadate, 'day') = '일요일' then '휴일 입사'
        when to_char(ibsadate, 'd') in (1, 7) then '휴일 입사'
        else '평일 입사'
    end
from tblInsa;

-- tblInsa. 요일별 입사한 인원 수? count(), case end, decode(), to_char()
select
    *
from tblInsa;

select
    count(
    case
        --when to_char(ibsadate, 'day') = '일요일' then 1
       when to_char(ibsadate, 'd') = '1' then 1
    end) as 일,
    count(decode(to_char(ibsadate, 'd'), '2', 1)) as 월,
    count(decode(to_char(ibsadate, 'd'), '3', 1)) as 화,
    count(decode(to_char(ibsadate, 'd'), '4', 1)) as 수,
    count(decode(to_char(ibsadate, 'd'), '5', 1)) as 목,
    count(decode(to_char(ibsadate, 'd'), '6', 1)) as 금,
    count(decode(to_char(ibsadate, 'd'), '7', 1)) as 토
from tblInsa;



/*

    3. number to_number(문자형): 문자열 > 숫자
    

*/

select
    to_number('100'),
    to_number('100') * 2,
    '100' * 2 --암시적 형변환
from dual;


/*

    4. date to_date(문자형): 문자열 > 날짜


*/

select
    *
from tblInsa
    where ibsadate >= '2010-01-01'; -- date >= varchar2 암시적 형변환

--2010-01-01 > 2010/01/01
select
    '2010-01-01', -- 자료형: date? varchar2? > 문자열(O)
    to_date('2010-01-01'),
    to_char(to_date('2010-01-01'), 'day'),
    --to_char('2010-01-01', 'day')
    to_date('2010-01-01', 'yyyy-mm-dd'),
    to_date('2010/01/01', 'yyyy/mm/dd'),
    to_date('20100101', 'yyyymmdd'),
    to_date('2010-01-01 12:30:30', 'yyyy-mm-dd hh24:mi:ss') --ORA-01861: literal does not match format string
from dual;

--24/07/25
select
    sysdate
from dual;






















