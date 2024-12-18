drop table tblInfo;
drop table tblMemo;
drop table tblAddress;
drop sequence seqInfo;
drop sequence seqMemo;
drop sequence seqAddress;
select * from tblAddress;

create table tblAddress (
    seq number primary key,
    name varchar2(50) not null,
    age number not null,
    address varchar2(300) null,
    gender char(1) not null
);
create sequence seqAddress start with 51;


INSERT INTO tblAddress VALUES (1, '๊ฐ์์ง?', 3, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ค??๋ก? 132 ??๋น๋ฉ 8์ธ?', 'm');
INSERT INTO tblAddress VALUES (2, '๊ณ ์?ด', 2, '??ธ?น๋ณ์ ?์ด๊ตฌ ?์ด๋?๋ก? 77๊ธ? 45 ??ฌ๋ก๋น?ค?? 101? 3?ธ', 'f');
INSERT INTO tblAddress VALUES (3, '๋ณ์๋ฆ?', 1, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ์ฐฝ์ฒ? 50-7 ์ฐฝ์ฒ๋น๋ผ 3์ธ?', 'f');
INSERT INTO tblAddress VALUES (4, '?ฌ?', 7, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ?ฅ?? 340-7 ?๊ด์??ธ 101? 201?ธ', 'm');
INSERT INTO tblAddress VALUES (5, '?ธ??ด', 6, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ฐ??๋ก? 123 ???๋ฐฑํ?  7์ธ?', 'f');
INSERT INTO tblAddress VALUES (6, '๋น๋๊ธ?', 3, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ๋ถ์?? 179-11 ๋ถ์????ธ 105? 12?ธ', 'f');
INSERT INTO tblAddress VALUES (7, '??์ก?', 4, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ? ๊ธฐ๋ 112-5 ๋ณด๋๋น๋ผ 3์ธ?', 'm');
INSERT INTO tblAddress VALUES (8, '??ค?ฐ', 1, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ค??๋ก? 212, ๊ฐ๋จ??ด?ธ?ค??ผ? 5์ธ?', 'm');
INSERT INTO tblAddress VALUES (9, '???', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ญ?ผ๋ก? 34๊ธ? 11, ?ญ?ผ??ผ? 3์ธ?', 'm');
INSERT INTO tblAddress VALUES (10, '??๋ฆ?', 3, '??ธ?น๋ณ์ ???๊ต? ??? 97-1 ??๋น๋ผ 101?ธ', 'm');
INSERT INTO tblAddress VALUES (11, '? ?ผ', 4, '??ธ?น๋ณ์ ???๊ต? ๊ฐํ? 480-6 ๊ฐํ???ธ 104? 5?ธ', 'm');
INSERT INTO tblAddress VALUES (12, '?ค?์ฅ?', 2, '??ธ?น๋ณ์ ๊ฐ์๊ต? ๊ณตํญ??๋ก? 456', 'f');
INSERT INTO tblAddress VALUES (13, '??ค', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??๋ก? 331, ????? 7์ธ?', 'm');
INSERT INTO tblAddress VALUES (14, '๊ธฐ๋ฆฐ', 7, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ธ์ฃผ๋ก 613, ?ธ์ฃผํ?? 9์ธ?', 'f');
INSERT INTO tblAddress VALUES (15, '?ผ๋ฃฉ๋ง', 3, '??ธ?น๋ณ์ ๊ฐ๋๊ต? ?ฑ?ด๋ก? 789', 'm');
INSERT INTO tblAddress VALUES (16, '๋ฌผ๊ฐ', 1, '??ธ?น๋ณ์ ๊ฐ์๊ต? ์ฒ?๊ณ๋ก 456', 'f');
INSERT INTO tblAddress VALUES (17, '์ฝ๋ผ๋ฆ?', 8, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ค??๋ก? 620, ?ฌ?ค์ฝํ?? 15์ธ?', 'm');
INSERT INTO tblAddress VALUES (18, '์นํ?', 6, '??ธ?น๋ณ์ ๊ฐ๋๊ต? ์ฒํธ??๋ก? 789', 'f');
INSERT INTO tblAddress VALUES (19, '?ฌ?ฐ', 3, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ?? ? 320-3 ?? ??ผ? 3์ธ?', 'm');
INSERT INTO tblAddress VALUES (20, '???', 4, '??ธ?น๋ณ์ ???๊ต? ?น๋ฒ๋ 279-1 ?น๋ฒ๋น?ผ 2์ธ?', 'f');
INSERT INTO tblAddress VALUES (21, '์บฅ๊ฑฐ๋ฃ?', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ฐ??๋ก? 126, ??ฐ๋น๋ฉ 15์ธ?', 'm');
INSERT INTO tblAddress VALUES (22, '?๋ง?', 9, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ค??๋ก? 98, ??ค??๋น๋ฉ 20์ธ?', 'f');
INSERT INTO tblAddress VALUES (23, '??ด', 7, null, 'm');
INSERT INTO tblAddress VALUES (24, '????ฐ', 2, '??ธ?น๋ณ์ ๊ฐ์๊ต? ๊ณตํญ??๋ก? 123', 'f');
INSERT INTO tblAddress VALUES (25, '๋ถ์??ฌ?ฐ', 6, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ผ?๋ก? 23, ?ผ?๋น๋ฉ 8์ธ?', 'm');
INSERT INTO tblAddress VALUES (26, '๊ณต์?', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ญ?ผ๋ก? 718, ?ญ?ผ??? 14์ธ?', 'f');
INSERT INTO tblAddress VALUES (27, '?๋ฃจ๋??', 4, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ์ถฉ์ ๋ก?3๊ฐ? 26-1 ์ถฉ์ ๋ก์??ธ 20? 402?ธ', 'm');
INSERT INTO tblAddress VALUES (28, '๋น๋ฒ', 3, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ?ฉ?? 275-4 ??ด???ธ 12? 602?ธ', 'f');
INSERT INTO tblAddress VALUES (29, '?ค?๋ฆ?', 2, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ฐ??๋ก? 201', 'm');
INSERT INTO tblAddress VALUES (30, '๊ณ ๋ผ?', 1, null, 'f');
INSERT INTO tblAddress VALUES (31, '๋ง?', 8, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ผ?ฑ๋ก? 256, ?ผ?ฑ??? 22์ธ?', 'm');
INSERT INTO tblAddress VALUES (32, '?ผ์ง?', 6, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ?๊ธฐ๋ 57-48 ๊ณ ๋ ค๋น๋ฉ 5์ธ?', 'f');
INSERT INTO tblAddress VALUES (33, '?ญ', 3, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ญ?ผ๋ก? 135, ?ญ?ผ??? 14์ธ?', 'm');
INSERT INTO tblAddress VALUES (34, '๊ฐ๊ตฌ๋ฆ?', 4, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ? ?ค? 110-10 ?ผ?ฑ???ธ 104? 15?ธ', 'f');
INSERT INTO tblAddress VALUES (35, '??ญ?ด', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ๋ด์??ฌ๋ก? 580, ๋ด์??ฌ๋น๋ฉ 16์ธ?', 'm');
INSERT INTO tblAddress VALUES (36, '?', 9, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??ฐ??๋ก? 72, ??ฐ??? 18์ธ?', 'f');
INSERT INTO tblAddress VALUES (37, '?ผ?', 7, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ธ์ฃผ๋ก 620, ?ธ์ฃผํ?? 20์ธ?', 'm');
INSERT INTO tblAddress VALUES (38, '?', 2, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ผ?ฑ๋ก? 512, ?ผ?ฑ???ธ 204? 2?ธ', 'f');
INSERT INTO tblAddress VALUES (39, '??ฌ', 6, '??ธ?น๋ณ์ ๊ฐ๋ถ๊ต? ๋ฒ๋ 244-44 ๋ฒ๋???ธ 103? 301?ธ', 'm');
INSERT INTO tblAddress VALUES (40, '๊ณ ์ด?์น?', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ญ?ผ๋ก? 231, ?ญ?ผ???ธ 104? 5?ธ', 'f');
INSERT INTO tblAddress VALUES (41, '?ฌ?ด', 4, '??ธ?น๋ณ์ ๊ฐ๋ถ๊ต? ๋ฏธ์? 125-3 ๋ฏธ์๋น๋ฉ 7์ธ?', 'm');
INSERT INTO tblAddress VALUES (42, '๋ถ๊ทน๊ณ?', 3, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ๋ด์??ฌ๋ก? 79, ๋ด์??ฌ??? 17์ธ?', 'f');
INSERT INTO tblAddress VALUES (43, '๋ฐ๋ค?๋ฒ?', 2, '??ธ?น๋ณ์ ???๋ฌธ๊ตฌ ๋ถ๊?์ข๋ 306-1 ๋ถ๊?์ข๋น?ฉ 8์ธ?', 'm');
INSERT INTO tblAddress VALUES (44, '๋ฏธ์ด์บ?', 1, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ธ์ฃผ๋ก 391, ?ธ์ฃผํ?? 19์ธ?', 'f');
INSERT INTO tblAddress VALUES (45, '?ด๋น?', 8, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ผ?ฑ๋ก? 399, ?ผ?ฑ??? 25์ธ?', 'm');
INSERT INTO tblAddress VALUES (46, '์ฝ์?ผ', 3, '??ธ?น๋ณ์ ๊ฐ๋ถ๊ต? ?ผ?? 305-7 ?ผ???ผ? 2์ธ?', 'm');
INSERT INTO tblAddress VALUES (47, '์บฅ๊ฑฐ๋ฃ?', 4, null, 'f');
INSERT INTO tblAddress VALUES (48, '์ฅ?', 5, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ๋ด์??ฌ๋ก? 172, ๋ด์??ฌ??? 11์ธ?', 'm');
INSERT INTO tblAddress VALUES (49, '๋ถ???ด', 6, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ?ผ?๋ก? 87, ?ผ?๋น๋ฉ 13์ธ?', 'f');
INSERT INTO tblAddress VALUES (50, '์ฝ๋ฟ?', 7, '??ธ?น๋ณ์ ๊ฐ๋จ๊ต? ??๋ก? 202, ??๋น๋ฉ 8์ธ?', 'm');





create table tblInfo (
	seq number,
	school varchar2(100) not null,
	country varchar2(100) not null,
	
	constraint info_pk primary key(seq),
	constraint info_kf foreign key(seq) references tblAddress(seq) 
);

insert into tblInfo values (1, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (2, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (3, '?ด? ?์นด๋ฐ๋ฏ?', '๋ฏธ๊ตญ');
insert into tblInfo values (4, '?๊ฒ? ?๋ฌผ์', '?ผ๋ณ?');
insert into tblInfo values (5, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (6, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (7, '๋ฒ ๋?ผ๋ฆฐ ?๋ฌผํ๊ต?', '??ผ');
insert into tblInfo values (8, '๋ฒ ๋?ผ๋ฆฐ ?๋ฌผํ๊ต?', '??ผ');
insert into tblInfo values (9, '??? ?๋ฌผํ๊ต?', '?ธ์ฃ?');
insert into tblInfo values (10, '๋ชจ์ค?ฌ๋ฐ? ?๋ฌผ์', '?ฌ??');
insert into tblInfo values (11, '???ธ๋ฃ? ?๋ฌผ์', '๋ธ๋ผ์ง?');
insert into tblInfo values (12, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (13, '? ๋ก ํ  ?๋ฌผ์', '์บ๋?ค');
insert into tblInfo values (14, '๋ก๋ง ?๋ฌผํ๊ต?', '?ด?๋ฆฌ์');
insert into tblInfo values (15, '๋ถ???ธ?ค??ด? ?ค ?๋ฌผ์', '?๋ฅดํจ?ฐ?');
insert into tblInfo values (16, '??? ?๋ฌผํ๊ต?', '?ธ์ฃ?');
insert into tblInfo values (17, '?? ๋ฆ? ?๋ฌผ์', '?? ๋ฆ?');
insert into tblInfo values (18, '๋ฐฉ์ฝ ?๋ฌผํ๊ต?', '?๊ต?');
insert into tblInfo values (19, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (20, '???ค ?๋ฌผ์', '๊ทธ๋ฆฌ?ค');
insert into tblInfo values (21, '์นด๋ผ์น? ?๋ฌผ์', '??ค?ค?');
insert into tblInfo values (22, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (23, '๋ง๋๋ฆฌ๋ ?๋ฌผ์', '?ค??ธ');
insert into tblInfo values (24, '??? ?๋ฌผํ๊ต?', '?ธ์ฃ?');
insert into tblInfo values (25, '?ค๋ฅด์ฑ?ค ?๋ฌผ์', '?????');
insert into tblInfo values (26, '๋ฆฌ์ค๋ณ? ?๋ฌผ์', '?ฌ๋ฅดํฌ๊ฐ?');
insert into tblInfo values (27, '??ผ? ?๋ฌผ์', '์ฒด์ฝ');
insert into tblInfo values (28, '๋ชจ์ค?ฌ๋ฐ? ?๋ฌผ์', '?ฌ??');
insert into tblInfo values (29, '๋ฒ ๋?ผ๋ฆฐ ?๋ฌผํ๊ต?', '??ผ');
insert into tblInfo values (30, '??๋ฅด์ค๋ฐ? ?๋ฌผ์', '?ด???');
insert into tblInfo values (31, '??ผ? ?๋ฌผ์', '์ฒด์ฝ');
insert into tblInfo values (32, '๋ง๋?ผ ?๋ฌผ์', '?๋ฆฌํ?');
insert into tblInfo values (33, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (34, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (35, '??ผ? ?๋ฌผ์', '์ฒด์ฝ');
insert into tblInfo values (36, '? ๋ก ํ  ?๋ฌผ์', '์บ๋?ค');
insert into tblInfo values (37, '๋ง์นด?ค ?๋ฌผ์', '๋ง์นด?ค');
insert into tblInfo values (38, '๊ฐ๋จ ?๋ฌผํ๊ต?', '???๋ฏผ๊ตญ');
insert into tblInfo values (39, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (40, '?๊ฒ? ?๋ฌผ์', '?ผ๋ณ?');
insert into tblInfo values (41, '์นด์ด๋ก? ?๋ฌผ์', '?ด์งํธ');
insert into tblInfo values (42, '๋ฒ ๋?ผ๋ฆฐ ?๋ฌผํ๊ต?', '??ผ');
insert into tblInfo values (43, '๋ก๋ง ?๋ฌผํ๊ต?', '?ด?๋ฆฌ์');
insert into tblInfo values (44, '??ผ? ?๋ฌผ์', '์ฒด์ฝ');
insert into tblInfo values (45, '??ธ?ด ?๋ฌผ์', '๋ฒ ํธ?จ');
insert into tblInfo values (46, '??ธ?ด ?๋ฌผ์', '๋ฒ ํธ?จ');
insert into tblInfo values (47, '๋ฒ ์ด์ง? ?? จ?', '์ค๊ตญ');
insert into tblInfo values (48, '?ฐ? ?๋ฌผ์', '?๊ต?');
insert into tblInfo values (49, '๋ฒ ๋?ผ๋ฆฐ ?๋ฌผํ๊ต?', '??ผ');
insert into tblInfo values (50, '??ธ?ด ?๋ฌผ์', '๋ฒ ํธ?จ');



create table tblMemo (
	seq number primary key,
	memo varchar2(500) not null,
	regdate date default sysdate not null,
	aseq number not null references tblAddress(seq) 
);
create sequence seqMemo start with 101;


insert into tblMemo values (1, '?ค? ? ?จ? ?ด?? ๋ฉ๋ฉ!', sysdate - 7, 32);
insert into tblMemo values (2, '๋ญ? ๋จน์๊น?? ?ผ?น?ผ?น~', sysdate - 6.8, 7);
insert into tblMemo values (3, '?์ฆ? ? ์ง??ด?', sysdate - 6.7, 14);
insert into tblMemo values (4, '์กธ๋ฆฐ?ฐ ์กธ๋ฆฌ์ง? ??.', sysdate - 6.42, 18);
insert into tblMemo values (5, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ๊ณจ๊ณจ~', sysdate - 6.123, 41);
insert into tblMemo values (6, '๋ญ? ๋จน์์ง? ๊ณ ๋?ผ๋ผ. ??!', sysdate - 6.0632, 1);
insert into tblMemo values (7, '?ค? ์ฃผ์ ?ฝ???ด? ์บฌ์ค~', sysdate - 6, 44);
insert into tblMemo values (8, '์ต๊ทผ? ??? ๋ณ? ๊ฑ? ??ด? ๊พธ์๊พธ์~', sysdate - 5.976813, 15);
insert into tblMemo values (9, '?์ฆ? ?ด?ค ?ผ ???ด? ์ฅ์ง?!', sysdate - 5.8126753, 21);
insert into tblMemo values (10, '?ค? ๋ญ? ??ด? ??ฝ??ฝ~', sysdate - 5.8056732, 45);
insert into tblMemo values (11, '๋ฌด์จ ์ฑ์ ?ฝ๊ณ? ??ด? ?ผ๋ฃฉ๋ผ๋ฃ?~', sysdate - 5.7123, 4);
insert into tblMemo values (12, '์ต๊ทผ? ?ค?? ?ธ?๊ฐ? ??ด? ??!', sysdate - 5.678234, 31);
insert into tblMemo values (13, '์ต๊ทผ? ๋ณ? ?? ?ด?? ?น?น~', sysdate - 5.32342, 4);
insert into tblMemo values (14, '?ค? ๋ญ? ??ด? ๊ผฌ๋ผ?ค~', sysdate - 5.31213, 6);
insert into tblMemo values (15, '๋ฐฐ๊ณ ?. ๋ญ? ๋จน์๊น?? ??น~', sysdate - 5.1123213, 26);
insert into tblMemo values (16, '?ค? ์ฃ? ?ผ? ?ด ?ด?? ?๋ฃจ๋๋ฃ?~', sysdate - 5.018276, 26);
insert into tblMemo values (17, '์ต๊ทผ? ๋ง๋ ์น๊ตฌ๊ฐ? ??ด? ???~', sysdate - 5.00812763, 50);
insert into tblMemo values (18, '?ค? ๋ญ? ? ๊น?? ๊ฝฅ๊ฝฅ!', sysdate - 5.000123, 10);
insert into tblMemo values (19, '๋ฌด์จ ?? ๋จน์๊น?? ?ผ?น~', sysdate - 5, 9);
insert into tblMemo values (20, '?ด?  ์ฝ? ??.', sysdate - 4.9999, 48);
insert into tblMemo values (21, '?ธ??ด ๋ฐ๋ณด!! ??~', sysdate - 4.9917265376, 19);
insert into tblMemo values (22, '๋ฌด์จ ?ผ ???ด? ๊นฝ๊นฝ~', sysdate - 4.976712357, 24);
insert into tblMemo values (23, '๋ฐฐ๊ณ ?. ๋ญ? ๋จน์๊น?? ์ฅ์ง?!', sysdate - 4.97123123, 11);
insert into tblMemo values (24, '?ค? ๋ญ? ??ด? ?จ?จ~', sysdate - 4.791298, 38);
insert into tblMemo values (25, '?ค? ๋ญ? ? ๊น?? ??!', sysdate - 4.77871263, 47);
insert into tblMemo values (26, '์ต๊ทผ? ๋ณ? ??๊ฐ? ??ด? ?น?น~', sysdate - 4.7666, 38);
insert into tblMemo values (27, '๋ฌด์จ ์ฑ์ ?ฝ๊ณ? ??ด? ๊ผฌ๋ผ?ค~', sysdate - 4.74343, 26);
insert into tblMemo values (28, '?ค? ๋ญ? ??ด? ๊ฝฅ๊ฝฅ~', sysdate - 4.734234, 38);
insert into tblMemo values (29, '๋ฌด์จ ?ผ ???ด? ?ฅ?ฅ~', sysdate - 4.7222, 4);
insert into tblMemo values (30, '?์ฆ? ?ด?ค ?ผ ???ด? ์งน์งน~', sysdate - 4.7111, 26);
insert into tblMemo values (31, '?ฎ? ?? 10๋ถ๋ง.', sysdate - 4.6123, 46);
insert into tblMemo values (32, '?๊ณค์ค. ?ด?ด ์ฐ๋ค.', sysdate - 4.60123, 17);
insert into tblMemo values (33, '๋ญ? ๋จน์๊น?? ?ฅ?ฅ~', sysdate - 4.5987, 3);
insert into tblMemo values (34, '?ผ๋ฅด๋  ?ธ??  ๊ฐ??~', sysdate - 4.43124, 25);
insert into tblMemo values (35, '๋ญ? ๋จน์๊น?? ์ฅ์ฅ~', sysdate - 4.41231, 50);
insert into tblMemo values (36, '?ด ๋ฐ์ ?ด?? ??~', sysdate - 4.0123, 35);
insert into tblMemo values (37, '๋ญ? ๋จน์๊น?? ๊น๊น~', sysdate - 4, 37);
insert into tblMemo values (38, '๋ญ? ๋จน์๊น?? ?์ฃ?~', sysdate - 3.9898, 40);
insert into tblMemo values (39, '๋ฌด์จ ?? ??ด? ??~', sysdate - 3.8787, 29);
insert into tblMemo values (40, '?์ฆ? ?ด?ค ?ผ ???ด? ?์ฃ?~', sysdate - 3.7665, 22);
insert into tblMemo values (41, '๋ฌด์จ ?ผ ???ด? ๊ผฌ๋ผ?ค~', sysdate - 3.687945, 16);
insert into tblMemo values (42, '??ค?ด์งํ?ค. ??ค??ค~', sysdate - 3.643234, 18);
insert into tblMemo values (43, '??ด?ค?ฌ๋ฆ? ๋จน๊ณ  ?ถ?ด', sysdate - 3.59898, 39);
insert into tblMemo values (44, '?์ฆ? ? ์ง??ด? ๊ผฌ๋ฌผ๊ผฌ๋ฌผ~', sysdate - 3.5786, 45);
insert into tblMemo values (45, '์ฑ? ์ข? ?ฝ?ด?ผ! ?ผ?น~', sysdate - 3.56347, 12);
insert into tblMemo values (46, '?ด?ฌ? ์ฝ๋ฉ์ค? ??ฝ??ฝ~', sysdate - 3.553245, 2);
insert into tblMemo values (47, '? ๊ฒฐ์ ์ฝ๋ฉ์ค?..', sysdate - 3.54324, 48);
insert into tblMemo values (48, '์กธ๋ ค. ?ด? ๊ฐ๊น? ??ฝ??ฝ~', sysdate - 3.54311, 23);
insert into tblMemo values (49, '๋ฌด์จ ?? ๋จน์๊น?? ์ฅ์ง?!', sysdate - 3.5321312, 16);
insert into tblMemo values (50, '๋ฌด์จ ?ผ ???ด? ??ค??ค~', sysdate - 3.5214124, 37);
insert into tblMemo values (51, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ์งน์งน~', sysdate - 3.51321123, 30);
insert into tblMemo values (52, '??. ?ธ?ฌ?? ๋ฐฉ๋ฒ.', sysdate - 3.5099898, 44);
insert into tblMemo values (53, '๋ฒ๊ทธ๋ฅ? ?ก??ผ!!', sysdate - 3.50007123, 45);
insert into tblMemo values (54, '์กธ๋ ค. ?ด? ๊ฐ๊น? ?จ?จ~', sysdate - 3.5, 10);
insert into tblMemo values (55, '์กธ๋ ค. ?  ? ??. ?๋ฆฌ๋ฆฟ~', sysdate - 3.498797, 27);
insert into tblMemo values (56, '??? ์งน์งน~', sysdate - 3.4876, 32);
insert into tblMemo values (57, '์กธ๋ ค. ?  ? ??. ๊ฝฅ๊ฝฅ~', sysdate - 3.476756, 19);
insert into tblMemo values (58, '?ค? ? ?จ? ?ด?? ?ฅ?ฅ~', sysdate - 3.47554, 41);
insert into tblMemo values (59, '? ๋น์จ?ค!! ??ฝ~', sysdate - 3.4653264, 46);
insert into tblMemo values (60, 'ChatGPT? ๋ฐ๋ณด?ค.', sysdate - 3.45432, 22);
insert into tblMemo values (61, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ?๋ฆฟ์๋ฆ?~', sysdate - 3.434324, 24);
insert into tblMemo values (62, '?ฐ?ด?ฐ ๋ง๋? ์ค? ?จ?จ~', sysdate - 3.423123, 34);
insert into tblMemo values (63, '?์ฆ? ?ด?ค ?ผ ???ด? ??~', sysdate - 3.4123123, 50);
insert into tblMemo values (64, '?ค? ? ?จ? ?ด?? ??ฝ??ฝ~', sysdate - 3.400213, 28);
insert into tblMemo values (65, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ๊นฝ๊นฝ~', sysdate - 3.4, 21);
insert into tblMemo values (66, '๋ญ? ๋จน์๊น?? ??ฝ??ฝ~', sysdate - 3.94324, 45);
insert into tblMemo values (67, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ๊น๊น~', sysdate - 3.732564, 6);
insert into tblMemo values (68, '?ค? ๋ญ? ??ด? ??~', sysdate - 3.632414, 39);
insert into tblMemo values (69, '๋ญ? ๋จน์๊น?? ??ค??ค~', sysdate - 3.52314, 29);
insert into tblMemo values (70, '์กธ๋ ค. ?  ? ??. ?์ฃ?~', sysdate - 3.23413, 18);
insert into tblMemo values (71, '?ด๋ฒ? ์ฃผ๋ง? ๋ญํ ๊น?? ๊ผฌ๋ผ?ค~', sysdate - 3.1231, 3);
insert into tblMemo values (72, '?์ค์ ๋ญ? ?  ๊ฑฐ์ผ? ??ฝ??ฝ~', sysdate - 3.0123, 38);
insert into tblMemo values (73, '?๋ก๊ทธ?๋ฐ์? ?ด? ค?;; ?', sysdate - 3, 9);
insert into tblMemo values (74, '๋ชจ๋?ฐ? ?ค?ค?ต? ', sysdate - 2.9674, 1);
insert into tblMemo values (75, '๋ญ? ๋จน์๊น?? ๊นฝ๊นฝ~', sysdate - 2.8688, 33);
insert into tblMemo values (76, '?ค? ์ฃผ์ ?  ?ผ?ด ๋ญ์ผ? ?ผ๋ฃฉ๋ผ๋ฃ?~', sysdate - 2.8123, 47);
insert into tblMemo values (77, '?ค? ? ?จ? ?ด?? ?จ?จ~', sysdate - 2.800123, 35);
insert into tblMemo values (78, '??ฝ?ด ? ?ค.', sysdate - 2.8, 16);
insert into tblMemo values (79, '๋ฉ๋ฉ~ ๊ฐ์๋ฆ?.', sysdate - 2.791238798, 26);
insert into tblMemo values (80, '?์ค์ ๋ญ? ?  ๊ฑฐ์ผ? ??น~', sysdate - 2.78763, 4);
insert into tblMemo values (81, '์กธ๋ ค. ๋ฌด์จ ?? ??ด? ?๋ฃจ๋๋ฃ?~', sysdate - 2.77782364, 23);
insert into tblMemo values (82, '?ค? ๋ญ? ? ๊น?? ???~', sysdate - 2.7656, 14);
insert into tblMemo values (83, '์ต๊ทผ? ๋ณ? ??๊ฐ? ??ด? ๊ฝฅ๊ฝฅ!', sysdate - 2.73123, 30);
insert into tblMemo values (84, '๋ฌด์จ ์ฑ์ ?ฝ๊ณ? ??ด? ?ผ?น~', sysdate - 2.72313, 36);
insert into tblMemo values (85, '๋ญ? ๋จน์๊น?? ??~', sysdate - 2.70123, 31);
insert into tblMemo values (86, '๋ฐ์ ?๊ฐ? ???~', sysdate - 2.7, 40);
insert into tblMemo values (87, '์ต๊ทผ? ?ค?? ?? ??ด? ์บฌ์ค~', sysdate - 2.6324, 2);
insert into tblMemo values (88, '??ฌ๊ฐ? ??ก??? ?  ??ฝ??ฝ~', sysdate - 2.51234, 25);
insert into tblMemo values (89, '?ค? ์ฃผ์ ?  ?ผ?ด ๋ญ์ผ? ?์ฃฝํ์ฃ?~', sysdate - 2.4124, 22);
insert into tblMemo values (90, '?ค? ๋ญ? ? ๊น?? ๋ฉ๋ฉ!', sysdate - 2.321312, 2);
insert into tblMemo values (91, '์ต๊ทผ? ๋ณ? ??๊ฐ? ??ด? ??~', sysdate - 2.2123, 12);
insert into tblMemo values (92, '๋ฌด์จ ์ฑ์ ?ฝ๊ณ? ??ด? ?จ?จ~', sysdate - 2.123123, 47);
insert into tblMemo values (93, '?์ค์ ๋ญ? ?  ๊ฑฐ์ผ? ๊ฝฅ๊ฝฅ~', sysdate - 2.0123, 17);
insert into tblMemo values (94, '์กธ๋ ค. ๋ฌด์จ ?? ??ด? ?ฅ?ฅ~', sysdate - 2, 26);
insert into tblMemo values (95, '?ค? ๋ญ? ? ๊น?? ์บฌ์บฌ~', sysdate - 1.9324, 29);
insert into tblMemo values (96, '์ต๊ทผ? ๋ณ? ??๊ฐ? ??ด? ?์ฉํ์ฉ?~', sysdate - 1.7435, 18);
insert into tblMemo values (97, '๋ฌด์จ ์ฑ์ ?ฝ๊ณ? ??ด? ??~', sysdate - 1.6234, 3);
insert into tblMemo values (98, '?์ค์ ๋ญ? ?  ๊ฑฐ์ผ? ๊ฐ์์ง? ?ธ??๋ฆ?~', sysdate - 1.51239, 38);
insert into tblMemo values (99, '?ค๋ณด๋ ๋ฐฐ์ก์ค?!!', sysdate - 1.4314, 9);
insert into tblMemo values (100, '์ต๊ทผ? ?ค?? ?? ??ด? ์ฝฉ์ฝฉ~', sysdate, 1);



commit;

select count(*) from tblAddress; --50
select count(*) from tblInfo; --50
select count(*) from tblMemo; --100

select * from tblAddress;
select * from tblInfo;
select * from tblMemo;


select * from tabs;









desc tblAddress;





