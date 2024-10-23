-- DDL

-- drop 테이블
drop table tblJoinDirector CASCADE CONSTRAINTS;
drop table tblDirector CASCADE CONSTRAINTS;
drop table tblJoinActor CASCADE CONSTRAINTS;
drop table tblActor CASCADE CONSTRAINTS;
drop table tblMovieGenre CASCADE CONSTRAINTS;
drop table tblGenre CASCADE CONSTRAINTS;
drop table tblMovie CASCADE CONSTRAINTS;
drop table tblInfo CASCADE CONSTRAINTS;
drop table tblFirmRate CASCADE CONSTRAINTS;
-- drop table tblJoinReview CASCADE CONSTRAINTS;
drop table tblNetizen CASCADE CONSTRAINTS;
drop table tblReview CASCADE CONSTRAINTS;
drop table tblLike CASCADE CONSTRAINTS;
drop table tblDisLike CASCADE CONSTRAINTS;
drop table tblMonthRank CASCADE CONSTRAINTS;

-- drop 시퀀스
drop sequence seq_tblMovie;
drop sequence seq_tblJoinDirector;
drop sequence seq_tblDirector;
drop sequence seq_tblJoinActor;
drop sequence seq_tblActor;
drop sequence seq_tblMovieGenre;
drop sequence seq_tblGenre;
drop sequence seq_tblInfo;
drop sequence seq_tblFirmRate;
-- drop sequence seq_tblJoinReview;
drop sequence seq_tblReview;
drop sequence seq_tblNetizen;
drop sequence seq_tblLike;
drop sequence seq_tblDisLike;
drop sequence seq_tblMonthRank;


-- create 시퀀스 키
create sequence seq_tblMovie;
create sequence seq_tblJoinDirector;
create sequence seq_tblDirector;
create sequence seq_tblJoinActor;
create sequence seq_tblActor;
create sequence seq_tblMovieGenre;
create sequence seq_tblGenre;
create sequence seq_tblInfo;
create sequence seq_tblFirmRate;
create sequence seq_tblReview;
create sequence seq_tblNetizen;
create sequence seq_tblLike;
create sequence seq_tblDisLike;
create sequence seq_tblMonthRank;

-- create 테이블

-- 영화 테이블
CREATE TABLE tblMovie
(
    seq         number primary key,
    firmRate    number          NOT NULL,
    gseq        number          NOT NULL,
    title       varchar2(50)    NULL,
    openingDate number          NULL,
    runTime     number          NULL,
    quality     number          NULL,
    introduce   clob NULL,
    subtitle    number          NOT NULL, -- 0: 자막 노출설정불가능/ 1: 자막 지원/ 2: 더빙
    volume      varchar2(30)    NULL,
    score       varchar2(30)    NULL,
    drm         varchar2(10)    NULL,
    type        varchar2(10)    NOT NULL,
    price       number          NOT NULL,
    period      number          NOT NULL,
    likes        number          NULL
);

-- 영화장르 테이블
CREATE TABLE tblMovieGenre
(
    seq      number primary key,
    movieSeq number NOT NULL,
    genreSeq number NOT NULL
);

-- 관람연령 테이블
CREATE TABLE tblFirmRate
(
    seq      number primary key,
    firmRate number NULL
);


-- 감상평 테이블
CREATE TABLE tblReview
(
    seq        number primary key,
    nseq       number         NOT NULL,
    mseq       number         NOT NULL,
    content    varchar2(3000) NULL,
    createDate date           NULL
);

-- 감독 테이블
CREATE TABLE tblDirector
(
    seq       number primary key, --감독번호
    name      varchar2(1000),     --감독이름
    majorwork varchar2(1000)      --대표작
);

-- 참여배우 테이블
CREATE TABLE tblActor
(
    seq       number primary key,
    name      varchar2(1000),
    majorWork varchar2(1000)
);

-- 공통정보 테이블
CREATE TABLE tblInfo
(
    seq         number primary key,
    useDivice   varchar2(1000) NULL,
    refundGuide varchar2(1000) NULL,
    useGuide    varchar2(1000) NULL,
    Use         varchar2(1000) NULL
);

-- 장르 테이블
CREATE TABLE tblGenre
(
    seq   number primary key,
    genre VARCHAR2(100) NULL
);

-- 참여감독 테이블
CREATE TABLE tblJoinDirector
(
    seq         number primary key, --참여감독테이블의 번호
    directorSeq number,             --감독 번호
    movieSeq    number              --영화번호
);

-- 참여배우 테이블
CREATE TABLE tblJoinActor
(
    seq      number primary key,
    actorSeq number,
    movieSeq number
);

-- 네티즌 테이블
CREATE TABLE tblNetizen
(
    seq      number primary key,
    nickname varchar2(50) NULL
);

-- 좋아요 테이블
CREATE TABLE tblLike
(
    seq  number primary key,
    nseq number NOT NULL,
    rseq number NOT NULL
);

-- 싫어요 테이블
create table tblDislike
(
    seq  number primary key,
    nseq number not null,
    rseq number not null
);

-- 월간랭킹 테이블
create table tblMonthRank
(
    seq  number primary key,
    mseq number not null,
    monthDate date not null, -- 매월 1일
    score number not null -- 좋아요 * 3 + 평점 * 2
);

ALTER TABLE tblMovie
    ADD CONSTRAINT FK_tblFirmRate_tblMovie_1 FOREIGN KEY (
                                                          firmRate
        )
        REFERENCES tblFirmRate (
                                seq
            );

ALTER TABLE tblMovie
    ADD CONSTRAINT FK_tblInfo_tblMovie_1 FOREIGN KEY (
                                                      gseq
        )
        REFERENCES tblInfo (
                            seq
            );

ALTER TABLE tblMovieGenre
    ADD CONSTRAINT FK_tblMovie_tblMovieGenre_1 FOREIGN KEY (
                                                            movieSeq
        )
        REFERENCES tblMovie (
                             seq
            );

ALTER TABLE tblMovieGenre
    ADD CONSTRAINT FK_tblGenre_tblMovieGenre_1 FOREIGN KEY (
                                                            genreSeq
        )
        REFERENCES tblGenre (
                             seq
            );



ALTER TABLE tblReview
    ADD CONSTRAINT FK_tblNetizen_tblReview_1 FOREIGN KEY (
                                                          nseq
        )
        REFERENCES tblNetizen (
                               seq
            );

ALTER TABLE tblJoinDirector
    ADD CONSTRAINT FK_Director_JoinDirector_1 FOREIGN KEY (
                                                           directorSeq
        )
        REFERENCES tblDirector (
                                seq
            );

ALTER TABLE tblJoinDirector
    ADD CONSTRAINT FK_tblMovie_tblJoinDirector_1 FOREIGN KEY (
                                                              movieSeq
        )
        REFERENCES tblMovie (
                             seq
            );

ALTER TABLE tblJoinActor
    ADD CONSTRAINT FK_tblActor_tblJoinActor_1 FOREIGN KEY (
                                                           actorSeq
        )
        REFERENCES tblActor (
                             seq
            );

ALTER TABLE tblJoinActor
    ADD CONSTRAINT FK_tblMovie_tblJoinActor_1 FOREIGN KEY (
                                                           movieSeq
        )
        REFERENCES tblMovie (
                             seq
            );

ALTER TABLE tblReview
    ADD CONSTRAINT FK_tblMovie_tblReview_1 FOREIGN KEY (
                                                            mseq
        )
        REFERENCES tblMovie (
                             seq
            );


ALTER TABLE tblLike
    ADD CONSTRAINT FK_tblNetizen_TO_tblLike_1 FOREIGN KEY (
                                                           nseq
        )
        REFERENCES tblNetizen (
                               seq
            );

ALTER TABLE tblLike
    ADD CONSTRAINT FK_tblReview_TO_tblLike_1 FOREIGN KEY (
                                                          rseq
        )
        REFERENCES tblReview (
                              seq
            );

ALTER TABLE tblDislike
    ADD CONSTRAINT FK_tblNetizen_TO_tblDislike_1 FOREIGN KEY (
                                                              nseq
        )
        REFERENCES tblNetizen (
                               seq
            );

ALTER TABLE tblDislike
    ADD CONSTRAINT FK_tblReview_TO_tblDislike_1 FOREIGN KEY (
                                                             rseq
        )
        REFERENCES tblReview (
                              seq
            );

ALTER TABLE tblMonthRank
    ADD CONSTRAINT FK_tblMonthRAnk_tblMovie_1 FOREIGN KEY (
                                                             mseq
        )
        REFERENCES tblMovie (
                              seq
            );
