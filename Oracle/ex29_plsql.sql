/*

    ex29_plsql.sql
    
    PL/SQL
    - Procedural Language for SQL
    - Procedural Language extension to SQL
    - 표준 SQL + 절차 지향 언어의 기능을 추가(변수, 제어 흐름, 객체 정의 등)
    
    
    프로시저, Procedure
    - 메서드, 함수 등..
    - 순서가 있는 명령어들의 집합
    - 모든 PL/SQL 구문은 프로시저내에서만 작성/동작이 가능하다.
    - 표준 SQL 영역 <-> 프로시저 영역
    
    1. 익명 프로시저
        - 1회용 코드 작성
        
    2. 저장(실명) 프로시저
        - 저장
        - 재사용
        - 데이터베이스 객체(create/drop)
        
    PL/SQL 프로시저 구조
    
    1. 4개의 블럭(파트)으로 구성
        - DECLARE
        - BEGIN
        - EXCEPTION
        - END
    
    2. DECLARE
        - 선언부
        - 프로시저내에서 사용할 변수, 객체 등을 선언하는 영역
        - 생략 가능
    
    3. BEGIN({) ~ END(})
        - 구현부
        - 구현된 코드를 가지는 영역(메서드의 body 영역)
        - 생략 불가능
        - 구현된 코드? > PL/SQL(연산, 제어 등) + 표준 SQL(DDL,DML)
        
    4. EXCEPTION
        - 예외 처리부
        - 3번 > 자바의 try절 역할
        - 자바의 catch절 역할
        - 평소에 실행(X) > 에러가 발생했을 때 실행(O)
        - 생략 가능
        
    구문
    
    [DECLARE 
        변수 선언;
        객체 선언;]
    BEGIN
        업무 코드(변수 선언);
        업무 코드(제어문);
        업무 코드(SQL);
    [EXCEPTION
        예외처리 코드;]
    END;
    
    
    
    자바 > SQL > PL/SQL
    
    PL/SQL 자료형
    - 표준 SQL과 동일
    
    PL/SQL 연산자
    - 표준 SQL과 동일
    
    변수 선언하기
    - 변수명 자료형(길이) [not null] [default 값];
    
    
    
    
    

*/

-- 여태 수업했던 이 영역 > 스크립트 파일 > 표준 SQL 영역

-- dbms_output.put_line(); 함수는 평상 시에는 결과가 눈에 안보임
set serveroutput on;
set serverout on;
set serveroutput off;

-- 익명 프로시저

begin
    dbms_output.put_line('Hello World~');
end;
/

declare
    num number;
    name varchar2(30);
    today date;
begin
    num := 10;
    dbms_output.put_line(num);
    
    name := '홍길동';
    dbms_output.put_line(name);
    
    today := sysdate;
    today := to_date('2024-08-02', 'yyyy-mm-dd');
    dbms_output.put_line(today);
    
end;
/

declare
    num1 number;
    num2 number;
    num3 number := 30;
    num4 number default 40;
    num5 number not null := 50; -- 선언과 동시에 초기화(not null)
begin
    
    dbms_output.put_line( '@' || num1 || '@'); --null 상태
    
    num2 := 10;
    dbms_output.put_line(num2);
    
    dbms_output.put_line(num3);
    
    num4 := 400;
    num4 := null;
    dbms_output.put_line(num4);
    
    -- num5 := null;
    dbms_output.put_line(num5);
    
end;
/

/*


    변수 > 어떤 용도로 사용?
    - 일반적인 값을 저장하는 용도 > 비중 낮음
    - select 결과를 담는 용도 > 비중 높음
    
    select 결과 > (대입) > PL/SQL 변수
    > select into절(PL/SQL 문법)
    
    







*/

declare
    vbuseo varchar2(15);
begin
    -- buseo := select buseo buseo from tblInsa where name = '홍길동';
    select buseo into vbuseo from tblInsa where name = '홍길동';
    dbms_output.put_line(vbuseo); -- buseo 컬럼명
    
    insert into tblTodo
        values ((select max(seq) + 1 from tblTodo)
                    , vbuseo || '에 택배보내기', sysdate, null);
    
end;
/

select * from tblTodo;

-- tblInsa
-- 성과급을 받는 직원
create table tblBonus (
    name varchar2(15)
);

-- 1. 개발부 + 부장 > select > name?
-- 2 tblBonus > name > insert

declare
    vname varchar2(15);
begin
    select name into vname from tblInsa
        where buseo = '개발부' and jikwi = '부장'; --1.
    insert into tblBonus (name) values (vname); --2.
    --dbms_output.put_line(vname);
end;
/

insert into tblBonus (name) values ((select name from tblInsa
        where buseo = '개발부' and jikwi = '부장'));


select * from tblBonus;


declare
    vname varchar2(15);
    vbuseo varchar2(15);
    vjikwi varchar2(15);
    vbasicpay number;
begin
    
    -- select into 절
    -- into 사용 시
    -- 1. 컬럼의 개수와 변수의 개수 일치
    -- 2. 컬럼의 순서와 변수의 순서 일치
    -- 3. 컬럼과 변수의 자료형 일치
    
    select 
        name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay
    from tblInsa where num = 1001;
    
    dbms_output.put_line(vname);    
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
    
end;
/


/*

    타입 참조
    
    %type
    - 컬럼 참조
    - 사용하는 테이블의 특정 컬럼의 스키마를 알아내서 변수에 적용
    - 복사되는 정보
        a. 자료형
        b. 길이
        c. not null or 제약사항 > 복사X
    
    %rowtype
    - 행 참조
    - 모든 컬럼을 한번에 참조


*/
desc tblInsa; -- 꼭 확인하기! 이걸 매 번 할 수 없으니깐 > 타입 참조


declare
    -- vbuseo varchar2(15);
    vbuseo tblInsa.buseo%type; -- 귀찮아도 이걸로 쓰세요~
begin
    select buseo into vbuseo from tblInsa where name = '홍길동';
    dbms_output.put_line(vbuseo);    
end;
/


declare
    vname tblInsa.name%type;
    vbuseo tblInsa.name%type;
    vjikwi tblInsa.name%type;
    vbasicpay tblInsa.name%type;
begin
    select 
        name, buseo, jikwi, basicpay 
        into 
        vname, vbuseo, vjikwi, vbasicpay
    from tblInsa 
        where num = 1001;
        
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;
/


drop table tblBonus;

create table tblBonus (
    seq number primary key,
    num number(5) not null references tblInsa(num), --직원번호(FK)
    bonus number not null
);

create sequence seqBonus;

-- 프로시저 선언하기
-- 1. 서울 + 부장 + 영업부
-- 2. tblBonus > 지급 > 보너스(급여 * 1.5)


declare
    vnum    tblInsa.num%type;
    vbasicpay    tblInsa.basicpay%type;
begin
    
    select
        num, basicpay into vnum, vbasicpay
    from tblInsa
        where city = '서울' and jikwi = '부장' and buseo = '영업부';
    
    insert into tblBonus values ( seqBonus.nextVal, vnum, vbasicpay * 1.5 );
    
end;
/

select * from tblBonus; -- 1	1023	3750000

-- 보너스 지급 내역 페이지
select
    *
from tblInsa i
    inner join tblBonus b
        on i.num = b.num;
        
        
select * from tblMen;
select * from tblWomen;

rollback;

-- 무명씨 > 성전환 수술 > tblMen > tblWomen 옮기기 > 프로시저 1개 선언하기
-- 1. '무명씨' > select.. tblMen
-- 2. 1 > tblWomen > insert
-- 3. tblMen > delete

declare
    vname     tblMen.name%type;
    vage      tblMen.age%type;
    vheight   tblMen.height%type;
    vweight   tblMen.weight%type;
    vcouple   tblMen.couple%type;
begin
    --1.
    select 
        name, age, height, weight, couple 
        into 
        vname, vage, vheight, vweight, vcouple 
    from tblMen
        where name = '하하하';
    
    --dbms_output.put_line(vage);
    --dbms_output.put_line(vheight);
    
    --2.
    insert into tblWomen ( name, age, height, weight, couple )
        values ( vname, vage, vheight, vweight, vcouple );
        
    --3.
    delete from tblMen where name = vname;
    
end;
/



declare
    vrow tblMen%rowtype;
begin
    --1.
    select * into vrow from tblMen --가벼운 작업은 영향에 미치지 않으나, 현업에서는 비용 증가, 알아서 판단
        where name = '홍길동';
    
    --dbms_output.put_line(vrow.name);
    --dbms_output.put_line(vrow.age);
    --dbms_output.put_line(vrow.height);
    
    
    --2.
    insert into tblWomen ( name, age, height, weight, couple )
        values ( vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple );
        
    --3.
    delete from tblMen where name = vrow.name;
    
end;
/


/*

    제어문
    1. 조건문
    2. 반복문
    3. 분기문

*/


-- if문
declare
    vnum number := -10;
begin
    
    if vnum > 0 then
        dbms_output.put_line('양수');
    end if;
    
end;
/


declare
    vnum number := -10;
begin
    
    if vnum > 0 then
        dbms_output.put_line('양수');
    elsif vnum < 0 then -- else if, elsif, elseif
        dbms_output.put_line('음수');
    else
        dbms_output.put_line('0');        
    end if;
    
end;
/


-- tblInsa. 직원 검색(num) > 남자 or 여자 > 다른 업무 진행

declare
    vgender char(1);
begin
    
    select substr(ssn, 8, 1) into vgender from tblInsa where num = 1001;
    
    if vgender = '1' then
        dbms_output.put_line('남자 업무..');
    elsif vgender = '2' then
        dbms_output.put_line('여자 업무..');
    end if;
    
end;
/


-- 직원 1명 선택 > 보너스 지급 > 차등 지급
-- a. 과장/부장 > basicpay * 1.5
-- b. 사원/대리 > basicpay * 2


declare
    vnum        tblInsa.num%type;
    vbasicpay   tblInsa.basicpay%type;
    vjikwi      tblInsa.jikwi%type;
    vbonus      number;
begin
    
    select 
            num, basicpay, jikwi 
        into 
            vnum, vbasicpay, vjikwi 
    from tblInsa where num = 1005; --1005
    
    
    if vjikwi in ('과장', '부장') then
        vbonus := vbasicpay * 1.5;
    elsif vjikwi in ('사원', '대리') then
        vbonus := vbasicpay * 2;    
    end if;
    
    insert into tblBonus values ( seqBonus.nextVal, vnum, vbonus );
    
end;
/

-- 보너스 지급 내역 페이지

select * from tblInsa;

select
    *
from tblInsa i
    inner join tblBonus b
        on i.num = b.num;

/*

    case문
    - 표준 SQL > case end 와 동일
    


*/

-- AS > 아시아
select continent from tblCountry where name = '대한민국';

declare
    vcontinent tblCountry.continent%type;
    vresult varchar2(30);
begin

    select continent into vcontinent from tblCountry where name = '대한민국';
    
    case
        when vcontinent = 'AS' then vresult := '아시아';
        when vcontinent = 'EU' then vresult := '유럽';
        when vcontinent = 'AF' then vresult := '아프리카';
        else vresult := '기타'; 
    end case;
    
    dbms_output.put_line(vresult);
    
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타'; 
    end case;
    
    dbms_output.put_line(vresult);
    
end;
/

/*

    반복문
    
    1. loop
        - 기본형
        - 단순 반복
        - exit when 조건
    
    2. for loop
        - 1번 기반
        - 횟수 반복(자바 for)
        
        
    3. while loop
        - 1번 기반
        - 조건 반복(자바 while)
        
    

*/

begin
    
    loop
        dbms_output.put_line('구현부');
    end loop;
    
end;
/

declare
    vnum number := 1;
begin
    
    loop
        
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
        
        exit when vnum > 10;
        
    end loop;
    
end;
/


create table tblLoop (
    seq number primary key,
    data varchar2(100) not null
);

create sequence seqLoop;

-- tblLoop > 데이터 추가 > 항목001, 항목002, 항목003... 항목999
declare
    vnum number := 1;
begin
    
    loop
        
        dbms_output.put_line(lpad(vnum, 3, '0'));
        
        insert into tblLoop values (seqLoop.nextVal, '항목' || lpad(vnum, 3, '0'));
        
        vnum := vnum + 1;
        exit when vnum >= 1000;
        
    end loop;
    
end;
/

select * from tblLoop order by seq asc;


/*

    2. for loop
    
    for (int i=0; i<10; i++) {
    }
    +
    for (int n : list) {
    }
    for (int n in list) {
    }
    
    
    foreach() {}

*/

declare

begin
    
    for i in 1..10 loop
        dbms_output.put_line(i);
    end loop;
    
end;
/

create table tblGugudan (
    dan number not null,
    num number not null,
    result number not null,
    constraint tblGugudan_dan_num_pk primary key(dan, num) -- 복합키(Composite key)
    
);


begin
    
    for i in 1..9 loop
        for j in 1..9 loop
            insert into tblGugudan ( dan, num, result )
                values ( i, j, i*j );
        end loop;
    end loop;
    
end;
/
select * from tblGugudan;

-- 복합키 > 관계 맺기

create table tblStudent (
    name varchar2(30) not null,
    subject varchar2(30) not null,
    tel varchar2(15) not null,
    constraint tblstudent_name_subject_pk primary key(name, subject)
);

create table tblScore (
    score number not null,
    name varchar2(30) not null,     --FK
    subject varchar2(30) not null,  --FK
    constraint tblScore_name_subject_fk 
        foreign key(name, subject) references tblstudent(name, subject)
);


insert into tblStudent ( name, subject, tel )
    values ( '홍길동', '자바', '010-1234-5678' );

insert into tblStudent ( name, subject, tel )
    values ( '홍길동', '오라클', '010-1234-5678' );

insert into tblStudent ( name, subject, tel )
    values ( '고양이', '자바', '010-1234-5678' );

insert into tblScore ( score, name, subject )
    values ( 100, '홍길동', '자바' );

insert into tblScore ( score, name, subject )
    values ( 90, '홍길동', '오라클' );

insert into tblScore ( score, name, subject )
    values ( 80, '고양이', '자바' );

insert into tblScore ( score, name, subject )
    values ( 70, '고양이', '오라클' );

select * from tblStudent;
select * from tblScore;

select * from tblStudent where name = '홍길동';
select * from tblStudent where name = '홍길동' and subject = '자바';

-- join
select * from tblStudent t
            inner join tblScore c
                on t.name = c.name and t.subject = c.subject;

begin
    
    for i in reverse 1..10 loop
        dbms_output.put_line(i);
    end loop;
    
end;
/



/*

    3. while loop


*/

declare
    vnum number := 1;
begin
    
    while vnum <= 10 loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
    end loop;
    
--    while (조건) {
--    
--    }
    
end;
/

-- select into > 결과 없으면?
declare
    vname tblInsa.name%type;
    vbasicpay tblInsa.basicpay%type;
    vnum number := 1001;
    vcnt number;
begin
    
    select count(*) into vcnt from tblInsa where num = vnum;
    
    if vcnt > 0 then
        select name, basicpay into vname, vbasicpay from tblInsa 
            where num = vnum;

        dbms_output.put_line('이름:' || vname);
        dbms_output.put_line('급여:' || vbasicpay);
    end if;

end;
/





/*

    select > 결과셋 > PL/SQL 변수 대입
    
    1. select into
    - 결과셋의 레코드가 1개일때만 사용이 가능하다.
    - 결과가 0이면 에러 발생
        
    2. cursor + 루프
    - 결과셋의 레코드가 N개일때만 사용이 가능하다.(0~이상)
    
    declare
        변수 선언;
        커서 선언; -- 결과셋 참조 객체
    begin
        커서 열기;
            loop
                커서 참조 > 레코드 접근
                exit when 조건
            end loop
        커서 닫기;
    end;
            

*/

create view vwTest
as
select name from tblInsa;

cursor vcursor 
is 
select name from tblInsa;
    


-- tblInsa. 직원들 이름을 가져오시오.(60명)

declare
    -- cursor 커서명 is select문;
    cursor vcursor 
    is 
    select name from tblInsa;
    
    vname tblInsa.name%type;
    
begin
    
    -- cursor 사용
    open vcursor; -- 커서 열기 > select문 실행
        
        -- fetch  커서 into 변수
        -- select 컬럼 into 변수
--        fetch vcursor into vname;
--        dbms_output.put_line(vname);
--        
--        fetch vcursor into vname;
--        dbms_output.put_line(vname);

        loop
            fetch vcursor into vname;
            exit when vcursor%notfound; -- 커서 속성
            
            dbms_output.put_line(vname);
        end loop;
        
    close vcursor;
    
end;
/



-- '기획부' > 이름, 직위, 급여 > 출력
declare
    
    cursor vcursor
    is
    select name, jikwi, basicpay from tblInsa where buseo = '기획부';
    
    vname tblInsa.name%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
begin
    
    open vcursor;
    loop
        fetch vcursor into vname, vjikwi, vbasicpay;
        exit when vcursor%notfound;
        
        --1회전 > 기획부 직원 1명
        
        dbms_output.put_line(vname || ',' || vjikwi || ',' || vbasicpay);
        
        
    end loop;
    close vcursor;
    
end;
/


/*

    문제. tblBonus
    
    - 모든 직원에게 보너스 지급(60명 전원)
    - 과장/부장 > basicpay * 1.5
    - 사원/대리 > basicpay * 2

    
*/


declare


    vnum        tblInsa.num%type;
    vbasicpay   tblInsa.basicpay%type;
    vjikwi      tblInsa.jikwi%type;
    vbonus      number;

    cursor vcursor
    is
    select num, basicpay, jikwi from tblInsa;

    
begin
    
    open vcursor;
    loop
    
        fetch
            vcursor
        into 
            vnum, vbasicpay, vjikwi;
        exit when vcursor%notfound;
        
        
    if vjikwi in ('과장', '부장') then
        vbonus := vbasicpay * 1.5;
    elsif vjikwi in ('사원', '대리') then
        vbonus := vbasicpay * 2;    
    end if;
        
    insert into tblBonus values ( seqBonus.nextVal, vnum, vbonus );
        
    end loop;
    close vcursor;
    
end;
/

-- 보너스 지급 내역 페이지

select * from tblBonus;

select
    *
from tblInsa i
    inner join tblBonus b
        on i.num = b.num;


-- 커서 탐색
-- 1. 커서 + loop > 기본형
-- 2. 커서 + for loop > 간단 버전

-- 60명 직원 정보 전부 출력
declare
    cursor vcursor is select * from tblInsa;
    --vrow tblInsa%rowtype;
begin
    --open vcursor;
    for vrow in vcursor loop
        --fetch vcursor into vrow;
        --exit when vcursor%notfound;
        
        -- 업무
        dbms_output.put_line(vrow.name || ', ' || vrow.buseo);
        
    end loop;
    --close vcursor;
end;
/

declare
    cursor vcursor is select * from tblInsa;
begin
    for vrow in vcursor loop

        -- 업무
        dbms_output.put_line(vrow.name || ', ' || vrow.buseo);
        
    end loop;

end;
/

-- 예외 처리

-- ORA-01403: no data found
-- ORA-01476: divisor is equal to zero

declare
    vname tblInsa.name%type;
    vcnt number;
begin
    dbms_output.put_line(111);
    select name into vname from tblInsa where num = 1001;
    dbms_output.put_line(222);
    dbms_output.put_line(vname);
    dbms_output.put_line(333);
    
    select count(*) into vcnt from tblInsa where buseo = '기획부';
    dbms_output.put_line(10000000 / vcnt);
    
    vcnt := '문자열';
    
exception
    
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터가 없습니다.');

   when ZERO_DIVIDE then
        dbms_output.put_line('0으로 나누려고 했습니다.');

    when others then
        dbms_output.put_line('예외 처리');
    
end;
/


/*

    프로시저
    1. 익명 프로시저
    
    2. 실명 프로시저
        
    저장(실명) 프로시저
    - Stored Procedure
    
    1. 저장 프로시저, Stored Procedure
        - 매개변수 / 반환값 > 구성 자유
    
    2. 저장 함수, Stored Function
        - 매개변수 / 반환값 > 필수
    
    
    익명 프로시저 선언
    [DECLARE
        변수 선언;
        커서 선언;]
    BEGIN
        구현부;
    [EXCEPTION
        예외처리;]
    END;
    
    저장 프로시저 선언
    CREATE [OR REPLACE] PROCEDURE 프로시저명
    IS(AS) -- 사람으로 치면 목부분
    [   변수 선언;
        커서 선언;]
    BEGIN
        구현부;
    [EXCEPTION
        예외처리;]
    END;
    
    
*/

set serveroutput on;

-- [SQL 명령어가 실행되는 과정]

-- 1. 직접 SQL 실행 > 표준 SQL
select * from tblInsa;

-- 2. 익명 프로시저 실행
declare
    vnum number;
begin
    vnum := 10;
    dbms_output.put_line(vnum);
end;
/
-- 3. 저장 프로시저 실행
-- 프로시저 생성(create) > 오라클 객체로서 저장 > 호출(+사용)
create or replace procedure procTest
is
    vnum number;
begin
    vnum := 20;
    dbms_output.put_line(vnum);
end procTest;
/

-- 프로시저 호출 구문(PL/SQl)
begin
    procTest();
    procTest;
end;
/


-- 표준 SQL 영역에서 프로시저 호출하는 방법
execute procTest;
exec procTest;
call procTest; -- 나중에 사용 > 자바에서 오라클의 프로시저를 호출할 때
call procTest(); -- ()유무에 따라 출력이 다름


/*

    [SQL 명령어가 실행되는 과정]
    1. 직접 SQL 실행 > 표준 SQL > 텍스트 SQL
    2. 익명 프로시저 실행
    3. 저장 프로시저 실행
    
    1 + 2
    a. SQL Developer > 구문을 작성한다.(코딩)
    b. 영역을 선택한다. > Ctrl + Enter > 텍스트를 오라클 서버에게 전송한다.
        - SQL 실행(X)
    c. 오라클 서버가 b의 SQL을 수신한다.
    d. 수신한 SQL을 파싱한다.(구문을 분석하고 쪼갠다. > 문법 검사)
    e. SQL을 컴파일한다.(인터프리터)
    f. SQL 실행한다.
    g. 결과셋을 생성한다.(서버의 메모리에)
    h. 결과셋을 클라이언트에게 반환한다.
    i. 반환받은 결과셋을 클라이언트 메모리에 로딩한다.
        > SQL Developer > 결과셋을 화면에 출력한다.
    
    - 동일한 SQL을 반복 > 비용이 동일하다.
    
    
    3 
    a. SQL Developer > 구문을 작성한다.(코딩)
    b. 영역을 선택한다. > Ctrl + Enter > 텍스트를 오라클 서버에게 전송한다.
        - SQL 실행(X)
    c. 오라클 서버가 b의 SQL을 수신한다.
    d. 수신한 SQL을 파싱한다.(구문을 분석하고 쪼갠다. > 문법 검사)
    e. SQL을 컴파일한다.(인터프리터)
    f. SQL 실행한다.
    g. 프로시저를 생성한다. > 서버에 객체로 저장한다.(***)
    h. 성공/실패 메시지를 클라이언트에게 반환한다.
    i. SQL Developer > 메세지를 화면에 출력한다.
    
    - 동일한 SQL을 반복 > 비용이 동일하다.
    
     
    a. SQL Developer > 구문을 작성한다.(코딩)
    b. 영역을 선택한다. > Ctrl + Enter > 텍스트를 오라클 서버에게 전송한다.
        - SQL 실행(X)
    c. 오라클 서버가 b의 SQL을 수신한다.
    d. 수신한 SQL을 파싱한다.(구문을 분석하고 쪼갠다. > 문법 검사)
    e. SQL을 컴파일한다.(인터프리터)
    f. SQL 실행한다.
    g. 저장된 프로시저를 호출한다.
        > 프로시저 내의 구문들을 이미 컴파일이 되어 있다.(***********)
        > 이미 컴파일된 프로시저를 호출한다.
    i. 결과를 클라이언트에게 반환한다.
    j. SQL Developer > 결과 처리
    
    - 동일한 프로시저를 호출 > 비용이 절감된다.
        1. 생산 비용 + 컴파일 > 고가
        2. 사용 비용 > 저렴 > 반복(*******)
    - 저장된 객체 > 관리 비용 발생 > 사람이 관리(권한 or 네이밍)
    
    
        
        
*/
-- 1 + 2
select 
*  
from 
tblInsa;
-- 3
create or replace procedure procTest
is
    vnum number;
begin
    vnum := 20;
    dbms_output.put_line(vnum);
end procTest;
/

-- 
begin
    procTest;
end;
/




-- 프로시저 > 매개변수 or 반환값

-- 1. 매개변수가 있는 프로시저
create or replace procedure procTest(pnum number) --매개변수
is
    vnum number; --일반변수
begin
    vnum := pnum * 2;
    dbms_output.put_line(vnum);
end procTest;
/

begin
    procTest(10);
    procTest(20);
    procTest(30);
end;
/


create or replace procedure procTest(pwidth number, pheight number) --매개변수
is
    varea number;
begin
    varea := pwidth * pheight; 
    dbms_output.put_line(varea);
end procTest;

create or replace procedure procTest( --이 방식으로 더 많이 사용
    pwidth number, 
    pheight number
) --매개변수
is
    varea number;
begin
    varea := pwidth * pheight; 
    dbms_output.put_line(varea);
end procTest;



begin
    procTest(10, 20);   
end;
/


-- 1. 프로시저의 매개변수 > 길이 표현(X), not null 표현(X), default(O)
-- 2. 일반변수 없을 때 >  is(as) 생략 불가능
create or replace procedure procTest(
    pname varchar2
)
is
begin
    dbms_output.put_line(pname || '님 안녕하세요.');
end procTest;
/



create or replace procedure procTest( --이 방식으로 더 많이 사용
    pwidth number, 
    pheight number default 10 --인자리스트 마지막에 꼭 와야됨
    
) --매개변수
is
    varea number;
begin
    varea := pwidth * pheight; 
    dbms_output.put_line(varea);
end procTest;
/

begin
    procTest(10, 20);
    procTest(10);
    procTest(); --PLS-00306: wrong number or types of arguments in call to 'PROCTEST'
end;
/


/*

    매개변수 모드
    - 매개변수가 값을 전달하는 방식
    - Call by Value > 값을 전달하는 방식(값형 전달)
    - Call by reference > 주소값을 전달하는 방식(참조형 전달)



*/

create or replace procedure procTest(
    pnum1 number,       --in parameter(값을 전달) > 인자값 역할
    pnum2 in number,
    pnum3 out number,    --out parameter(주소값을 전달) > 반환값 역할
    pnum4 out number, 
    pnum5 out number
)
is
begin
    -- pnum3의 조작은 vresult의 조작과 동일하다.(같은 주소값 참조)
    pnum3 := pnum1 + pnum2;
    pnum4 := pnum1 * pnum2;
    pnum5 := pnum1 - pnum2;
end procTest;
/


begin
    procTest(10, 20, 30);
end;
/

declare
    vresult number;
    vresult2 number;
    vresult3 number;
begin
    procTest(10, 20, vresult, vresult2, vresult3); --vresult > 널 전달(X), 자신의 주소값 전달(O)
    dbms_output.put_line(vresult);
    dbms_output.put_line(vresult2);
    dbms_output.put_line(vresult3);
end;
/

/*

    문제.
    1. procTest1
        - 부서 전달(인자 1개) > in
        - 해당 부서의 직원 중 급여를 가장 많이 받는 직원의 num을 반환 > out
        > 호출 > 번호 출력

*/
select * from tblInsa;

create or replace procedure procTest1(
    pbuseo in varchar2,
    pnum out number
)
is
begin
    select num into pnum from tblInsa 
        where buseo = pbuseo 
            and basicpay = (select max(basicpay) from tblInsa 
                                    where buseo = pbuseo);
    -- 1001
end procTest1;
/


declare
    vnum number;
begin
    procTest1('기획부', vnum);
    dbms_output.put_line(vnum);
end;
/

--------------------------------------------------------------------------------
/*
2. procTest2
        - 직원 번호 전달 > in
        - 같은 지역에 사는 직원수? > out
          같은 직위를 가지는 직원수? > out
          해당 직원보다 급여를 더 많이 받는 직원수? > out
        > 호출
*/

create or replace procedure procTest2(
    pnum in number,
    pcnt1 out number,
    pcnt2 out number,
    pcnt3 out number
)
is
begin
    select count(*) - 1 into pcnt1 from tblInsa
        where city = (select city from tblInsa where num = pnum);

    select count(*) - 1 into pcnt2 from tblInsa
        where jikwi = (select jikwi from tblInsa where num = pnum);

    select count(*) into pcnt3 from tblInsa
        where basicpay > (select basicpay from tblInsa where num = pnum);
end;
/
--------------------------------------------------------------------------------
declare
    vcnt1 number;
    vcnt2 number;
    vcnt3 number;
begin
    procTest2(1001, vcnt1, vcnt2, vcnt3);
    dbms_output.put_line(vcnt1);
    dbms_output.put_line(vcnt2);
    dbms_output.put_line(vcnt3);
end;
/
--------------------------------------------------------------------------------

select * from tblStaff;
select * from tblProject;

-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인?
-- 2. 담당 프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제

create or replace procedure procDeleteStaff(
    pseq in number,     --퇴사할 직원번호
    pstaff in number,   --위임받은 직원번호
    presult out number  --결과 > 성공(1) or 실패(0)
    
)
is
    vcnt number;    --퇴사할 직원이 현재 담당한 프로젝트의 개수
    vcnt2 number;
begin
    
     -- 퇴사 직원이 존재하는지? 1 or 0
        select count(*) into vcnt2 from tblStaff where seq = pseq;
    
    if vcnt2 = 1 then 
    
        --1. 퇴사 직원이 담당 프로젝트가 있는지?
        select count(*) into vcnt from tblProject where staff_seq = pseq;
        
        --2. 조건 분기
        if vcnt > 0 then
            --3. 위임
            update tblProject set staff_seq = pstaff where staff_seq = pseq;
        else
            --3. 아무것도 안함
            null; --아무것도 넣지 말라는 문구
        end if;
        
        --4. 퇴사
        delete from tblStaff where seq = pseq;
        
        --5. 성공
        presult := 1;
    else
        --5. 직원 존재X
        presult := 2;
    end if;    
    
exception    
    --5. 실패
    when others then
        presult := 0;
        
    
        
        
end procDeleteStaff;
/


declare
    vresult number;
begin
    procDeleteStaff(1, 2, vresult);
    
    if vresult = 1 then
        dbms_output.put_line('퇴사 성공');
    elsif vresult = 2 then
        dbms_output.put_line('직원 없음');
    else
        dbms_output.put_line('퇴사 실패');
    end if;
    
end;
/


select * from tblStaff;


/*

    저장 프로시저
    1. 저장 프로시저
    2. 저장 함수
    
    저장 함수, Stored Function > 함수(function)
    - 저장 프로시저와 동일
    - 반환값이 반드시 존재!!!



*/


-- num1 + num2 > 합 반환

-- 프로시저
create or replace procedure procSum(
    pnum1 in number,
    pnum2 in number,
    presult out number
)
is
begin
    presult := pnum1 + pnum2;
end procSum;
/

-- 함수
-- out parameter 적용 가능 > 사용 금지!!
create or replace function fnSum(
    pnum1 in number,
    pnum2 in number
) return number
is
begin
    return pnum1 + pnum2;
end fnSum;
/


declare
    vresult number;
begin
    procSum(10, 20, vresult);
    dbms_output.put_line(vresult);
    
    vresult := fnSum(30, 40);
    dbms_output.put_line(vresult);
end;
/

-- 프로시저와 함수의 사용 차이
-- 1. 프로시저 > PL/SQL 용으로 사용하는 메서드
-- 2. 함수 > 표준 SQL용으로 사용하는 메서드

select 
    name, population, area,
    population + area,
    --procSum(population, area, PL/SQL변수)
    fnSum(population, area) --PL/SQL이지만 function은 
from tblCountry;


select
    name, buseo, jikwi,
    fnGender(ssn) as gender
from tblInsa;


create or replace function fnGender (
    pssn varchar2
) return varchar2
is
begin
    return  case
                 when substr(pssn, 8, 1) = 1 then '남자'
                 when substr(pssn, 8, 1) = 2 then '여자'
            end;
end fnGender;
/


/*

    저장 프로시저

    1. 프로시저
    2. 함수
    3. 트리거
    
    트리거, Trigger
    - 프로시저의 한 종류
    - 개발자의 호출이 아닌, 미리 지정한 특정 사건이 발생하면 시스템이 자동으로
      호출하는 프로시저
      
    트리거 구문
    
    CREATE [OR REPLACE] TRIGGER  트리거명
        BEFORE|AFTER
        INSERT|UPDATE|DELETE
        ON 테이블명
        [FOR EACH ROW]
    [DECLARE
        변수 선언;
        커서 선언;]
    BEGIN
        구현부;
    [EXCEPTION
        예외처리;]
    END;

*/

-- 트리거 생성(=실행) > 트리거가 tblInsa 감시 > 트리거 호출 > delete 발생

-- tblInsa > 직원 삭제
create or replace trigger trgInsa
    before      -- 삭제가 발생하기 직전에 프로시저를 호출해라
    --after       -- 삭제가 먼저 발생하고 트리거 호출
    delete      -- 삭제하는 발생하는지?
    on tblInsa  -- tblInsa 테이블에서
begin
    
    dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss') || ' 트리거 실행');
    
    -- 월요일에는 퇴사 불가능
    if to_char(sysdate, 'dy') = '화' then
        
        -- 강제로 에러 발생!!
        -- : -20000 ~ -29999
        raise_application_error(-20001, '월요일에는 퇴사가 불가능합니다.');
        
    end if;
    
end trgInsa;
/


rollback;

select * from tblInsa;
delete from tblInsa where num = 1002;

select * from tblBonus;
delete from tblBonus;

SELECT A.TABLE_NAME
FROM all_cons_columns a 
JOIN all_constraints c ON a.owner = c.owner
AND a.constraint_name = c.constraint_name
JOIN all_constraints c_pk ON c.r_owner = c_pk.owner
AND c.r_constraint_name = c_pk.constraint_name
WHERE c.constraint_type = 'R'
AND c_pk.table_name ='TBLINSA'
GROUP BY A.TABLE_NAME
ORDER BY A.TABLE_NAME;


-- 2. ERD 툴 > eXERD
-- 순공학, Forward Engineering
-- 역공학, Reverse Engineering
select * from tabs;


-- 트리거 > 동작 유무 > 시각(X)
-- 트리거 확인
select
    *
from user_triggers
    where table_name = 'TBLINSA'; -- status> ENABLED
    
-- 트리거 중지 > 트리거는 무거운 프로그램? 이기 때문에 현업에서는 잘 쓰지 않음
alter trigger trgInsa disable;

-- 트리거 시작
alter trigger trgInsa enable;


-- 로그 기록
-- tblTodo > 감시 > 어떤 일이 발생?   안되~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
create table tblLog(
    seq number primary key,                 --PK
    message varchar2(1000) not null,        --메시지
    regdate date default sysdate not null   --발생시각
);
create sequence seqLog;

create or replace trigger trgTodo
    after
    insert or update or delete
    on tblTodo
declare
    vmessage varchar2(1000);
begin
    dbms_output.put_line('trgTodo 호출됨');

-- 3개의 사건 > 1개의 호출(무슨일?)
    if inserting then
        vmessage := '새로운 할일이 추가되었습니다.';
    elsif updating then
        vmessage := '새로운 할일이 수정되었습니다.';
    elsif deleting then
        vmessage := '새로운 할일이 삭제되었습니다.';
    end if;
    
    dbms_output.put_line(vmessage);
    
    insert into tblLog(seq, message, regdate)
        values (seqLog.nextVal, vmessage, default);
    
end trgTodo;
/

select * from tblTodo;

insert into tblTodo values (22, '새로운 할일', sysdate, null);
update tblTodo set title = '새로운 할입니다.' where seq = 22;
delete from tblTodo where seq = 22;

select * from tblLog;

/*

    [FOR EACH ROW]
    
    1. 생략
        - 문장(Query) 단위 트리거
        - Table Level Trigger
        
    2. 사용
        - 행(Record) 단위 트리거
        
        
*/


create or replace trigger trgMen
    after
    delete
    on tblMen
    for each row
begin
    dbms_output.put_line('남자 데이터를 삭제했습니다.' || :old.name);   --:old.name > for each row에서만 사용가능
end trgMen;
/

select * from tblMen;

delete from tblMen where name = '조세호';
delete from tblMen;

rollback;





create or replace trigger trgMen
    before
    update
    on tblMen
    for each row
begin
    dbms_output.put_line('레코드 수정: ' || :old.name);   --:old.name > for each row에서만 사용가능
    dbms_output.put_line('수정 전 나이: ' || :old.age);
    dbms_output.put_line('수정 후 나이: ' || :new.age);
    dbms_output.put_line('전 여친: ' || :old.couple);
    dbms_output.put_line('현 여친: ' || :new.couple);
end trgMen;
/

-- :old > 사건이 적용되기 전의 레코드 상태 참조
-- :new > 사건이 적용된 후의 레코드 상태 참조

update tblMen set age = 30 where name = '홍길동';
update tblMen set couple = '박나래' where name = '홍길동';

-- insert >: old(X), :new(O)
-- update >: old(O), :new(O)
-- delete >: old(O), :new(X)


-- 회원 테이블, 게시판 테이블
-- 포인트 정책
-- 1. 글 작성 > 포인트 + 100
-- 2. 글 삭제 > 포인트 - 50
create table tblUser(
    id varchar2(30) primary key,
    point number not null
);

create table tblBoard(
    seq number primary key,
    subject varchar2(1000) not null,
    id varchar2(30) not null references tblUser(id)
);
create sequence seqBoard;

insert into tblUser values ('hong', 1000);

-- 절차
-- 1. 글을 쓴다.(삭제한다.)
-- 2. 포인트를 누적한다.(차감한다.)

-- Case 1. 하드 코딩
-- 개발자 직접 제어
-- 실수 > 일부 업무 누락;;

-- 1.1 글쓰기
insert into tblBoard values (seqBoard.nextVal, '게시판입니다.', 'hong');

-- 1.2 포인트 누적하기
update tblUser set point = point + 100 where id = 'hong';

-- 1.3 글삭제
delete from tblBoard where seq = 1;

-- 1.4 포인트 차감하기
update tblUser set point = point - 50 where id = 'hong';


-- Case 2. 프로시저
-- 장점: 전체 업무 단위화 > 간단함. 가독성. 재사용성(*)
-- 단점: 초기 비용 증가
create or replace procedure procAddBoard (
    pid varchar2,
    psubject varchar2
)
is
begin
    
    --2.1
    insert into tblBoard values (seqBoard.nextVal, psubject, pid);
    
    --2.2
    update tblUser set point = point + 100 where id = pid;
        
end procAddBoard;
/



--삭제
create or replace procedure procDeleteBoard (
    pseq number
)
is
    vid tblUser.id%type;
begin
    
    select id into vid from tblBoard where seq = pseq;
    
    --2.3
    delete from tblBoard where seq = pseq;
    
    --2.2
    update tblUser set point = point - 50 where id = vid;
        
end procDeleteBoard;
/

select * from tblBoard;

begin
    --procAddBoard('hong', '안녕하세요.');
    procDeleteBoard(7);
end;
/

-- Case 3. 트리거(포인트용)
create or replace trigger trgBoard
    after
    insert or delete
    on tblBoard
    for each row -- 발생한 사건의 레코드(컬럼) 값을 접근하려면
begin
    
    if inserting then
        update tblUser set point = point + 100 where id = :new.id;
    elsif deleting then
        update tblUser set point = point - 50 where id = :old.id;
    end if;
        
end trgBoard;
/

-- 3.1 글쓰기
insert into tblBoard values (seqBoard.nextVal, '게시판입니다.', 'hong');

-- 3.2 글삭제
delete from tblBoard where seq = 21;

-- 글쓰기 > +100
-- 글삭제 > -50

select * from tblUser; --1150 > 1100 > 1200 > 1150
select * from tblBoard;

 
-- 적당 기준 > 프로시저(8) vs 트리거(2)



-- 프로시저 out parameter > 반환값
-- 1. 원자값(1행1열) > select count(*) from tblInsa;
-- 2. 레코드 1개(컬럼 N개) > 1번 x N회
-- 3. 레코드 N개 > 커서 사용

create or replace procedure procTest (
    pcnt out number,
    prow out tblInsa%rowtype,
    pcursor out sys_refcursor
)
is
begin
    
    --1. 1행 1열
    select count(*) into pcnt from tblInsa;
    
    --2. 1행 N열
    select * into prow from tblInsa where num = 1010;
    
    --3. N행 N열 > 열려진 커서를 반환한다.
    open pcursor
    for
    select * from tblInsa;
     
end procTest;
/

--Ummm

declare
    vcnt number;
    vrow tblInsa%rowtype;
    vcursor sys_refcursor;
begin
    procTest(vcnt, vrow, vcursor);

    dbms_output.put_line(vcnt);
    dbms_output.put_line(vrow.name || ',' vrow.buseo);
    
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(vrow.name || ',' || vrow.buseo);
    end loop;
    
end;
/



-- 계정
-- 트랜잭션
-- 인덱스

-- 오라클 > 모든 자원을 계정별로 관리 > HR 계정(테이블, 뷰, 프로시저, 함수 등)

-- SQL*Plus
show user; --DBear, DataGrid
desc tblInsa;


select * from hr.tblInsa; --단, 권한이 있을 때


-- 프로젝트 > 수많은 테이블, 시퀀스, 객체 등..
-- HR
-- 
create user 계정명 identified by java1234;

create user hong identified by java1234;

grant 권한,권한,권한 to 유저명;

grant create session to hong;
grant connect to hong;

grant create table to hong;

-- ROLE
grant connect, resource, create view to hong; -- hr 권한 유사

-- 공부용도
grant dba to hong; --관리자급



-- 프로젝트(A, B, C)
-- A 입장 > 서버 설정 > 방화벽 설정
-- B,C 입장 > 






