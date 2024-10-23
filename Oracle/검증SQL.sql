-- 1. 대여별, 구매별 각각 가격이 비싼 영화부터 가져오시오.
select title,
       type,
       price
from tblMovie
order by type, price desc;

-- 2. '라미란' 배우가 출연한 영화를 가져오시오.
select *
from tblMovie m
         inner join tblJoinActor ja on m.seq = ja.movieseq
         inner join tblActor a on ja.actorseq = a.seq
where a.name = '라미란';

-- 3. '김성훈' 감독이 제작한 영화를 가져오시오.
select *
from tblMovie m
         inner join tbljoindirector j
                    on m.seq = j.movieseq
         inner join tbldirector d
                    on j.directorseq = d.seq
where d.name = '김성훈';

-- 4. 더빙 영화를 가져오시오.
select *
from tblMovie
where subtitle = 2;

-- 5. 별점 8.0 이상 받은 영화를 가져오시오.
select *
from tblMovie
where score >= 8;

-- 6. 감상평이 없는 영화를 가져오시오.
select *
from tblMovie m
         left outer join tblReview r on m.seq = r.mseq
where r.seq is null;

-- 7. 등록된 50개의 영화중 가장 많은 영화에 참여한 배우를 가져오시오.
select a.name,
       count(m.seq)
from tblActor a
         inner join tblJoinActor ja on a.seq = ja.actorseq
         inner join tblMovie m on m.seq = ja.movieseq
group by a.name
order by count(m.seq) desc;

-- 8. 좋아요(하트) 50개 이상이면서 15세 관람가 이상인 영화들을 가져오시오.
select *
from tblMovie
where likes >= 50
  and firmrate in (select seq from tblFirmrate where firmrate in (15, 19));

-- 9. 러닝타임이 120분 미만인 영화를 가져오시오.
select *
from tblMovie
where runtime < 120;

-- 10. 감상평 중 싫어요를 가장 많이 받은(누적) 영화를 가져오시오.
select title
from (select m.title, count(d.seq)
      from tblMovie m
               inner join tblReview r on m.seq = r.mseq
               inner join tblDislike d on r.seq = d.rseq
      group by m.title
      order by count(d.seq) desc)
where rownum = 1;

-- 11. 대여와 구매를 모두 가능한 영화를 가져오시오.
select b.*
from (select * from tblMovie where type = 'rent') r
         inner join (select * from tblMovie where type = 'buy') b on r.title = b.title;

-- 12. 랭킹 순위가 가장 많이 오른 영화와 랭킹 순위가 가장 많이 떨어진 영화를 가져오시오.
select * from TBLMONTHRANK

