-- DML
-- ******************* 공통 정보 테이블 *******************
insert into tblInfo
values (1, 'PC, 모바일, TV 총 5대',
        '사용하지 않은 구매,대여 상품은 7일 이내 MY > 구입내역에서 구매취소를 눌러 직접 환불하실 수 있습니다.',
        ' 결제 후 7일 이내 이용을 시작하지 않을경우, 자동으로 이용기간이 시작됩니다.\r\n소장 상품은 구매한 계정에서 이용 계약이 유지되는 동안 이용 가능합니다.\r\n일부 작품은 다운로드 기간 제한이 있으므로 이용기간을 확인해 주세요.',
        ' 해외에서 스트리밍/다운로드 불가, PC 및 TV에서 다운로드 불가, 외부화면 연결 불가');

-- ******************* 관람연령 테이블 *******************
insert into tblfirmrate (seq, firmrate)
values (1, 7);
insert into tblfirmrate (seq, firmrate)
values (2, 12);
insert into tblfirmrate (seq, firmrate)
values (3, 15);
insert into tblfirmrate (seq, firmrate)
values (4, 19);
insert into tblfirmrate (seq, firmrate)
values (5, 0);


-- ******************* 영화 테이블 *******************
-- 영화번호, 영화등급, 공통정보, 영화제목, 개봉일, 상영시간, 화질, 소개, 자막/더빙, 저장용량, 평점, DRM 적용여부

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '범죄도시4', 2024, 109, 1080,
        '신종 마약 사건 3년 뒤, 괴물형사 ‘마석도’(마동석)와 서울 광수대는 배달앱을 이용한 마약 판매 사건을 수사하던 중 수배 중인 앱 개발자가 필리핀에서 사망한 사건이 대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다. 필리핀에 거점을 두고 납치, 감금, 폭행, 살인 등으로 대한민국 온라인 불법 도박 시장을 장악한 특수부대 용병 출신의 빌런 ‘백창기’(김무열)와 한국에서 더 큰 판을 짜고 있는 IT업계 천재 CEO ‘장동철’(이동휘). ‘마석도’는 더 커진 판을 잡기 위해 ‘장이수’(박지환)에게 뜻밖의 협력을 제안하고 광역수사대는 물론, 사이버수사대까지 합류해 범죄를 소탕하기 시작하는데… 나쁜 놈 잡는데 국경도 영역도 제한 없다! 업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!',
        1, 4178, 7.44, 'Y', 'rent', 11000, 7, 300);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '범죄도시4', 2024, 109, 1080,
        '신종 마약 사건 3년 뒤, 괴물형사 ‘마석도’(마동석)와 서울 광수대는 배달앱을 이용한 마약 판매 사건을 수사하던 중 수배 중인 앱 개발자가 필리핀에서 사망한 사건이 대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다. 필리핀에 거점을 두고 납치, 감금, 폭행, 살인 등으로 대한민국 온라인 불법 도박 시장을 장악한 특수부대 용병 출신의 빌런 ‘백창기’(김무열)와 한국에서 더 큰 판을 짜고 있는 IT업계 천재 CEO ‘장동철’(이동휘). ‘마석도’는 더 커진 판을 잡기 위해 ‘장이수’(박지환)에게 뜻밖의 협력을 제안하고 광역수사대는 물론, 사이버수사대까지 합류해 범죄를 소탕하기 시작하는데… 나쁜 놈 잡는데 국경도 영역도 제한 없다! 업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!',
        1, 4178, 7.44, 'Y', 'buy', 16390, 0, 300);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '육사오(6/45)', 2022, 113, 1080, '우연히 1등 당첨 로또를 주운 말년 병장 ‘천우’.
심장이 터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또.
바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다!

우연히 남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 ‘용호’.
이거이 남조선 인민의 고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가?
근데 무려 당첨금이 57억이라고?!

당첨금을 눈앞에서 놓칠 위기에 처한 ‘천우’와
북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 ‘용호’.
여기에 예상치 못한 멤버들(?)까지 합류하고 57억을 사수하기 위한 3:3팀이 결성되는데…

주운 자 VS 또 주운 자
아슬아슬 선 넘는 지분 협상이 시작된다!', 0, 4403, 8.56, 'Y', 'rent', 1540, 7, 250);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '인사이드 아웃', 2015, 94, 1080,
        '모든 사람의 머릿속에 존재하는 감정 컨트롤 본부
        그곳에서 불철주야 열심히 일하는 기쁨, 슬픔, 버럭, 까칠, 소심 다섯 감정들.
        이사 후 새로운 환경에 적응해야 하는 `라일리`를 위해
        그 어느 때 보다 바쁘게 감정의 신호를 보내지만
        우연한 실수로 `기쁨`과 `슬픔`이 본부를 이탈하게 되자
        `라일리`의 마음 속에 큰 변화가 찾아온다.
        `라일리`가 예전의 모습을 되찾기 위해서는 `기쁨`과 `슬픔`이 본부로 돌아가야만 한다!
        그러나 엄청난 기억들이 저장되어 있는 머릿속 세계에서 본부까지 가는 길은 험난하기만 한데…
        과연, `라일리`는 다시 행복해질 수 있을까?

        지금 당신의 머릿속에서 벌어지는 놀라운 일!
        하루에도 몇번씩 변하는 감정의 비밀이 밝혀진다!', 1, 3686, 9.09, 'Y', 'buy', 7150, 1825, 200);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '너의 이름은.', 2017, 106, 1080, '꿈 속에서 몸이 뒤바뀐 도시 소년 ‘타키’와 시골 소녀 ‘미츠하’,
만난 적 없는 두 사람이 만들어가는 기적과 사랑에 관한 이야기 <너의 이름은.>

잊고 싶지 않은 사람
잊으면 안 되는 사람
너의 이름은?', 0, 4168, 8.82, 'Y', 'buy', 1200, 0, 250);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '콰이어트 플레이스 2', 2021, 97, 1080, '
실체를 알 수 없는 괴생명체의 공격으로 일상의 모든 것이 사라진 세상,
아이들 대신 죽음을 선택한 아빠의 희생 이후 살아남은 가족들은 위험에 노출된다.
갓 태어난 막내를 포함한 아이들과 함께 소리 없는 사투를 이어가던 엄마 ‘에블린’은
살아남기 위해 새로운 은신처를 찾아 집 밖을 나서지만,
텅 빈 고요함으로 가득한 바깥은 더 큰 위험이 도사리고 있는데...', 1, 3758, 8.12, 'Y', 'buy', 1500, 2, 180);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '그녀가 죽었다', 2024, 102, 1080, '
“나쁜 짓은 절대 안 해요. 그냥 보기만 하는 거예요.” 고객이 맡긴 열쇠로 그 집에 들어가 남의 삶을 훔쳐보는 취미를 지닌 공인중개사 ‘구정태’. 편의점 소시지를 먹으며 비건 샐러드 사진을 포스팅하는 SNS 인플루언서 ‘한소라’에게 흥미를 느끼고 관찰하기 시작한다. “관찰 152일째, 그녀가… 죽었습니다.” 급기야 ‘한소라’의 집까지 드나들던 ‘구정태’는 어느 날, 그녀가 소파에 죽은 채 늘어져 있는 모습을 발견하게 된다. 그 후 그가 ‘한소라’ 집에 들어간 것을 알고 있는 누군가가 협박을 시작하고, 사건을 맡은 강력반 형사 ‘오영주’의 수사망이 그를 향해 좁혀온다. 스스로 범인을 찾아야 하는 ‘구정태’는 ‘한소라’의 SNS를 통해 주변 인물들을 뒤지며 진범을 찾아 나서는데…',
        0, 3922, 8.28, 'Y', 'rent', 7700, 7, 59);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '파묘', 2024, 134, 1080, '
미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.',
        1, 5181, 7.84, 'Y', 'rent', 5000, 7, 260);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '귀공자', 2023, 118, 1080,
        '“난 단 한번도 타겟을 놓쳐 본 적이 없거든” 필리핀에서 불법 경기장을 전전하며 병든 어머니와 살아가는 복싱 선수 ‘마르코’. 어머니의 수술비 마련을 위해 평생 본 적 없는 아버지를 만나러 한국으로 향하던 그의 앞에 정체불명의 남자 ‘귀공자’가 나타나 그를 추격하기 시작한다. ‘마르코’ 주위를 쑥대밭으로 만들며 숨통을 조여오는 ‘귀공자’를 필두로, ‘마르코’를 집요하게 추격하는 재벌 2세 ‘한이사’, 필리핀에 이어 한국에서 우연히 ‘마르코’와 재회한 미스터리한 인물 ‘윤주’까지. 각기 다른 목적을 가진 이들은 단 하나의 타겟을 쫓아 모여들고, 그 무엇도 예측할 수 없는 혼란과 광기 속 ‘마르코’는 충격적인 진실을 마주하게 되는데… 단 하나의 타겟, 광기의 추격이 시작된다!',
        1, 4588, 8.57, 'Y', 'rent', 1540, 7, 50);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '퍼펙트 블루', 2004, 81, 480,
        '인기절정의 아이돌 그룹 ‘챰’의 야외 콘서트장. 아이돌 그룹의 숙명인지 챰도 슬슬 해산해야 할 것 같다는 말들이 팬들 사이에서 은밀히 돌고있다. 콘서트가 클라이막스를 향할 때, 리더격인 미마가 갑자기 독립선언을 한다. 미마는 팬들 사이에선 미마린 이라 불리우는 가장 인기있는 아이돌 스타다. 미마는 화려한 여배우에 대한 꿈을 품는다.
        챰을 탈퇴한 미마의 첫 일은 TV드라마 ‘더블 바인드’에 출연하는 것. 아이돌 가수였긴해도 연기경험은 적은 그녀에게 주어진 대사는 단 한마디. 미마를 잘 팔려고 노력하는 사무소 대표인 타도코로는 회사의 방침에 반대하는 담당 매니저 루미와 갈등을 겪는다. 마침 촬영 견학을 온 각본가 시부야를 본 타도코로는 미마는 이제 아이돌이 아니라며 어떤 것이든 시켜달라고 부탁한다. 그 때 한통의 팬레터가 전해진다. 미마대신 타도코로가 편지를 뜯자 갑자기 폭발음이 터진다. 불미스런 사건은 이렇게 시작된다.
        타도코로의 노력으로 점점 출연씬이 많아지는 미마. 하지만 그녀가 넘어야 할 산은 많다. 드라마에서 강간 씬을 연기하고, 거기에 맞춰 누드 사진도 공개한다. 여배우로서 지명도는 점점 높아가지만, 주변의 급격한 변화에 방황하는 미마. 그런 와중에 미마의 일과 관련된 사람들이 하나둘 살해되기 시작한다. 각본가 시부야, 카메라맨 무라노. 그리고 팬으로부터 배신자라는 메시지가 속속 도착한다…
        살인사건과 대담한 노출연기로 인기드라마가 된 ‘더블 바인드’에서 광기로 살인을 저지르고 다니는 소녀 역을 연기하는 미마는 현실과 허구의 세계가 교차되며 혼란을 겪는다. 그런 어느날 그녀 앞에 또 하나의 미마가 나타난다. 그것은 잊고 있었던 또 하나의 자신, 아이돌 가수 시절의 미마였다. 미마는 미쳐버린 것일까? 아니면 꿈일까? 연속살인 범인은 자신인 것일까? 미마는 점점 정체성을 잃게 되는데... 과연 그녀가 본 또 하나의 미마는 누구일까?',
        1, 700, 8.75, 'Y', 'rent', 1000, 7, 100);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '날씨의 아이', 2019, 112, 1080, '
비가 그치지 않던 어느 여름날,
가출 소년 ‘호다카’는 수상한 잡지사에 취직하게 되고
비밀스러운 소녀 ‘히나’를 우연히 만난다.

“지금부터 하늘이 맑아질 거야”

그녀의 기도에 거짓말 같이 빗줄기는 멈추고,
사람들의 얼굴에 환한 빛이 내려온다.

“신기해, 날씨 하나에 사람들의 감정이 이렇게나 움직이다니”

하지만, 맑음 뒤 흐림이 찾아오듯
두 사람은 엄청난 세계의 비밀을 마주하게 되는데…

흐리기만 했던 세상이 빛나기 시작했고, 그 끝에는 네가 있었다.', 1, 4393, 8, 'Y', 'buy', 1400, 0, 150);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '소울메이트', 2023, 124, 1080,
        '1998년, 처음 만났다. 2004년, 첫사랑이 생겼다. 2010년, 각자 어른이 되어간다. 2014년, 흔적을 따라간다. 지금, 그리움을 그린다. 2023년 3월 15일, 당신의 소울메이트가 찾아옵니다.',
        0, 4833, 8.6, 'Y', 'rent', 1540, 7, 29);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '기쿠지로의 여름', 2002, 122, 1080,
        '모두가 기다리던 여름방학. 하지만 마사오는 전혀 즐겁지 않다. 할머니는 매일 일을 나가시느라 바쁘고 친구들은 가족들과 함께 바다나 시골로 놀러 가버려 외톨이가 되었기 때문. 어느 날 먼 곳에 돈을 벌러 가셨다는 엄마의 주소를 발견한 마사오. 그림 일기장과 방학숙제를 배낭에 넣고 엄마를 찾아 여행길에 오른다. 52세 철없는 어른과 9세 걱정많은 소년. 그들이 마침내 찾은 것은?!',
        0, 4751, 8.88, 'Y', 'buy', 1200, 0, 20);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '혹성탈출: 새로운 시대', 2024, 144, 1080,
        '인류의 시대는 끝났고, 세상의 주인이 바뀌었다! 진화한 유인원과 퇴화된 인간들이 살아가는 땅. 유인원 리더 `프록시무스`는 완전한 군림을 위해 인간들을 사냥하며 자신의 제국을 건설한다. 한편, 또 다른 유인원 `노아`는 우연히 숨겨진 과거의 이야기와 ‘시저’의 가르침을 듣게 되고, 의문의 한 인간 소녀와 함께 자유를 향한 여정을 시작하게 되는데…',
        1, 5304, 6.8, 'Y', 'buy', 10900, 1825, 58);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '엘리멘탈', 2023, 101, 1080,
        '불, 물, 공기, 흙 4개의 원소들이 살고 있는 ‘엘리멘트 시티’ 재치 있고 불처럼 열정 넘치는 ‘앰버’는 어느 날 우연히 유쾌하고 감성적이며 물 흐르듯 사는 ‘웨이드’를 만나 특별한 우정을 쌓으며, 지금껏 믿어온 모든 것들이 흔들리는 새로운 경험을 하게 되는데... 웰컴 투 ‘엘리멘트 시티’!',
        1, 3942, 9.34, 'Y', 'buy', 7150, 1825, 192);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '널 기다리며', 2016, 108, 1080, '
당신이 우리 아빠 죽였지?
15년 전, 내 눈 앞에서 아빠를 죽인 범인이 드디어 세상 밖으로 나왔다.

15년을 기다린 이유는 단 하나!
아빠를 죽인 범인을 쫓는 소녀 ‘희주’ 앞에 유사 패턴의 연쇄살인사건이 발생하고
15년을 기다린 희주의 계획은 전혀 예측하지 못한 새로운 국면을 맞이하게 되는데…

15년의 기다림, 7일간의 추적
그 놈을 잡기 위한 강렬한 추적이 시작된다!', 0, 4147, 7.58, 'Y', 'rent', 1540, 7, 60);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '밀수', 2023, 129, 1080,
        '열길 물속은 알아도 한길 사람 속은 모른다! 평화롭던 바닷가 마을 군천에 화학 공장이 들어서면서 하루아침에 일자리를 잃은 해녀들. 먹고 살기 위한 방법을 찾던 승부사 `춘자`(김혜수)는 바다 속에 던진 물건을 건져 올리기만 하면 큰돈을 벌 수 있다는 밀수의 세계를 알게 되고 해녀들의 리더 `진숙`(염정아)에게 솔깃한 제안을 한다. 위험한 일임을 알면서도 생계를 위해 과감히 결단을 내린 해녀 `진숙`은 전국구 밀수왕 `권 상사`를 만나게 되면서 확 커진 밀수판에 본격적으로 빠지게 된다. 그러던 어느 날, 일확천금을 얻을 수 있는 일생일대의 기회가 찾아오고 사람들은 서로를 속고 속이며 거대한 밀수판 속으로 휩쓸려 들어가기 시작하는데... 물길을 아는 자가 돈길의 주인이 된다!',
        0, 5028, 7.76, 'Y', 'rent', 2500, 7, 98);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '듄: 파트 2', 2024, 165, 1080, '
황제의 모략으로 멸문한 가문의 유일한 후계자 폴.(티모시 샬라메) 어머니 레이디 제시카(레베카 퍼거슨)와 간신히 목숨만 부지한 채 사막으로 도망친다. 그곳에서 만난 반란군들과 숨어 지내다 그들과 함께 황제의 모든 것을 파괴할 전투를 준비한다. 한편 반란군들의 기세가 높아질수록 불안해진 황제와 귀족 가문은 잔혹한 암살자 페이드 로타(오스틴 버틀러)를 보내 반란군을 몰살하려 하는데… 운명의 반격이 시작된다!',
        1, 6226, 9.03, 'Y', 'rent', 5500, 2, 64);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '악마와의 토크쇼', 2024, 92, 1080, '
<핼러윈 특집 생방송 ‘올빼미 쇼’> - 오늘의 큐시트 1부 출연자 - 영매 VS. 영능력자 사냥꾼 “기적의 사나이라 불리는 영매, 초자연 현상의 실체를 밝히는 마술사 출신 회의론자. 과연 진실은?” (*중간 광고 후 2부 시작*) 2부 출연자 - 악마에게 빙의된 소녀 & [악마와의 대화] 저술한 초심리학자 “사탄교회 집단자살에서 유일하게 살아남은 소녀, 악마에게 빙의됐다는 것이 사실인지 현장 검증!” 1977년 핼러윈 전날 밤, 시청률을 위해서라면 일단 틀고 보는 방송국 놈들 때문에 누구도 예상하지 못한 방송사고 발생! 그리고 마침내 미국 전역을 충격에 빠트렸던 그날 밤의 생방송 ‘악마와의 토크쇼’ 녹화영상이 최근에 발견됐는데… 47년간 숨겨진, 절대 생중계돼서는 안 될 최악의 토크쇼가 마침내 공개된다. 그동안 공개되지 않은 비하인드 영상과 함께!',
        0, 3584, 7.22, 'Y', 'rent', 5500, 7, 33);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '괴물', 2023, 126, 1080, '
“우리 동네에는 괴물이 산다” 싱글맘 사오리(안도 사쿠라)는 아들 미나토(쿠로카와 소야)의 행동에서 이상 기운을 감지한다. 용기를 내 찾아간 학교에서 상담을 진행한 날 이후 선생님과 학생들의 분위기가 심상치 않게 흐르기 시작하고. “괴물은 누구인가?” 한편 사오리는 친구들로부터 따돌림을 당하고 있는 미나토의 친구 요리(히이라기 히나타)의 존재를 알게 되고 자신이 아는 아들의 모습과 사람들이 아는 아들의 모습이 다르다는 사실을 어렴풋이 깨닫는데… 태풍이 몰아치던 어느 날, 아무도 몰랐던 진실이 드러난다.',
        0, 4813, 9.03, 'Y', 'rent', 2500, 7, 150);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '시시콜콜한 이야기', 2017, 32, 1080, '
감독지망생 도환은 지난 연애로 고통받고 있는데, 프리랜서 모임에 나갔다가 이상하게 매력적인 은하를 알게 된다. 그녀의 도움으로 그는 지난 연애의 문제점을 알게 되고, 그의 시나리오 또한 해결책을 찾게 된다. 은하와 도환은 전화와 문자로 계속 가까워진다. 도환이 그녀에게 호감을 갖게 되지만, 그는 또 다시 상처받을까 두렵다.

[제16회 미쟝센 단편영화제]', 0, 1260, 9.2, 'Y', 'rent', 500, 7, 12);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '타임 패러독스', 2015, 97, 1080, '뉴욕을 초토화시킨 폭파 사건으로 대규모 사상자가 발생한다. 용의자 피즐 폭파범을 잡기 위해 범죄 예방 본부는 시간여행을 할 수 있는 템포럴 요원을 투입한다.

단서1. 템포럴 요원은 피즐 폭파범을 막다가 얼굴을 다쳐 이식수술을 한다.
단서2. 템포럴 요원은 바텐더로 위장 취업해 존을 만난다.
단서3. 존은, 고아원에서 자라나 우주비행사를 꿈꾸다가 의문의 남자를 만나 아이를 낳고 인생을 망친 소녀 제인에 대한 이야기를 한다.
단서4. 존은 제인과 깊은 관련이 있다.
단서5. 템포럴 요원은 존을 제인이 의문의 남자를 만나기 바로 직전으로 데리고 간다.
단서6. 템포럴 요원은 존과 깊은 관련이 있다.

이제부터의 이야기를 당신은 상상도 못할 것이다!', 0, 3758, 8.26, 'Y', 'rent', 1540, 7, 24);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '설계자', 2024, 99, 1080, '
“정말 우연이라고 생각해요?” 의뢰받은 청부 살인을 사고사로 조작하는 설계자 ‘영일’(강동원) 그의 설계를 통해 우연한 사고로 조작된 죽음들이 실은 철저하게 계획된 살인이라는 것을 아무도 알지 못한다. 최근의 타겟 역시 아무 증거 없이 완벽하게 처리한 ‘영일’에게 새로운 의뢰가 들어온다. 이번 타겟은 모든 언론과 세상이 주목하고 있는 유력 인사. 작은 틈이라도 생기면 자신의 정체가 발각될 수 있는 위험한 의뢰지만 ‘영일’은 그의 팀원인 ‘재키’(이미숙), ‘월천’(이현욱), ‘점만’(탕준상)과 함께 이를 맡기로 결심한다. 철저한 설계와 사전 준비를 거쳐 마침내 실행에 옮기는 순간 ‘영일’의 계획에 예기치 못한 변수가 발생하는데...! 사고인가 살인인가 그의 실체가 드러나기 시작했다!',
        0, 3799, 4.03, 'Y', 'rent', 5500, 7, 2);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '마녀(魔女) Part2. The Other One', 2022, 137, 1080, '
’자윤’이 사라진 뒤,
정체불명의 집단의 무차별 습격으로 마녀 프로젝트가 진행되고 있는 ‘아크’가 초토화된다.
그곳에서 홀로 살아남은 ‘소녀’는 생애 처음 세상 밖으로 발을 내딛고 우연히 만난 ‘경희’의 도움으로 농장에서 지내며 따뜻한 일상에 적응해간다.
한편, ‘소녀’가 망실되자 행방을 쫓는 책임자 ‘장’과 마녀 프로젝트의 창시자 ‘백총괄’의 지령을 받고 제거에 나선 본사 요원 ‘조현’, ‘경희’의 농장 소유권을 노리는 조직의 보스 ‘용두’와 상해에서 온 의문의 4인방까지 각기 다른 목적을 지닌 세력이 하나 둘 모여들기 시작하면서 ‘소녀’ 안에 숨겨진 본성이 깨어나는데…

모든 것의 시작,
더욱 거대하고 강력해진 마녀가 온다.', 0, 5345, 6.59, 'Y', 'rent', 1540, 7, 21);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '퓨리오사: 매드맥스 사가', 2024, 148, 1080,
        '문명 붕괴 45년 후, 황폐해진 세상 속 누구에게도 알려지지 않은 풍요가 가득한 ‘녹색의 땅’에서 자란 ‘퓨리오사’(안야 테일러-조이)는 바이커 군단의 폭군 ‘디멘투스’(크리스 헴스워스)의 손에 모든 것을 잃고 만다. 가족도 행복도 모두 빼앗기고 세상에 홀로 내던져진 ‘퓨리오사’는 반드시 고향으로 돌아가겠다는 어머니와의 약속을 지키기 위해 인생 전부를 건 복수를 시작하는데... ‘매드맥스’ 시리즈의 전설적인 사령관 ‘퓨리오사’의 대서사시 마침내 분노가 깨어난다!',
        1, 5478, 9.19, 'Y', 'buy', 10900, 1825, 19);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '해리 포터와 마법사의 돌(1편)', 2001, 152, 1080, '해리 포터(다니엘 래드클리프 분)는 위압적인 버논 숙부(리챠드 그리피스 분)와 냉담한 이모 페투니아 (피오나 쇼 분), 욕심 많고 버릇없는 사촌 더즐리(해리 멜링 분) 밑에서 갖은 구박을 견디며 계단 밑 벽장에서 생활한다. 이모네 식구들 역시 해리와의 동거가 불편하기는 마찬가지. 이모 페투니아에겐 해리가 이상한(?) 언니 부부에 관한 기억을 떠올리게 만드는 달갑지 않은 존재다. 11살 생일이 며칠 앞으로 다가왔지만 한번도 생일파티를 치르거나 제대로 된 생일선물을 받아 본 적이 없는 해리로서는 특별히 신날 것도 기대 할 것도 없다. 11살 생일을 며칠 앞둔 어느 날 해리에게 초록색 잉크로 쓰여진 한 통의 편지가 배달된다. 그 편지의 내용은 다름 아닌 해리의 11살 생일을 맞이하여 전설적인“호그와트 마법학교”에서 보낸 입학초대장이었다. 그리고 해리의 생일을 축하하러 온 거인 해그리드는 해리가 모르고 있었던 해리의 진정한 정체를 알려주는데. 그것은 바로 해리가 굉장한 능력을 지닌 마법사라는 것!
해리는 해그리드의 지시대로 자신을 구박하던 이모네 집을 주저없이 떠나 호그와트행(行)을 택한다. 런던의 킹스크로스 역에 있는 비밀의 9와 3/4 승장장에서 호그와트 특급열차를 탄 해리는 열차 안에서 같은 호그와트 마법학교 입학생인 헤르미온느 그레인저(엠마 왓슨 분)와 론 위즐리 (루퍼트 그린트 분)를 만나 친구가 된다. 이들과 함께 호그와트에 입학한 해리는, 놀라운 모험의 세계를 경험하며 갖가지 신기한 마법들을 배워 나간다. 또한 빗자루를 타고 공중을 날아다니며 경기하는 스릴 만점의 퀴디치 게임에서 스타로 탄생하게 되며, 용․머리가 셋 달린 개․유니콘․켄타우루스․히포그리프(말 몸에 독수리 머리와 날개를 가진 괴물)등 신비한 동물들과 마주치며 모험을 즐긴다. 그러던 어느 날 해리는 호그와트 지하실에 `영원한 생을 가져다주는 마법사의 돌`이 비밀리에 보관되어 있다는 것을 알게되고, 해리의 부모님을 죽인 볼드모트가 그 돌을 노린다는 사실도 알게 된다. 볼드모트는 바로 해리를 죽이려다 실패하고 이마에 번개모양의 흉터를 남긴 장본인이다. 해리는 볼드모트로부터 마법의 돌과 호그와트 마법학교를 지키기 위해 필사의 노력을 하는데...',
        1, 5939, 9.37, 'Y', 'rent', 1300, 2, 13);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '스즈메의 문단속: 다녀왔어', 2024, 122, 1080, '큐슈의 작은 마을에서 살고 있는 소녀 ‘스즈메’는
어느 날, 여행을 하며 ‘문’을 찾고 있는 한 청년을 만난다.
그의 뒤를 쫓아간 소녀는 산속 폐허에서 덩그러니 남겨진 낡은 문을 발견한다.
무언가에 이끌린 듯 ‘스즈메’는 문으로 손을 뻗는데…

2024년, ‘문단속을 위한 여행’이 다시 시작된다!', 1, 4659, 7.85, 'Y', 'rent', 2750, 7, 12);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '원피스 필름 레드', 2022, 115, 1080, '
오직 목소리 하나로 전 세계를 사로잡은 디바 ‘우타’.
그녀가 모습을 드러내는 첫 라이브 콘서트가 음악의 섬 ‘엘레지아’에서 열리고
‘루피’가 이끄는 밀짚모자 해적단과 함께 수많은 ‘우타’ 팬들로 공연장은 가득 찬다.
그리고 이 콘서트를 둘러싼 해적들과 해군들의 수상한 움직임이 시작되는데…

드디어 전세계가 애타게 기다리던 ‘우타’의 등장과 함께 노래가 울려 퍼지고,
그녀가 ‘샹크스의 딸’이라는 충격적인 사실이 드러난다.

‘루피’, ‘우타’, ‘샹크스’, 세 사람의 과거가 그녀의 노랫소리와 함께 밝혀진다!', 1, 4485, 6.66, 'Y', 'rent', 1540, 7, 7);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '웡카', 2024, 116, 1080, '
세상에서 가장 달콤한 여정 좋은 일은 모두 꿈에서부터 시작된다! 마법사이자 초콜릿 메이커 ‘윌리 웡카’의 꿈은 디저트의 성지, ‘달콤 백화점’에 자신만의 초콜릿 가게를 여는 것. 가진 것이라고는 낡은 모자 가득한 꿈과 단돈 12소버린 뿐이지만 특별한 마법의 초콜릿으로 사람들을 사로잡을 자신이 있다. 하지만 먹을 것도, 잠잘 곳도, 의지할 사람도 없는 상황 속에서 낡은 여인숙에 머물게 된 ‘웡카’는 ‘스크러빗 부인’과 ‘블리처’의 계략에 빠져 눈더미처럼 불어난 숙박비로 인해 순식간에 빚더미에 오른다. 게다가 밤마다 초콜릿을 훔쳐가는 작은 도둑 ‘움파 룸파’의 등장과 ‘달콤 백화점’을 독점한 초콜릿 카르텔의 강력한 견제까지. 세계 최고의 초콜릿 메이커가 되는 길은 험난하기만 한데…',
        1, 4383, 8.18, 'Y', 'rent', 2750, 2, 21);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '명탐정 코난 VS 괴도 키드', 2024, 80, 1080,
        '“괴도 1412호, 이름하여 괴도 KID” 암호가 섞인 예고장이 보내진 그곳에는 월하의 마술사, 괴도 키드가 나타난다. 세상을 떠들썩하게 만들며 인기를 얻고 있는 그의 정체는 에코다 고등학교 2학년 쿠로바 카이토. 수수께끼의 조직에 살해당한 세계적인 마술사였던 아버지 쿠로바 도이치의 뒤를 이어 사건의 진상을 파헤치기 위해 2대 ‘괴도 키드’가 되어 도이치가 쫓던 ‘빅 주얼’과 조직의 정체를 향해 다가간다. 이번에 그가 노리는 ‘빅 주얼’은 ‘대해의 기적’이자 ‘블루 원더’라고 불리는 전설의 아쿠아마린. 소노코의 친척이자 키드 체포에 열을 올리고 있는 스즈키 지로키치가 그에게 먼저 도전장을 내밀고, 언제나 그랬듯 괴도 키드는 모두의 예상을 뒤엎고 신출귀몰한 방법으로 나타나는데… 이를 막기 위해 불가능을 모르는 명탐정, 코난의 명추리가 펼쳐진다! 사상 최대의 라이벌 탄생! 화려한 괴도와 그를 쫓는 명탐정 모든 것의 시작은 여기서부터! 월하의 마술사 괴도 키드의 탄생과 영원한 최대의 라이벌, 코난-쿠도 신이치와의 첫 대결이 시작된다!',
        2, 3133, 6.56, 'Y', 'rent', 5500, 7, 3);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '정직한 후보2', 2022, 106, 1080, '
서울시장 선거에서 떨어지며 쫄딱 망한 백수가 된 ‘주상숙’은
우연히 바다에 빠진 한 청년을 구한 일이 뉴스를 타며
고향에서 화려한 복귀의 기회를 잡는다.

하지만 정직하면 할수록 바닥으로 곤두박질치는 지지율 앞에
다시 뻥쟁이로 돌아간 그 순간,
‘주상숙’에게 운명처럼 찾아온 ‘진실의 주둥이’!

이번엔 ‘주상숙’의 비서실장 ‘박희철’까지 주둥이가 쌍으로 털리게 되는데...

재미도 2배! 웃음도 2배!
주둥이 대폭발 코미디가 돌아왔다!', 0, 4157, 6.05, 'Y', 'rent', 1540, 7, 23);


INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '콰이어트 플레이스: 첫째 날', 2024, 99, 1080,
        '쉿, 살고 싶다면 절대 소리내지 말 것! 평균 소음 90 데시벨을 자랑하는 미국 최대도시 뉴욕, 고양이 ‘프로도’와 함께 간만에 외출을 나온 ‘사미라’는 공연을 보고 돌아가던 중 하늘에서 떨어져 내리는 섬광을 목격하고 곧 사람들을 닥치는 대로 공격하는 정체불명 괴생명체의 출현에 충격에 휩싸인다. 아수라장이 된 뉴욕 도심에 ‘절대 소리 내지 말라’는 안내방송이 울려퍼지는 가운데 맨해튼의 모든 다리가 폭격으로 끊어지고, 사람들은 온갖 위협이 도사리는 도시에 고립되고 만다. 살아남기 위해 홀로 사투를 벌이던 `사미라`는 우연히 또 다른 생존자 ‘에릭’을 만나고 두 사람은 괴생명체를 피해 지하철역부터 시가지, 할렘까지 숨죽인 여정을 이어 나가는데…',
        0, 3635, 5.07, 'Y', 'rent', 11000, 2, 21);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '남은 인생 10년', 2023, 125, 1080,
        '스무 살이 되던 해, 수 만명 중 1명이 걸리는 난치병으로 10년의 삶을 선고받은 ‘마츠리’는 삶의 의지를 잃은 ‘카즈토’를 만나 사랑에 빠진다. 처음 만난 봄, 즐거운 여름, 아름답던 가을, 깊어진 겨울까지 하루하루 애틋하게 사랑한 두 사람 하지만 쌓이는 추억만큼 줄어드는 시간 앞에 결국 ‘마츠리’는 ‘카즈토’를 떠나기로 결심하는데…',
        0, 4854, 7.66, 'Y', 'rent', 2750, 7, 24);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '반도', 2020, 115, 1080, '
[전대미문의 재난 그 후 4년
폐허의 땅으로 다시 들어간다!]

4년 전, 나라 전체를 휩쓸어버린 전대미문의 재난에서 가까스로 탈출했던 ‘정석’(강동원).
바깥세상으로부터 철저히 고립된 반도에 다시 들어가야 하는 피할 수 없는 제안을 받는다.

제한 시간 내에 지정된 트럭을 확보해 반도를 빠져 나와야 하는 미션을 수행하던 중
인간성을 상실한 631부대와 4년 전보다 더욱 거세진 대규모 좀비 무리가 정석 일행을 습격한다.

절체절명의 순간,
폐허가 된 땅에서 살아남은 ‘민정’(이정현) 가족의 도움으로 위기를 가까스로 모면하고
이들과 함께 반도를 탈출할 수 있는 마지막 기회를 잡기로 한다.

되돌아온 자, 살아남은 자 그리고 미쳐버린 자
필사의 사투가 시작된다!', 0, 4506, 5.62, 'Y', 'rent', 1000, 7, 12);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '데드풀', 2016, 108, 1080, '
전직 특수부대 출신의 용병 ‘웨이드 윌슨(라이언 레놀즈)’은 암 치료를 위한 비밀 실험에 참여 후, 강력한 힐링팩터를 지닌 슈퍼히어로 ‘데드풀’로 거듭난다. 탁월한 무술실력과 거침없는 유머감각을 지녔지만 흉측하게 일그러진 얼굴을 갖게 된 데드풀은 자신의 삶을 완전히 망가뜨린 놈들을 찾아 뒤쫓기 시작하는데…',
        0, 4219, 8.21, 'Y', 'buy', 5500, 1825, 1);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '스즈메의 문단속', 2023, 122, 1080, '큐슈의 작은 마을에서 살고 있는 소녀 ‘스즈메’는
어느 날, 여행을 하며 ‘문’을 찾고 있는 한 청년을 만난다.
그의 뒤를 쫓아간 소녀는 산속 폐허에서 덩그러니 남겨진 낡은 문을 발견한다.
무언가에 이끌린 듯 ‘스즈메’는 문으로 손을 뻗는데…

2023년, ‘문단속을 위한 여행’이 시작된다!', 1, 4741, 8.13, 'Y', 'rent', 2750, 7, 31);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '코코', 2018, 105, 1080, '
뮤지션을 꿈꾸는 소년 미구엘은 전설적인 가수 에르네스토의 기타에 손을 댔다 ‘죽은 자들의 세상’에 들어가게 된다.
그리고 그곳에서 만난 의문의 사나이 헥터와 함께 상상조차 못했던 모험을 시작하게 되는데…
과연 ‘죽은 자들의 세상’에 숨겨진 비밀은? 그리고 미구엘은 무사히 현실로 돌아올 수 있을까?',
        1, 4086, 9.33, 'Y', 'buy', 7150, 1825, 15);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '범죄도시3', 2023, 105, 1080, '
대체불가 괴물형사 마석도, 서울 광수대로 발탁! 베트남 납치 살해범 검거 후 7년 뒤, ‘마석도’(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다. 사건 조사 중, ‘마석도’는 신종 마약 사건이 연루되었음을 알게 되고 수사를 확대한다. 한편, 마약 사건의 배후인 `주성철`(이준혁)은 계속해서 판을 키워가고 약을 유통하던 일본 조직과 `리키`(아오키 무네타카)까지 한국에 들어오며 사건의 규모는 점점 더 커져가는데... 나쁜 놈들 잡는 데 이유 없고 제한 없다. 커진 판도 시원하게 싹 쓸어버린다!',
        1, 4096, 7.56, 'Y', 'rent', 2750, 7, 8);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '카메라를 멈추면 안 돼!', 2018, 96, 1080, '음산한 기운의 창고 안, 좀비 영화를 찍는 촬영 현장.
원하는 결과물이 나오지 않자 격해진 감독과 배우들은 쉬는 시간을 갖는다.
그 순간, 어디선가 등장한 ‘진짜’ 좀비 떼들이
사람들을 하나둘씩 죽이기 시작하고 현장은 아수라장이 되는데!
이 모든 사건의 전말이 궁금한 당신,
카메라를 멈추면 안 돼!', 0, 3748, 8.58, 'Y', 'buy', 1200, 1825, 3);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '30일', 2023, 119, 1080,
        '“완벽한 저에게 신은 저 여자를 던지셨죠” 지성과 외모 그리고 찌질함까지 타고난, `정열`(강하늘). “모기 같은 존재죠. 존재의 이유를 모르겠는?” 능력과 커리어 그리고 똘기까지 타고난, `나라`(정소민). 영화처럼 만나 영화같은 사랑을 했지만 서로의 찌질함과 똘기를 견디다 못해 마침내 완벽한 남남이 되기로 한다. 그러나! 완벽한 이별을 딱 D-30 앞둔 이들에게 찾아온 것은... 동반기억상실?',
        0, 4649, 8.4, 'Y', 'rent', 2750, 7, 15);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '명탐정코난: 흑철의 어영', 2023, 110, 1080,
        '인터폴의 최첨단 정보 해양 시설인 ‘퍼시픽 부이’. 일본과 유럽의 CCTV 정보를 확인할 수 있을 뿐 아니라, 장기 수배범이나 유괴당한 피해자를 전 세계에서 찾아낼 수 있는 ‘전연령 인식’이라는 획기적인 AI 기술을 개발 중이다. 그러던 중 독일에서 검은 조직에 의해 유로폴 직원이 살해되는 사건이 발생하고 뒤를 이어 ‘전연령 인식’의 핵심 기술자가 납치된다. 나이와 상관없이 안면 인식이 가능한 기술이 검은 조직의 손에 들어가면 독약 APTX4869(아포톡신 4869) 개발 후 사망한 것으로 알려진 코드명 ‘셰리’이자 하이바라 아이도 위험하게 되는데! 코난, FBI, CIA, 공안 경찰이 합세, 하이바라 아이와 함께 전 세계를 위험에 빠지게 할 절체절명의 오션 배틀 로열이 시작된다!',
        2, 4280, 9.27, 'Y', 'rent', 2750, 7, 20);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '가여운 것들', 2024, 141, 1080,
        '천재적이지만 특이한 과학자 갓윈 백스터(윌렘 대포)에 의해 새롭게 되살아난 벨라 백스터(엠마 스톤). 갓윈의 보호를 받으며 성장하던 벨라는 날이 갈수록 세상에 대한 호기심과 새로운 경험에 대한 갈망이 넘쳐난다. 아름다운 벨라에게 반한 짓궂고 불손한 바람둥이 변호사 덩컨 웨더번(마크 러팔로)이 더 넓은 세계를 탐험하자는 제안을 하자, 벨라는 새로운 경험에 대한 갈망으로 대륙을 횡단하는 여행을 떠나고 처음 보는 광경과 새롭게 만난 사람들을 통해 놀라운 변화를 겪게 되는데…. 세상에 대한 경이로움과 아름다움, 놀라운 반전과 유머로 가득한 벨라의 여정이 이제 시작된다.',
        1, 5396, 7.6, 'Y', 'rent', 5500, 2, 4);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '인간중독', 2014, 132, 1080, '모두의 신임을 받으며 승승장구 중인 교육대장 ‘김진평(송승헌)’과
남편을 장군으로 만들려는 야망을 가진 ‘진평’의 아내 ‘이숙진(조여정)’.
어느 날, ‘김진평’의 부하로 충성을 맹세하는 ‘경우진(온주완)’과 그의 아내 ‘종가흔(임지연)’이 이사를 온다.
‘진평’은 ‘우진’의 아내 ‘가흔’에게 첫 만남부터 강렬한 떨림을 느끼는데…

누구에게도 말할 수 없는 비밀을 간직한 여인 ‘가흔’과
그녀에게 걷잡을 수 없이 빠져드는 ‘진평’.
만나지 말았어야 할 두 사람,
최상류층 군관사 안, 누구도 알아서는 안 될 치명적 스캔들이 시작된다!

"당신을 안 보면 숨을 쉴 수가 없어“
"왜 이렇게 가슴이 뛰죠?"', 0, 5140, 6.74, 'Y', 'rent', 1540, 7, 24);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '용감한 시민', 2023, 112, 1080,
        '불의는 못 본 척, 성질은 없는 척, 주먹은 약한 척 먹고 살기 위해 조용히 살아 온 기간제 교사 `소시민’. 법도 경찰도 무서울 것 하나 없는 안하무인 절대권력 `한수강`의 선을 넘는 행동을 목격하게 된다. 그의 계속되는 악행을 도저히 참을 수 없었던 그녀, 정체를 숨긴 채 통쾌한 한 방을 날리기로 마음 먹는데… "선은 네가 먼저 넘었다 말이 안 통하면 혼나야지!"',
        0, 4383, 6.89, 'Y', 'rent', 2750, 7, 1);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 3, 1, '매드맥스: 분노의 도로', 2015, 120, 1080, '핵전쟁으로 멸망한 22세기. 얼마 남지 않은 물과 기름을 차지한 독재자 임모탄 조가 살아남은 인류를 지배한다.
한편, 아내와 딸을 잃고 살아남기 위해 사막을 떠돌던 맥스(톰 하디)는
임모탄의 부하들에게 납치되어 노예로 끌려가고, 폭정에 반발한 사령관 퓨리오사(샤를리즈 테론)는
인류 생존의 열쇠를 쥔 임모탄의 여인들을 탈취해 분노의 도로로 폭주한다.
이에 임모탄의 전사들과 신인류 눅스(니콜라스 홀트)는 맥스를 이끌고 퓨리오사의 뒤를 쫓는데...
끝내주는 날, 끝내주는 액션이 폭렬한다!', 1, 4680, 8.84, 'Y', 'rent', 1300, 2, 23);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 2, 1, '서울의 봄', 2023, 142, 1080,
        '1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데… 목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!',
        0, 5468, 9.53, 'Y', 'rent', 2750, 7, 22);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 5, 1, '원더', 2017, 113, 1080,
        '누구보다 위트 있고 호기심 많은 매력 부자 ‘어기`(제이콥 트렘블레이).
        하지만 남들과 다른 외모로 태어난 ‘어기`는 모두가 좋아하는 크리스마스 대신 얼굴을 감출 수 있는 할로윈을 더 좋아한다.
        10살이 된 아들에게 더 큰 세상을 보여주고 싶었던 엄마 ‘이사벨’(줄리아 로버츠)과 아빠 ‘네이트’(오웬 윌슨)는
        ‘어기`를 학교에 보낼 준비를 하고, 동생에게 모든 것을 양보해왔지만
        누구보다 그를 사랑하는 누나 ‘비아`도 ‘어기`의 첫걸음을 응원해준다.

        그렇게 가족이 세상의 전부였던 ‘어기`는 처음으로 헬멧을 벗고 낯선 세상에 용감하게 첫발을 내딛지만
        첫날부터 ‘남다른 외모`로 화제의 주인공이 되고, 사람들의 시선에 큰 상처를 받는다.
        그러나 ‘어기`는 27번의 성형(?)수술을 견뎌낸 긍정적인 성격으로 다시 한번 용기를 내고,
        주변 사람들도 하나둘 변하기 시작하는데...', 0, 4413, 9.53, 'Y', 'buy', 1540, 7, 17);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '로건(부가영상 제공)', 2017, 137, 1080, '가까운 미래, 능력을 잃어가는 ‘로건(울버린)’은
멕시코 국경 근처의 한 은신처에서 병든 ‘프로페서 X’를 돌보며 살아간다.
세상으로부터 자신을 숨기며 살아가고자 했던 ‘로건’은 정체불명의 집단에게 쫓기는 돌연변이 소녀
‘로라’를 만나게 되고, 그녀를 지키기 위해 모든 것을 건 대결을 펼치게 되는데…', 1, 5345, 9.08, 'Y', 'buy', 5500, 1825, 15);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '덫: 치명적인 유혹', 2015, 107, 720,
        '시나리오 집필을 위해 허름한 산골 민박을 찾은 작가 `정민`, 앳된 얼굴에 관능적인 매력을 가진 소녀 `유미`를 만나고 그녀에게서 눈을 떼지 못한다. 추운 겨울밤, 창고 안 소녀의 나신을 훔쳐보던 정민은 타오르는 욕망을 애써 누른 채 서울로 돌아온다.
        하지만, 자신을 유혹하는 듯한 유미의 눈빛을 잊지 못하고 다시 돌아간 그는 한밤중 방으로 찾아온 그녀와 뜨거운 정사를 나누지만, 도무지 현실인지 꿈인지 알 수 없는 혼란스러운 상황과 누구도 믿을 수 없는 패닉에서 벗어나지 못하는데…

        9월 17일, 벗어날 수 없는 치명적인 유혹이 찾아온다', 0, 2509, 8.04, 'Y', 'buy', 1000, 1825, 13);

INSERT INTO tblMovie
VALUES (seq_tblMovie.nextVal, 4, 1, '미드소마(감독판)', 2019, 170, 1080, '90년에 한 번, 9일 동안 열리는 미드소마에 초대된 6명의 친구들

선택된 자만이 즐길 수 있는 충격과 공포의 축제가 다시 시작된다', 0, 6656, 6.09, 'Y', 'buy', 1400, 1825, 9);

-- ******************* 감독 테이블 *******************
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '허명행', '범죄도시4');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '허명행', '범죄도시4');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '박규태', '라임크라임');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '피트 닥터', '소울');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '신카이 마코토', '스즈메의 문단속');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '존 크래신스키', '이프: 상상의 친구');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '김세휘', '그녀가 죽었다');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '장재현', '검은 사제들');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '박훈정', '마녀');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '곤 사토시', '파프리카');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '신카이 마코토', '언어의 정원');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '민용근', '어떤시선');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '기타노 다케시', '공각기동대:고스트 인 더 쉘');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '웨스 볼', '메이즈 러너:데스 큐어');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '피터 손', '버즈 라이트이어(패키지: 자막판+더빙판+코멘터리+부가영상)');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '모홍진', '이공삼칠');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '류승완', '모가디슈');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '드니 발뇌브', '듄');

--감독이 2명
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '캐머런 카이네스', '악마와의 토크쇼');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '콜린 카이네스', '악마와의 토크쇼');
--------------------

insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '고레에다 히로카즈', '파비안느에 관한 진실');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '조용익', '시시콜콜한 이야기');

--감독2명
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '마이클 스피어리그', '직쏘');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '피터 스피어리그', '직쏘');
-----------------------

insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '이요섭', '저수지게임');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '박훈정', '귀공자');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '조지 밀러', '매드맥스:분노의 도로');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '크리스 콜럼버스', '픽셀');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '신카이 마코토', '스즈메의 문단속:다녀왔어');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '타나구치 고로', '[극장판]코드기아스:부활의 를르슈');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '폴 킹', '킹메이커');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '이시하라 슌스케', '명탐정 코난vs괴도 키드');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '장유정', '정직한 후보');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '마이클 사노스키', '피그');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '후지이 미치히토', '신문기자');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '연상호', '사이비');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '팀 밀러', '터미네이터:다크 페이트(부가영상 제공)');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '신카이 마코토', '언어의 정원');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '리 언크리치', '토이 스토리3(패키지상품:더빙판 추가증정');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '이상용', '범죄도시2');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '우에다 신이치로', '주식회사 스페셜액터스');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '남대중', '위대한 소원');


------감독2명
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '타치카와 유즈루', '블루 자이언트');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '류정혜', '명탐정 코난:할로윈의 신부');
----------

insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '지오르고스 란디모스', '더 페이버릿:여왕의 여자');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '김대우', '픽업 아티스트');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '박진표', '오늘의 연애');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '조지 밀러', '3000년의 기다림');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '김성수', '크리스마스 캐럴');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '스티븐 크보스키', '디어 에반 핸슨');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '제임스 맨골드', '포드 v 페라리');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '봉만대', '아티스트 봉만대');
insert into tbldirector (seq, name, majorWork)
values (seq_tbldirector.nextval, '아리 에스터', '미드소마');


-- ******************* 참여감독 테이블 *******************
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 1, 1);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 2, 2);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 3, 3);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 4, 4);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 5, 5);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 6, 6);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 7, 7);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 8, 8);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 9, 9);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 10, 10);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 11, 11);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 12, 12);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 13, 13);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 14, 14);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 15, 15);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 16, 16);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 17, 17);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 18, 18);

--감독이 2명
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 19, 19);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 20, 19);
---------

insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 21, 20);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 22, 21);

--감독이 2명
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 23, 22);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 24, 22);
-------

insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 19, 19);
insert into tblJoinDirector (seq, directorseq, movieseq)
values (seq_tblJoinDirector.nextval, 20, 19);


-- ******************* 배우/성우 테이블 *******************
----------------------------1
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마동석', '범죄도시2');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김무열', '보이스');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박지환', '범죄도시2');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이동휘', '어린 의뢰인');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이범수', '출국');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민재', '국제시장');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이지훈', '보통의 우주는 찬란함을 꿈꾸는가?');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김도건', '쎈놈');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김지훈', '은하수');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '현봉식', '세자매');

---------------------------2
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마동석', '범죄도시2');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김무열', '보이스');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박지환', '범죄도시2');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이동휘', '어린 의뢰인');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이범수', '출국');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민재', '국제시장');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이지훈', '보통의 우주는 찬란함을 꿈꾸는가?');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김도건', '쎈놈');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김지훈', '은하수');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '현봉식', '세자매');

----------------------------육사오
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '고경표', '헤어질 결심');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이이경', '웅남이');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '음문석', '파이프라인');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박세완', '인생은 아름다워');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이순원', '선데이리그');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '곽동연', '야구소녀');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민호', '카운트');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '류승수', '소풍');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윤병희', '그녀가 죽었다');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이준혁', '언더독');

------------------------------인사이드아웃
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '에이미 포엘러', '터키');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '필리스 스미스', '버터 러버');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '민디 캘링', '주먹왕 랄프');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '빌 헤이더', '앵그리 버드2:독수리왕국의 침공');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루이스 블랙', '아프칸 솔져스');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '케이틀린 디아스', '인사이드 아웃');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카일 맥라클란', '마오의 라스트 댄서');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다이안 레인', '트럼보');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '리처드 카인드', '앵그리스트맨');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '라레인 뉴언', '천재 소년 지미 뉴트론');

--5
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '가령', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이경태', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카미키 류노스케', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카미시라이시 모네', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나가사와 마사미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나리타 료', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '유우키 아오이', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이치하라 에츠코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '시마자키 노부나가', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이시카와 카이토', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '타니 카논', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '테라소마 마사키', '');

-- 6
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '에밀리 블런트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '킬리언 머피', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '밀리센트 시몬스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '노아 주프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '디몬 하운수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '웨인 듀발', '');

-- 7
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '변요한', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '신혜선', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이엘', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윤병희', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박예니', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '지현준', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '장성범', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '심달기', '');

-- 8
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '최민식', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김고은', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '유해진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이도현', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김재철', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민준', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김병오', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '전진기', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박정자', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박지일', '');

-- 9
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김선호', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '강태주', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김강우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '고아라', '');

-- 10
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이와오 준코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마츠모토 리카', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '츠지 신파치', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오쿠라 마사아키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '스티븐 블럼', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '존 라터 리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '스티브 벌렌', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다로 밤비', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '웬디 리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루비 마로우', '');

-- 11
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '심규혁', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김유림', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '최한', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '강은애', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이장원', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '손정아', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다이고 코타로', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '모리 나나', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오구리 슌', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '혼다 츠바사', '');

-- 12
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김다미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '전소니', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '변우석', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '장혜진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박충선', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '남윤수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김수형', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '류지안', '');

-- 13
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '기타노 다케시', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '세키구치 유스케', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '키시모토 가요코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다이케 요코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '요시유키 카즈코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '비트 키요시', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '그레이트 기다유', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이데 랏쿄', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마무라 네즈미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '호소카와 후미에', '');

-- 14
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오웬 티그', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '프레이아 앨런', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '케빈 두런드', '');

-- 15
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레아 루이스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마무두 아티', '');

-- 16
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '심은경', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윤제문', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김성오', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오태경', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정해균', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안재홍', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김원해', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정찬훈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '한서진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이갑선', '');

-- 17
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김혜수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '염정아', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조인성', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박정민', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김종수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '고민시', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김재화', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박준면', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박경혜', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '주보비', '');

-- 18
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '티모시 샬라메', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '젠데이아 콜먼', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레베카 퍼거슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조슈 브롤린', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오스틴 버틀러', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '플로렌스 퓨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '데이브 바티스타', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '크리스토퍼 월켄', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '스티븐 헨더슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레아 세이두', '');

-- 19
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '데이빗 다스트말치안', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '잉그리트 토렐리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '로라 고든', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조지나 헤이그', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '페이샬 바지', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이안 블리스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '리스 오테리', '');

-- 20
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안도 사쿠라', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '에이타', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '쿠로카와 소야', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '히이라기 히나타', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '타카하타 미츠키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카쿠타 아키히로', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나카무라 시도', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다나카 유코', '');

-- 21
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이수경', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엄태구', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김정남', '');

-- 22
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '에단 호크', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '노아 테일러', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '사라 스누크', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '크리스토퍼 커비', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마들린 웨스트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '프레야 스태포드', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '짐 노블로치', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엘리스 얀센', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '케이트 울프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '헤일리 부처', '');

-- 23
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '강동원', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이무생', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이미숙', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이현욱', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '탕준상', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김홍파', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김신록', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이동휘', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정은채', '');

-- 24
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '신시아', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박은빈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '서은수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '진구', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '성유빈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조민수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '차순배', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '저스틴 하비', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '변서윤', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '채원빈', '');

-- 25
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안야 테일러 조이', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '크리스 헴스워스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '톰 버크', '');

-- 26
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다니엘 래드클리프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루퍼트 그린트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엠마 왓슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '로비 콜트레인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '리처드 해리스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마이클 갠돈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '매기 스미스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '짐 브로드벤트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '데이빗 브래드리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '폴 프리먼', '');


-- 27
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다니엘 래드클리프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루퍼트 그린트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엠마 왓슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '로비 콜트레인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '리처드 해리스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '앨런 릭먼', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이안 하트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '톰 펠튼', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '매튜 루이스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '존 허트', '');

-- 28
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '타나카 마유미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이케다 슈이치', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나카이 카즈야', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오카무라 아케미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '야마구치 캇페이', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '히라타 히로아키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오오타니 이쿠에', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '야마구치 유리코', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '야오 카즈키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '쵸', '');

-- 29
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '티모시 샬라메', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '칼라 레인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '올리비아 콜맨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '톰 데이비스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '휴 그랜트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '샐리 호킨스', '');

-- 30
-- No data provided for this batch.

-- 31
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '라미란', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김무열', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윤경호', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '서현우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박진주', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김용림', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '신재휘', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '배해선', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '성열석', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이진희', '');

-- 32
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루피타 뇽', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조셉 퀸', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '디몬 하운수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '알렉스 울프', '');

-- 33
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '고마츠 나나', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '사카구치 켄타로', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마츠시게 유타카', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '쿠로키 하루', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '릴리 프랭키', '');

-- 34
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '강동원', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이정현', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이레', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '권해효', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민재', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '구교환', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김도윤', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이예원', '');

-- 35
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '라이언 레이놀즈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '모레나 바카린', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '에드 스크레인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '지나 카라노', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, 'T.J. 밀러', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '브리아나 힐데브란드', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '스테판 카피식', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카란 소니', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '테일러 힉슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레슬리 우감스', '');

-- 36
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '하라 나노카', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마츠무라 호쿠토', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '후카츠 에리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마츠모토 코시로', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '소메타니 쇼타', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이토 사이리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '하나세 코토네', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '하나자와 카나', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '카미키 류노스케', '');

-- 37
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안소니 곤잘레스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '가엘 가르시아 베르날', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '벤자민 브랫', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '알라나 우바치', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '아나 오펠리아 머기아', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레니 빅터', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '제이미 카밀', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다이아나 오텔리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '알폰소 아라우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '허버트 시구엔자', '');

-- 38
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마동석', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이준혁', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '아오키 무네타카', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이범수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김민재', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이지훈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김도건', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '고규필', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '전석호', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안세호', '');

-- 39
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '하마츠 타카유키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '아키야마 유즈키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나가야 카즈아키', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '슈하마 하루미', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마오', '');

-- 40
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '강하늘', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정소민', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조민수', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김선영', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '황세인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윤경호', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이상진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '원우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '송해나', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엄지윤', '');

-- 41
-- No data provided for this batch.

-- 42
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엠마 스톤', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마크 러팔로', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '윌렘 대포', '');

-- 43
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '송승헌', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '임지연', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조여정', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '온주완', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '유해진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박혁권', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '전혜진', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '배성우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '엄태구', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '예수정', '');

-- 44
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '신혜선', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이준영', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박정우', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박혁권', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '차청화', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이찬형', '');

-- 45
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '톰 하디', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '샤를리즈 테론', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '니콜라스 홀트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '휴 키스-번', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조 크라비츠', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '로지 헌팅턴 휘틀리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '라일리 코프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '메간 게일', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '애비 리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '코트니 이튼', '');

-- 46
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '황정민', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정우성', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이성민', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '박해준', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김성균', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '김의성', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '정동환', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안내상', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '유성주', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '최병모', '');

-- 47
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '제이콥 트렘블레이', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '줄리아 로버츠', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '오웬 윌슨', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이자벨라 비도빅', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '노아 주프', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '브라이스 게이사르', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '나드지 제터', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '다니엘 로즈 러셀', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '리차드 멘데즈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '세이브리 윈터스', '');

-- 48
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '조지 클루니', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '브래드 피트', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레이첼 와이즈', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '제이슨 모모아', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '제시카 차스테인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '앨리슨 윌리엄스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '로라 던', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '빅토리아 호로비츠', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '이사벨 크라울리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '안드레아 론스', '');

-- 49
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '딜런 오브라이언', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '스콧 이스트우드', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '클로이 모레츠', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '아만다 사이프리드', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '잔에바 스웨인', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '레이첼 스카스텐', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '키라 나이틀리', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '캐리 멀리건', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '그레타 거윅', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마리사 토메이', '');

-- 50
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '루카스 핫스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '가브리엘 바첼렛', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '톰 홀랜드', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '피비 월러-브릿지', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '데이비드 디그스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '미셸 로드리게스', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '마이클 B. 조던', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '재커리 리바이', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '타히르 라힘', '');
insert into tblActor (seq, name, majorWork)
values (seq_tblActor.nextval, '가엘 가르시아 베르날', '');


-- ******************* 참여배우 테이블 *******************
--1

insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 1, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 2, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 3, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 4, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 5, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 6, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 7, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 8, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 9, 1);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 10, 1);

--2


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 11, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 12, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 13, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 14, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 15, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 16, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 17, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 18, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 19, 2);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 20, 2);


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 21, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 22, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 23, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 24, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 25, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 26, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 27, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 28, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 29, 3);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 30, 3);

insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 31, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 32, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 33, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 34, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 35, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 36, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 37, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 38, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 39, 4);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 40, 4);



insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 41, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 42, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 43, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 44, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 45, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 46, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 47, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 48, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 49, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 50, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 51, 5);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 52, 5);


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 53, 6);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 54, 6);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 55, 6);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 56, 6);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 57, 6);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 58, 6);

insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 59, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 60, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 61, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 62, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 63, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 64, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 65, 7);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 66, 7);


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 67, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 68, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 69, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 70, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 71, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 72, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 73, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 74, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 75, 8);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 76, 8);


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 77, 9);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 78, 9);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 79, 9);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 80, 9);

insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 81, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 82, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 83, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 84, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 85, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 86, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 87, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 88, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 89, 10);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 90, 10);

insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 91, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 92, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 93, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 94, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 95, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 96, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 97, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 98, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 99, 11);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 100, 11);



insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 101, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 102, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 103, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 104, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 105, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 106, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 107, 12);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 108, 12);


insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 109, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 110, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 111, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 112, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 113, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 114, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 115, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 116, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 117, 13);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 118, 13);


-- 14번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 119, 14);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 120, 14);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 121, 14);

-- 15번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 122, 15);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 123, 15);

-- 16번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 124, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 125, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 126, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 127, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 128, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 129, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 130, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 131, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 132, 16);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 133, 16);

-- 17번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 134, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 135, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 136, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 137, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 138, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 139, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 140, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 141, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 142, 17);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 143, 17);

-- 18번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 144, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 145, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 146, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 147, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 148, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 149, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 150, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 151, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 152, 18);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 153, 18);

-- 19번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 154, 19);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 155, 19);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 156, 19);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 157, 19);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 158, 19);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 159, 19);

-- 20번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 160, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 161, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 162, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 163, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 164, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 165, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 166, 20);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 167, 20);

-- 21번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 168, 21);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 169, 21);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 170, 21);

-- 22번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 171, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 172, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 173, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 174, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 175, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 176, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 177, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 178, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 179, 22);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 180, 22);

-- 23번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 181, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 182, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 183, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 184, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 185, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 186, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 187, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 188, 23);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 189, 23);

-- 24번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 190, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 191, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 192, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 193, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 194, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 195, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 196, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 197, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 198, 24);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 199, 24);

-- 25번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 200, 25);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 201, 25);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 202, 25);

-- 26번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 203, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 204, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 205, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 206, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 207, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 208, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 209, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 210, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 211, 26);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 212, 26);

-- 27번
-- 빈 항목

-- 28번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 213, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 214, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 215, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 216, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 217, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 218, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 219, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 220, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 221, 28);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 222, 28);

-- 29번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 223, 29);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 224, 29);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 225, 29);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 226, 29);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 227, 29);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 228, 29);

-- 30번
-- 빈 항목

-- 31번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 229, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 230, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 231, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 232, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 233, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 234, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 235, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 236, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 237, 31);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 238, 31);

-- 32번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 239, 32);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 240, 32);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 241, 32);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 242, 32);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 243, 32);

-- 33번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 244, 33);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 245, 33);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 246, 33);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 247, 33);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 248, 33);

-- 34번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 249, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 250, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 251, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 252, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 253, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 254, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 255, 34);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 256, 34);

-- 35번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 257, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 258, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 259, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 260, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 261, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 262, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 263, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 264, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 265, 35);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 266, 35);

-- 36번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 267, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 268, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 269, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 270, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 271, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 272, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 273, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 274, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 275, 36);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 276, 36);

-- 37번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 277, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 278, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 279, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 280, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 281, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 282, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 283, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 284, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 285, 37);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 286, 37);

-- 38번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 287, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 288, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 289, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 290, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 291, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 292, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 293, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 294, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 295, 38);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 296, 38);

-- 39번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 297, 39);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 298, 39);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 299, 39);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 300, 39);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 301, 39);

-- 40번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 302, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 303, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 304, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 305, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 306, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 307, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 308, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 309, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 310, 40);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 311, 40);

-- 41번
-- 빈 항목

-- 42번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 312, 42);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 313, 42);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 314, 42);

-- 43번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 315, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 316, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 317, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 318, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 319, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 320, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 321, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 322, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 323, 43);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 324, 43);

-- 44번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 325, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 326, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 327, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 328, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 329, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 330, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 331, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 332, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 333, 44);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 334, 44);

-- 45번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 335, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 336, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 337, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 338, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 339, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 340, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 341, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 342, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 343, 45);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 344, 45);

-- 46번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 345, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 346, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 347, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 348, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 349, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 350, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 351, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 352, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 353, 46);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 354, 46);

-- 47번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 355, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 356, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 357, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 358, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 359, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 360, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 361, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 362, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 363, 47);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 364, 47);

-- 48번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 365, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 366, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 367, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 368, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 369, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 370, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 371, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 372, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 373, 48);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 374, 48);

-- 49번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 375, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 376, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 377, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 378, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 379, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 380, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 381, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 382, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 383, 49);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 384, 49);

-- 50번
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 385, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 386, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 387, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 388, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 389, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 390, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 391, 50);
insert into tblJoinActor (seq, actorSeq, movieSeq)
values (seq_tblJoinActor.nextval, 392, 50);

-- ******************* 장르 테이블 *******************
insert into tblGenre
values (seq_tblGenre.nextVal, '액션');
insert into tblGenre
values (seq_tblGenre.nextVal, '코미디');
insert into tblGenre
values (seq_tblGenre.nextVal, '드라마');
insert into tblGenre
values (seq_tblGenre.nextVal, '멜로');
insert into tblGenre
values (seq_tblGenre.nextVal, '공포/스릴러');
insert into tblGenre
values (seq_tblGenre.nextVal, 'SF/판타지');
insert into tblGenre
values (seq_tblGenre.nextVal, '애니메이션');
insert into tblGenre
values (seq_tblGenre.nextVal, '다큐멘터리');
insert into tblGenre
values (seq_tblGenre.nextVal, '독립영화');
insert into tblGenre
values (seq_tblGenre.nextVal, '공연실황');


-- ******************* 영화장르 테이블 *******************
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 1, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 2, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 3, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 4, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 4, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 5, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 6, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 6, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 6, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 7, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 8, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 9, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 10, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 11, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 11, 6);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 11, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 12, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 13, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 13, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 14, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 15, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 16, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 17, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 18, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 18, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 18, 6);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 19, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 20, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 20, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 21, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 21, 4);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 22, 6);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 23, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 24, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 25, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 25, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 26, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 26, 6);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 27, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 28, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 29, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 30, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 31, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 32, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 33, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 33, 4);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 34, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 35, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 36, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 37, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 37, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 38, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 39, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 40, 2);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 41, 7);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 42, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 43, 4);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 44, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 45, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 46, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 47, 3);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 48, 1);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 49, 4);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 49, 5);
insert into tblMovieGenre
values (seq_tblMovieGenre.nextVal, 50, 5);


-- ******************* 네티즌 테이블 *******************
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '남황현');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '이혜미');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '장지윤');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '황도일');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '정관우');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '아무개');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '강아지');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '금붕어');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '송아지');
INSERT INTO tblNetizen
VALUES (SEQ_TBLNETIZEN.nextval, '홍길동');

-- ******************* 감상평 테이블 *******************
insert into tblReview
values (seq_tblReview.nextval, 1, 1, '이거 대여인데 왤케비싸요 잘못샀는데 환불좀요', null);
insert into tblReview
values (seq_tblReview.nextval, 9, 2, '마동석아니면 절대 안볼영화 이번에 감독감다잃은듯', null);
insert into tblReview
values (seq_tblReview.nextval, 9, 2, '클릿봇이 부적절한 표현을 감지한 댓글입니다.', null);
insert into tblReview
values (seq_tblReview.nextval, 8, 3, '뇌빼고 보면 재밌네요', null);
insert into tblReview
values (seq_tblReview.nextval, 4, 4, '기쁨이!', null); -- 좋아요
insert into tblReview
values (seq_tblReview.nextval, 8, 4, '클릿봇이 부적절한 표현을 감지한 댓글입니다.', null); --싫어요
insert into tblReview
values (seq_tblReview.nextval, 4, 5, '키미노나와....', null);--좋아요
insert into tblReview
values (seq_tblReview.nextval, 7, 6, '저번시리즈보다 쫄깃한 맛이있어 좋았어요', null);--좋아요
insert into tblReview
values (seq_tblReview.nextval, 6, 6, '이영화 재밌어요?', null);--좋아요
insert into tblReview
values (seq_tblReview.nextval, 3, 7, '클릿봇이 부적절한 표현을 감지한 댓글입니다.', null);
insert into tblReview
values (seq_tblReview.nextval, 5, 8, '엄청재밌다 들었는데 생각보다 별로네요', null);
insert into tblReview
values (seq_tblReview.nextval, 5, 9, '클릿봇이 부적절한 표현을 감지한 댓글입니다.', null);

-- ******************* 좋아요 테이블 *******************
insert into tbllike (seq, nseq, rseq)
values (seq_tbllike.nextval, 5, 5);
insert into tbllike (seq, nseq, rseq)
values (seq_tbllike.nextval, 2, 7);
insert into tbllike (seq, nseq, rseq)
values (seq_tbllike.nextval, 6, 8);
insert into tbllike (seq, nseq, rseq)
values (seq_tbllike.nextval, 3, 9);

-- ******************* 싫어요 테이블 *******************
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 7, 6);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 5, 6);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 2, 6);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 1, 6);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 8, 2);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 9, 3);
insert into tbldislike (seq, nseq, rseq)
values (seq_tbldislike.nextval, 3, 3);

-- ******************* 월간 랭킹 테이블 *******************
-- 7월
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 1, '2024/07/01', 100);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 2, '2024/07/01', 99);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 3, '2024/07/01', 98);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 4, '2024/07/01', 97);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 5, '2024/07/01', 96);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 6, '2024/07/01', 95);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 7, '2024/07/01', 94);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 8, '2024/07/01', 93);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 9, '2024/07/01', 92);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 10, '2024/07/01', 91);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 11, '2024/07/01', 90);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 12, '2024/07/01', 89);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 13, '2024/07/01', 88);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 14, '2024/07/01', 87);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 15, '2024/07/01', 86);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 16, '2024/07/01', 85);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 17, '2024/07/01', 84);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 18, '2024/07/01', 83);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 19, '2024/07/01', 82);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 20, '2024/07/01', 81);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 21, '2024/07/01', 80);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 22, '2024/07/01', 79);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 23, '2024/07/01', 78);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 24, '2024/07/01', 77);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 25, '2024/07/01', 76);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 26, '2024/07/01', 75);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 27, '2024/07/01', 74);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 28, '2024/07/01', 73);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 29, '2024/07/01', 72);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 30, '2024/07/01', 71);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 31, '2024/07/01', 70);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 32, '2024/07/01', 69);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 33, '2024/07/01', 68);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 34, '2024/07/01', 67);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 35, '2024/07/01', 66);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 36, '2024/07/01', 65);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 37, '2024/07/01', 64);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 38, '2024/07/01', 63);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 39, '2024/07/01', 62);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 40, '2024/07/01', 61);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 41, '2024/07/01', 60);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 42, '2024/07/01', 59);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 43, '2024/07/01', 58);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 44, '2024/07/01', 57);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 45, '2024/07/01', 56);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 46, '2024/07/01', 55);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 47, '2024/07/01', 54);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 48, '2024/07/01', 53);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 49, '2024/07/01', 52);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 50, '2024/07/01', 51);

--- 8월
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 3, '2024/08/01', 100);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 4, '2024/08/01', 99);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 1, '2024/08/01', 98);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 2, '2024/08/01', 97);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 5, '2024/08/01', 96);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 6, '2024/08/01', 95);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 7, '2024/08/01', 94);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 13, '2024/08/01', 93);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 9, '2024/08/01', 92);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 10, '2024/08/01', 91);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 11, '2024/08/01', 90);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 12, '2024/08/01', 89);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 8, '2024/08/01', 88);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 14, '2024/08/01', 87);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 15, '2024/08/01', 86);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 16, '2024/08/01', 85);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 17, '2024/08/01', 84);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 18, '2024/08/01', 83);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 26, '2024/08/01', 82);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 20, '2024/08/01', 81);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 21, '2024/08/01', 80);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 22, '2024/08/01', 79);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 23, '2024/08/01', 78);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 24, '2024/08/01', 77);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 25, '2024/08/01', 76);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 19, '2024/08/01', 75);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 40, '2024/08/01', 74);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 28, '2024/08/01', 73);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 29, '2024/08/01', 72);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 30, '2024/08/01', 71);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 31, '2024/08/01', 70);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 32, '2024/08/01', 69);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 33, '2024/08/01', 68);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 34, '2024/08/01', 67);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 35, '2024/08/01', 66);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 36, '2024/08/01', 65);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 37, '2024/08/01', 64);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 38, '2024/08/01', 63);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 39, '2024/08/01', 62);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 27, '2024/08/01', 61);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 41, '2024/08/01', 60);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 42, '2024/08/01', 59);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 43, '2024/08/01', 58);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 44, '2024/08/01', 57);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 45, '2024/08/01', 56);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 46, '2024/08/01', 55);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 47, '2024/08/01', 54);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 48, '2024/08/01', 53);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 49, '2024/08/01', 52);
insert into tblMonthRank (seq, mseq, monthDate, score)
values (seq_tblMonthRank.nextVal, 50, '2024/08/01', 51);

commit;
