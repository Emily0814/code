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


INSERT INTO tblAddress VALUES (1, 'ê°•ì•„ì§?', 3, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…Œ?—¤??ë¡? 132 ?•œ?…ë¹Œë”© 8ì¸?', 'm');
INSERT INTO tblAddress VALUES (2, 'ê³ ì–‘?´', 2, '?„œ?š¸?Š¹ë³„ì‹œ ?„œì´ˆêµ¬ ?„œì´ˆë?ë¡? 77ê¸? 45 ?•„?¬ë¡œë¹„?Š¤?? 101?™ 3?˜¸', 'f');
INSERT INTO tblAddress VALUES (3, 'ë³‘ì•„ë¦?', 1, '?„œ?š¸?Š¹ë³„ì‹œ ?„œ??ë¬¸êµ¬ ì°½ì²œ?™ 50-7 ì°½ì²œë¹Œë¼ 3ì¸?', 'f');
INSERT INTO tblAddress VALUES (4, '?‚¬?', 7, '?„œ?š¸?Š¹ë³„ì‹œ ?™??ë¬¸êµ¬ ?¥?•ˆ?™ 340-7 ?™ê´‘ì•„?ŒŒ?Š¸ 101?™ 201?˜¸', 'm');
INSERT INTO tblAddress VALUES (5, '?˜¸?‘?´', 6, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?„?‚°??ë¡? 123 ?˜„??ë°±í™”?  7ì¸?', 'f');
INSERT INTO tblAddress VALUES (6, 'ë¹„ë‘˜ê¸?', 3, '?„œ?š¸?Š¹ë³„ì‹œ ?„œ??ë¬¸êµ¬ ë¶ì•„?˜„?™ 179-11 ë¶ì•„?˜„?•„?ŒŒ?Š¸ 105?™ 12?˜¸', 'f');
INSERT INTO tblAddress VALUES (7, '??ì¡?', 4, '?„œ?š¸?Š¹ë³„ì‹œ ?™??ë¬¸êµ¬ ? œê¸°ë™ 112-5 ë³´ëŒë¹Œë¼ 3ì¸?', 'm');
INSERT INTO tblAddress VALUES (8, '?–„?Š¤?„°', 1, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…Œ?—¤??ë¡? 212, ê°•ë‚¨?ŒŒ?´?‚¸?Š¤?”Œ?¼? 5ì¸?', 'm');
INSERT INTO tblAddress VALUES (9, '?‚™??', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?—­?‚¼ë¡? 34ê¸? 11, ?—­?‚¼?”„?¼? 3ì¸?', 'm');
INSERT INTO tblAddress VALUES (10, '?…?ˆ˜ë¦?', 3, '?„œ?š¸?Š¹ë³„ì‹œ ???‰êµ? ?‘?•”?™ 97-1 ?‘?•”ë¹Œë¼ 101?˜¸', 'm');
INSERT INTO tblAddress VALUES (11, '?† ?¼', 4, '?„œ?š¸?Š¹ë³„ì‹œ ???‰êµ? ê°ˆí˜„?™ 480-6 ê°ˆí˜„?•„?ŒŒ?Š¸ 104?™ 5?˜¸', 'm');
INSERT INTO tblAddress VALUES (12, '?‹¤?Œì¥?', 2, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ì„œêµ? ê³µí•­??ë¡? 456', 'f');
INSERT INTO tblAddress VALUES (13, '?Œ?‹¤', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?•™?™ë¡? 331, ?•™?™???›Œ 7ì¸?', 'm');
INSERT INTO tblAddress VALUES (14, 'ê¸°ë¦°', 7, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?–¸ì£¼ë¡œ 613, ?–¸ì£¼í??›Œ 9ì¸?', 'f');
INSERT INTO tblAddress VALUES (15, '?–¼ë£©ë§', 3, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë™êµ? ?„±?‚´ë¡? 789', 'm');
INSERT INTO tblAddress VALUES (16, 'ë¬¼ê°œ', 1, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ì„œêµ? ì²?ê³„ë¡œ 456', 'f');
INSERT INTO tblAddress VALUES (17, 'ì½”ë¼ë¦?', 8, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…Œ?—¤??ë¡? 620, ?¬?Š¤ì½”í??›Œ 15ì¸?', 'm');
INSERT INTO tblAddress VALUES (18, 'ì¹˜í?', 6, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë™êµ? ì²œí˜¸??ë¡? 789', 'f');
INSERT INTO tblAddress VALUES (19, '?—¬?š°', 3, '?„œ?š¸?Š¹ë³„ì‹œ ?„œ??ë¬¸êµ¬ ?™? œ?™ 320-3 ?™? œ?”„?¼? 3ì¸?', 'm');
INSERT INTO tblAddress VALUES (20, '?Š‘??', 4, '?„œ?š¸?Š¹ë³„ì‹œ ???‰êµ? ?…¹ë²ˆë™ 279-1 ?…¹ë²ˆë¹Œ?¼ 2ì¸?', 'f');
INSERT INTO tblAddress VALUES (21, 'ìº¥ê±°ë£?', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?„?‚°??ë¡? 126, ?„?‚°ë¹Œë”© 15ì¸?', 'm');
INSERT INTO tblAddress VALUES (22, '?•˜ë§?', 9, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…Œ?—¤??ë¡? 98, ?…Œ?—¤??ë¹Œë”© 20ì¸?', 'f');
INSERT INTO tblAddress VALUES (23, '?•…?–´', 7, null, 'm');
INSERT INTO tblAddress VALUES (24, '?…?„?ƒˆ?š°', 2, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ì„œêµ? ê³µí•­??ë¡? 123', 'f');
INSERT INTO tblAddress VALUES (25, 'ë¶‰ì??—¬?š°', 6, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…¼?˜„ë¡? 23, ?…¼?˜„ë¹Œë”© 8ì¸?', 'm');
INSERT INTO tblAddress VALUES (26, 'ê³µì‘?ƒˆ', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?—­?‚¼ë¡? 718, ?—­?‚¼???›Œ 14ì¸?', 'f');
INSERT INTO tblAddress VALUES (27, '?‘ë£¨ë??', 4, '?„œ?š¸?Š¹ë³„ì‹œ ?„œ??ë¬¸êµ¬ ì¶©ì •ë¡?3ê°? 26-1 ì¶©ì •ë¡œì•„?ŒŒ?Š¸ 20?™ 402?˜¸', 'm');
INSERT INTO tblAddress VALUES (28, 'ë¹„ë²„', 3, '?„œ?š¸?Š¹ë³„ì‹œ ?™??ë¬¸êµ¬ ?š©?‘?™ 275-4 ?™?•´?•„?ŒŒ?Š¸ 12?™ 602?˜¸', 'f');
INSERT INTO tblAddress VALUES (29, '?˜¤?†Œë¦?', 2, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?„?‚°??ë¡? 201', 'm');
INSERT INTO tblAddress VALUES (30, 'ê³ ë¼?‹ˆ', 1, null, 'f');
INSERT INTO tblAddress VALUES (31, 'ë§?', 8, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?‚¼?„±ë¡? 256, ?‚¼?„±???›Œ 22ì¸?', 'm');
INSERT INTO tblAddress VALUES (32, '?¼ì§?', 6, '?„œ?š¸?Š¹ë³„ì‹œ ?™??ë¬¸êµ¬ ?šŒê¸°ë™ 57-48 ê³ ë ¤ë¹Œë”© 5ì¸?', 'f');
INSERT INTO tblAddress VALUES (33, '?‹­', 3, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?—­?‚¼ë¡? 135, ?—­?‚¼???›Œ 14ì¸?', 'm');
INSERT INTO tblAddress VALUES (34, 'ê°œêµ¬ë¦?', 4, '?„œ?š¸?Š¹ë³„ì‹œ ?™??ë¬¸êµ¬ ?‹ ?„¤?™ 110-10 ?‚¼?„±?•„?ŒŒ?Š¸ 104?™ 15?˜¸', 'f');
INSERT INTO tblAddress VALUES (35, '?›?ˆ­?´', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ë´‰ì??‚¬ë¡? 580, ë´‰ì??‚¬ë¹Œë”© 16ì¸?', 'm');
INSERT INTO tblAddress VALUES (36, '?–‘', 9, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?„?‚°??ë¡? 72, ?„?‚°???›Œ 18ì¸?', 'f');
INSERT INTO tblAddress VALUES (37, '?—¼?†Œ', 7, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?–¸ì£¼ë¡œ 620, ?–¸ì£¼í??›Œ 20ì¸?', 'm');
INSERT INTO tblAddress VALUES (38, '?†Œ', 2, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?‚¼?„±ë¡? 512, ?‚¼?„±?•„?ŒŒ?Š¸ 204?™ 2?˜¸', 'f');
INSERT INTO tblAddress VALUES (39, '?ˆ˜?‹¬', 6, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë¶êµ? ë²ˆë™ 244-44 ë²ˆë™?•„?ŒŒ?Š¸ 103?™ 301?˜¸', 'm');
INSERT INTO tblAddress VALUES (40, 'ê³ ìŠ´?„ì¹?', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?—­?‚¼ë¡? 231, ?—­?‚¼?•„?ŒŒ?Š¸ 104?™ 5?˜¸', 'f');
INSERT INTO tblAddress VALUES (41, '?‚¬?Š´', 4, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë¶êµ? ë¯¸ì•„?™ 125-3 ë¯¸ì•„ë¹Œë”© 7ì¸?', 'm');
INSERT INTO tblAddress VALUES (42, 'ë¶ê·¹ê³?', 3, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ë´‰ì??‚¬ë¡? 79, ë´‰ì??‚¬???›Œ 17ì¸?', 'f');
INSERT INTO tblAddress VALUES (43, 'ë°”ë‹¤?‘œë²?', 2, '?„œ?š¸?Š¹ë³„ì‹œ ?„œ??ë¬¸êµ¬ ë¶ê?ì¢Œë™ 306-1 ë¶ê?ì¢Œë¹Œ?”© 8ì¸?', 'm');
INSERT INTO tblAddress VALUES (44, 'ë¯¸ì–´ìº?', 1, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?–¸ì£¼ë¡œ 391, ?–¸ì£¼í??›Œ 19ì¸?', 'f');
INSERT INTO tblAddress VALUES (45, '?‹´ë¹?', 8, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?‚¼?„±ë¡? 399, ?‚¼?„±???›Œ 25ì¸?', 'm');
INSERT INTO tblAddress VALUES (46, 'ì½”ì•Œ?¼', 3, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë¶êµ? ?‚¼?–‘?™ 305-7 ?‚¼?–‘?”„?¼? 2ì¸?', 'm');
INSERT INTO tblAddress VALUES (47, 'ìº¥ê±°ë£?', 4, null, 'f');
INSERT INTO tblAddress VALUES (48, 'ì¥?', 5, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ë´‰ì??‚¬ë¡? 172, ë´‰ì??‚¬???›Œ 11ì¸?', 'm');
INSERT INTO tblAddress VALUES (49, 'ë¶??—‰?´', 6, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?…¼?˜„ë¡? 87, ?…¼?˜„ë¹Œë”© 13ì¸?', 'f');
INSERT INTO tblAddress VALUES (50, 'ì½”ë¿”?†Œ', 7, '?„œ?š¸?Š¹ë³„ì‹œ ê°•ë‚¨êµ? ?•™?™ë¡? 202, ?•™?™ë¹Œë”© 8ì¸?', 'm');





create table tblInfo (
	seq number,
	school varchar2(100) not null,
	country varchar2(100) not null,
	
	constraint info_pk primary key(seq),
	constraint info_kf foreign key(seq) references tblAddress(seq) 
);

insert into tblInfo values (1, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (2, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (3, '?‰´?š• ?•„ì¹´ë°ë¯?', 'ë¯¸êµ­');
insert into tblInfo values (4, '?™ê²? ?™ë¬¼ì›', '?¼ë³?');
insert into tblInfo values (5, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (6, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (7, 'ë² ë?¼ë¦° ?™ë¬¼í•™êµ?', '?…?¼');
insert into tblInfo values (8, 'ë² ë?¼ë¦° ?™ë¬¼í•™êµ?', '?…?¼');
insert into tblInfo values (9, '?‹œ?“œ?‹ˆ ?™ë¬¼í•™êµ?', '?˜¸ì£?');
insert into tblInfo values (10, 'ëª¨ìŠ¤?¬ë°? ?™ë¬¼ì›', '?Ÿ¬?‹œ?•„');
insert into tblInfo values (11, '?ƒ?ŒŒ?š¸ë£? ?™ë¬¼ì›', 'ë¸Œë¼ì§?');
insert into tblInfo values (12, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (13, '?† ë¡ í†  ?™ë¬¼ì›', 'ìºë‚˜?‹¤');
insert into tblInfo values (14, 'ë¡œë§ˆ ?™ë¬¼í•™êµ?', '?´?ƒˆë¦¬ì•„');
insert into tblInfo values (15, 'ë¶??—?…¸?Š¤?•„?´? ˆ?Š¤ ?™ë¬¼ì›', '?•„ë¥´í—¨?‹°?‚˜');
insert into tblInfo values (16, '?‹œ?“œ?‹ˆ ?™ë¬¼í•™êµ?', '?˜¸ì£?');
insert into tblInfo values (17, '?•Œ? œë¦? ?™ë¬¼ì›', '?•Œ? œë¦?');
insert into tblInfo values (18, 'ë°©ì½• ?™ë¬¼í•™êµ?', '?ƒœêµ?');
insert into tblInfo values (19, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (20, '?•„?…Œ?„¤ ?™ë¬¼ì›', 'ê·¸ë¦¬?Š¤');
insert into tblInfo values (21, 'ì¹´ë¼ì¹? ?™ë¬¼ì›', '?ŒŒ?‚¤?Š¤?ƒ„');
insert into tblInfo values (22, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (23, 'ë§ˆë“œë¦¬ë“œ ?™ë¬¼ì›', '?Š¤?˜?¸');
insert into tblInfo values (24, '?‹œ?“œ?‹ˆ ?™ë¬¼í•™êµ?', '?˜¸ì£?');
insert into tblInfo values (25, '?—¤ë¥´ì‹±?‚¤ ?™ë¬¼ì›', '?????“œ');
insert into tblInfo values (26, 'ë¦¬ìŠ¤ë³? ?™ë¬¼ì›', '?¬ë¥´íˆ¬ê°?');
insert into tblInfo values (27, '?”„?¼?•˜ ?™ë¬¼ì›', 'ì²´ì½”');
insert into tblInfo values (28, 'ëª¨ìŠ¤?¬ë°? ?™ë¬¼ì›', '?Ÿ¬?‹œ?•„');
insert into tblInfo values (29, 'ë² ë?¼ë¦° ?™ë¬¼í•™êµ?', '?…?¼');
insert into tblInfo values (30, '??ë¥´ìƒ¤ë°? ?™ë¬¼ì›', '?´???“œ');
insert into tblInfo values (31, '?”„?¼?•˜ ?™ë¬¼ì›', 'ì²´ì½”');
insert into tblInfo values (32, 'ë§ˆë‹?¼ ?™ë¬¼ì›', '?•„ë¦¬í?');
insert into tblInfo values (33, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (34, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (35, '?”„?¼?•˜ ?™ë¬¼ì›', 'ì²´ì½”');
insert into tblInfo values (36, '?† ë¡ í†  ?™ë¬¼ì›', 'ìºë‚˜?‹¤');
insert into tblInfo values (37, 'ë§ˆì¹´?˜¤ ?™ë¬¼ì›', 'ë§ˆì¹´?˜¤');
insert into tblInfo values (38, 'ê°•ë‚¨ ?™ë¬¼í•™êµ?', '???•œë¯¼êµ­');
insert into tblInfo values (39, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (40, '?™ê²? ?™ë¬¼ì›', '?¼ë³?');
insert into tblInfo values (41, 'ì¹´ì´ë¡? ?™ë¬¼ì›', '?´ì§‘íŠ¸');
insert into tblInfo values (42, 'ë² ë?¼ë¦° ?™ë¬¼í•™êµ?', '?…?¼');
insert into tblInfo values (43, 'ë¡œë§ˆ ?™ë¬¼í•™êµ?', '?´?ƒˆë¦¬ì•„');
insert into tblInfo values (44, '?”„?¼?•˜ ?™ë¬¼ì›', 'ì²´ì½”');
insert into tblInfo values (45, '?•˜?…¸?´ ?™ë¬¼ì›', 'ë² íŠ¸?‚¨');
insert into tblInfo values (46, '?•˜?…¸?´ ?™ë¬¼ì›', 'ë² íŠ¸?‚¨');
insert into tblInfo values (47, 'ë² ì´ì§? ?›ˆ? ¨?†Œ', 'ì¤‘êµ­');
insert into tblInfo values (48, '?Ÿ°?˜ ?™ë¬¼ì›', '?˜êµ?');
insert into tblInfo values (49, 'ë² ë?¼ë¦° ?™ë¬¼í•™êµ?', '?…?¼');
insert into tblInfo values (50, '?•˜?…¸?´ ?™ë¬¼ì›', 'ë² íŠ¸?‚¨');



create table tblMemo (
	seq number primary key,
	memo varchar2(500) not null,
	regdate date default sysdate not null,
	aseq number not null references tblAddress(seq) 
);
create sequence seqMemo start with 101;


insert into tblMemo values (1, '?˜¤?Š˜ ?‚ ?”¨?Š” ?–´?•Œ? ë©ë©!', sysdate - 7, 32);
insert into tblMemo values (2, 'ë­? ë¨¹ì„ê¹?? ?•¼?˜¹?•¼?˜¹~', sysdate - 6.8, 7);
insert into tblMemo values (3, '?š”ì¦? ?˜ ì§??‚´?', sysdate - 6.7, 14);
insert into tblMemo values (4, 'ì¡¸ë¦°?° ì¡¸ë¦¬ì§? ?•Š?•„.', sysdate - 6.42, 18);
insert into tblMemo values (5, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ê³¨ê³¨~', sysdate - 6.123, 41);
insert into tblMemo values (6, 'ë­? ë¨¹ì„ì§? ê³ ë?¼ë¼. ?•‘?•‘!', sysdate - 6.0632, 1);
insert into tblMemo values (7, '?‹¤?Œ ì£¼ì— ?•½?†?ˆ?–´? ìº¬ì˜¤~', sysdate - 6, 44);
insert into tblMemo values (8, 'ìµœê·¼?— ?˜?™”?‚˜ ë³? ê±? ?ˆ?–´? ê¾¸ì—‘ê¾¸ì—‘~', sysdate - 5.976813, 15);
insert into tblMemo values (9, '?š”ì¦? ?–´?–¤ ?¼ ?ˆ?—ˆ?–´? ì¥ì§œ?•™!', sysdate - 5.8126753, 21);
insert into tblMemo values (10, '?˜¤?Š˜ ë­? ?–ˆ?–´? ?‚?•½?‚?•½~', sysdate - 5.8056732, 45);
insert into tblMemo values (11, 'ë¬´ìŠ¨ ì±…ì„ ?½ê³? ?ˆ?–´? ?¼ë£©ë¼ë£?~', sysdate - 5.7123, 4);
insert into tblMemo values (12, 'ìµœê·¼?— ?“¤?? ?…¸?˜ê°? ?ˆ?–´? ?•™?•™!', sysdate - 5.678234, 31);
insert into tblMemo values (13, 'ìµœê·¼?— ë³? ?˜?™” ?–´?•Œ? ?˜¹?˜¹~', sysdate - 5.32342, 4);
insert into tblMemo values (14, '?˜¤?Š˜ ë­? ?–ˆ?–´? ê¼¬ë¼?˜¤~', sysdate - 5.31213, 6);
insert into tblMemo values (15, 'ë°°ê³ ?ŒŒ. ë­? ë¨¹ì„ê¹?? ?ƒ?˜¹~', sysdate - 5.1123213, 26);
insert into tblMemo values (16, '?‹¤?Œ ì£? ?¼? •?´ ?–´?•Œ? ?šœë£¨ëšœë£?~', sysdate - 5.018276, 26);
insert into tblMemo values (17, 'ìµœê·¼?— ë§Œë‚œ ì¹œêµ¬ê°? ?ˆ?–´? ?ˆ?ˆ?ˆ~', sysdate - 5.00812763, 50);
insert into tblMemo values (18, '?˜¤?Š˜ ë­? ?• ê¹?? ê½¥ê½¥!', sysdate - 5.000123, 10);
insert into tblMemo values (19, 'ë¬´ìŠ¨ ?Œ?‹ ë¨¹ì„ê¹?? ?•¼?˜¹~', sysdate - 5, 9);
insert into tblMemo values (20, '?´? œ ì½? ??.', sysdate - 4.9999, 48);
insert into tblMemo values (21, '?˜¸?‘?´ ë°”ë³´!! ?•‘?•‘~', sysdate - 4.9917265376, 19);
insert into tblMemo values (22, 'ë¬´ìŠ¨ ?¼ ?ˆ?—ˆ?–´? ê¹½ê¹½~', sysdate - 4.976712357, 24);
insert into tblMemo values (23, 'ë°°ê³ ?ŒŒ. ë­? ë¨¹ì„ê¹?? ì¥ì§œ?•™!', sysdate - 4.97123123, 11);
insert into tblMemo values (24, '?˜¤?Š˜ ë­? ?–ˆ?–´? ?›¨?›¨~', sysdate - 4.791298, 38);
insert into tblMemo values (25, '?˜¤?Š˜ ë­? ?• ê¹?? ?•™?•™!', sysdate - 4.77871263, 47);
insert into tblMemo values (26, 'ìµœê·¼?— ë³? ?˜?™”ê°? ?ˆ?–´? ?˜¹?˜¹~', sysdate - 4.7666, 38);
insert into tblMemo values (27, 'ë¬´ìŠ¨ ì±…ì„ ?½ê³? ?ˆ?–´? ê¼¬ë¼?˜¤~', sysdate - 4.74343, 26);
insert into tblMemo values (28, '?˜¤?Š˜ ë­? ?–ˆ?–´? ê½¥ê½¥~', sysdate - 4.734234, 38);
insert into tblMemo values (29, 'ë¬´ìŠ¨ ?¼ ?ˆ?—ˆ?–´? ?ƒ¥?ƒ¥~', sysdate - 4.7222, 4);
insert into tblMemo values (30, '?š”ì¦? ?–´?–¤ ?¼ ?ˆ?—ˆ?–´? ì§¹ì§¹~', sysdate - 4.7111, 26);
insert into tblMemo values (31, '?‚®? ?? 10ë¶„ë§Œ.', sysdate - 4.6123, 46);
insert into tblMemo values (32, '?‹ê³¤ì¤‘. ?‚´?´ ì°ë‹¤.', sysdate - 4.60123, 17);
insert into tblMemo values (33, 'ë­? ë¨¹ì„ê¹?? ?ƒ¥?ƒ¥~', sysdate - 4.5987, 3);
insert into tblMemo values (34, '?œ¼ë¥´ë  ?¸?˜?  ê°??~', sysdate - 4.43124, 25);
insert into tblMemo values (35, 'ë­? ë¨¹ì„ê¹?? ì¥ì¥~', sysdate - 4.41231, 50);
insert into tblMemo values (36, '?‚´ ë°œìŒ ?–´?•Œ? ?™ˆ?™ˆ~', sysdate - 4.0123, 35);
insert into tblMemo values (37, 'ë­? ë¨¹ì„ê¹?? ê¹Œê¹Œ~', sysdate - 4, 37);
insert into tblMemo values (38, 'ë­? ë¨¹ì„ê¹?? ?ˆì£?~', sysdate - 3.9898, 40);
insert into tblMemo values (39, 'ë¬´ìŠ¨ ?†Œ?‹ ?ˆ?–´? ?ˆ?›~', sysdate - 3.8787, 29);
insert into tblMemo values (40, '?š”ì¦? ?–´?–¤ ?¼ ?ˆ?—ˆ?–´? ?ˆì£?~', sysdate - 3.7665, 22);
insert into tblMemo values (41, 'ë¬´ìŠ¨ ?¼ ?ˆ?—ˆ?–´? ê¼¬ë¼?˜¤~', sysdate - 3.687945, 16);
insert into tblMemo values (42, '?‚?š¤?–´ì§ˆí…Œ?‹¤. ?‚?š¤?‚?š¤~', sysdate - 3.643234, 18);
insert into tblMemo values (43, '?•„?´?Š¤?¬ë¦? ë¨¹ê³  ?‹¶?–´', sysdate - 3.59898, 39);
insert into tblMemo values (44, '?š”ì¦? ?˜ ì§??‚´? ê¼¬ë¬¼ê¼¬ë¬¼~', sysdate - 3.5786, 45);
insert into tblMemo values (45, 'ì±? ì¢? ?½?–´?¼! ?•¼?˜¹~', sysdate - 3.56347, 12);
insert into tblMemo values (46, '?—´?‹¬?ˆ ì½”ë”©ì¤? ?‚?•½?‚?•½~', sysdate - 3.553245, 2);
insert into tblMemo values (47, '? ê²°ì— ì½”ë”©ì¤?..', sysdate - 3.54324, 48);
insert into tblMemo values (48, 'ì¡¸ë ¤. ?–´?”” ê°ˆê¹Œ? ?‚?•½?‚?•½~', sysdate - 3.54311, 23);
insert into tblMemo values (49, 'ë¬´ìŠ¨ ?Œ?‹ ë¨¹ì„ê¹?? ì¥ì§œ?•™!', sysdate - 3.5321312, 16);
insert into tblMemo values (50, 'ë¬´ìŠ¨ ?¼ ?ˆ?—ˆ?–´? ?‚?š¤?‚?š¤~', sysdate - 3.5214124, 37);
insert into tblMemo values (51, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ì§¹ì§¹~', sysdate - 3.51321123, 30);
insert into tblMemo values (52, '?•ˆ?…•. ?¸?‚¬?•˜?Š” ë°©ë²•.', sysdate - 3.5099898, 44);
insert into tblMemo values (53, 'ë²„ê·¸ë¥? ?¡?•„?¼!!', sysdate - 3.50007123, 45);
insert into tblMemo values (54, 'ì¡¸ë ¤. ?–´?”” ê°ˆê¹Œ? ?›¨?›¨~', sysdate - 3.5, 10);
insert into tblMemo values (55, 'ì¡¸ë ¤. ?  ?•ˆ ??. ?‚ë¦¬ë¦¿~', sysdate - 3.498797, 27);
insert into tblMemo values (56, '?™“?? ì§¹ì§¹~', sysdate - 3.4876, 32);
insert into tblMemo values (57, 'ì¡¸ë ¤. ?  ?•ˆ ??. ê½¥ê½¥~', sysdate - 3.476756, 19);
insert into tblMemo values (58, '?˜¤?Š˜ ?‚ ?”¨?Š” ?–´?•Œ? ?ƒ¥?ƒ¥~', sysdate - 3.47554, 41);
insert into tblMemo values (59, '?•— ë¹„ì˜¨?‹¤!! ?‚?•½~', sysdate - 3.4653264, 46);
insert into tblMemo values (60, 'ChatGPT?Š” ë°”ë³´?‹¤.', sysdate - 3.45432, 22);
insert into tblMemo values (61, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ?‚ë¦¿ì‚ë¦?~', sysdate - 3.434324, 24);
insert into tblMemo values (62, '?°?´?„° ë§Œë“œ?Š” ì¤? ?›¨?›¨~', sysdate - 3.423123, 34);
insert into tblMemo values (63, '?š”ì¦? ?–´?–¤ ?¼ ?ˆ?—ˆ?–´? ?™ˆ?™ˆ~', sysdate - 3.4123123, 50);
insert into tblMemo values (64, '?˜¤?Š˜ ?‚ ?”¨?Š” ?–´?•Œ? ?‚?•½?‚?•½~', sysdate - 3.400213, 28);
insert into tblMemo values (65, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ê¹½ê¹½~', sysdate - 3.4, 21);
insert into tblMemo values (66, 'ë­? ë¨¹ì„ê¹?? ?‚?•½?‚?•½~', sysdate - 3.94324, 45);
insert into tblMemo values (67, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ê¹Œê¹Œ~', sysdate - 3.732564, 6);
insert into tblMemo values (68, '?˜¤?Š˜ ë­? ?–ˆ?–´? ?™ˆ?™ˆ~', sysdate - 3.632414, 39);
insert into tblMemo values (69, 'ë­? ë¨¹ì„ê¹?? ?‚?š¤?‚?š¤~', sysdate - 3.52314, 29);
insert into tblMemo values (70, 'ì¡¸ë ¤. ?  ?•ˆ ??. ?ˆì£?~', sysdate - 3.23413, 18);
insert into tblMemo values (71, '?´ë²? ì£¼ë§?— ë­í• ê¹?? ê¼¬ë¼?˜¤~', sysdate - 3.1231, 3);
insert into tblMemo values (72, '?‚˜ì¤‘ì— ë­? ?•  ê±°ì•¼? ?‚?•½?‚?•½~', sysdate - 3.0123, 38);
insert into tblMemo values (73, '?”„ë¡œê·¸?˜ë°ì? ?–´? ¤?›Œ;; ?', sysdate - 3, 9);
insert into tblMemo values (74, 'ëª¨ë‹ˆ?„°?Š” ?‹¤?‹¤?µ?„ ', sysdate - 2.9674, 1);
insert into tblMemo values (75, 'ë­? ë¨¹ì„ê¹?? ê¹½ê¹½~', sysdate - 2.8688, 33);
insert into tblMemo values (76, '?‹¤?Œ ì£¼ì— ?•  ?¼?´ ë­ì•¼? ?¼ë£©ë¼ë£?~', sysdate - 2.8123, 47);
insert into tblMemo values (77, '?˜¤?Š˜ ?‚ ?”¨?Š” ?–´?•Œ? ?›¨?›¨~', sysdate - 2.800123, 35);
insert into tblMemo values (78, '?‚?•½?´ ?‚ ?‹¤.', sysdate - 2.8, 16);
insert into tblMemo values (79, 'ë©ë©~ ê°œì†Œë¦?.', sysdate - 2.791238798, 26);
insert into tblMemo values (80, '?‚˜ì¤‘ì— ë­? ?•  ê±°ì•¼? ?ƒ?˜¹~', sysdate - 2.78763, 4);
insert into tblMemo values (81, 'ì¡¸ë ¤. ë¬´ìŠ¨ ?†Œ?‹ ?ˆ?–´? ?šœë£¨ëšœë£?~', sysdate - 2.77782364, 23);
insert into tblMemo values (82, '?˜¤?Š˜ ë­? ?• ê¹?? ?ˆ?ˆ?ˆ~', sysdate - 2.7656, 14);
insert into tblMemo values (83, 'ìµœê·¼?— ë³? ?˜?™”ê°? ?ˆ?–´? ê½¥ê½¥!', sysdate - 2.73123, 30);
insert into tblMemo values (84, 'ë¬´ìŠ¨ ì±…ì„ ?½ê³? ?ˆ?–´? ?•¼?˜¹~', sysdate - 2.72313, 36);
insert into tblMemo values (85, 'ë­? ë¨¹ì„ê¹?? ?™ˆ?™ˆ~', sysdate - 2.70123, 31);
insert into tblMemo values (86, 'ë°–ì— ?‚˜ê°? ???~', sysdate - 2.7, 40);
insert into tblMemo values (87, 'ìµœê·¼?— ?“¤?? ?†Œ?‹ ?ˆ?–´? ìº¬ì˜¤~', sysdate - 2.6324, 2);
insert into tblMemo values (88, '?—?Ÿ¬ê°? ?•ˆ?¡???… ?…  ?‚?•½?‚?•½~', sysdate - 2.51234, 25);
insert into tblMemo values (89, '?‹¤?Œ ì£¼ì— ?•  ?¼?´ ë­ì•¼? ?ˆì£½íˆì£?~', sysdate - 2.4124, 22);
insert into tblMemo values (90, '?˜¤?Š˜ ë­? ?• ê¹?? ë©ë©!', sysdate - 2.321312, 2);
insert into tblMemo values (91, 'ìµœê·¼?— ë³? ?˜?™”ê°? ?ˆ?–´? ?™ˆ?™ˆ~', sysdate - 2.2123, 12);
insert into tblMemo values (92, 'ë¬´ìŠ¨ ì±…ì„ ?½ê³? ?ˆ?–´? ?›¨?›¨~', sysdate - 2.123123, 47);
insert into tblMemo values (93, '?‚˜ì¤‘ì— ë­? ?•  ê±°ì•¼? ê½¥ê½¥~', sysdate - 2.0123, 17);
insert into tblMemo values (94, 'ì¡¸ë ¤. ë¬´ìŠ¨ ?†Œ?‹ ?ˆ?–´? ?ƒ¥?ƒ¥~', sysdate - 2, 26);
insert into tblMemo values (95, '?˜¤?Š˜ ë­? ?• ê¹?? ìº¬ìº¬~', sysdate - 1.9324, 29);
insert into tblMemo values (96, 'ìµœê·¼?— ë³? ?˜?™”ê°? ?ˆ?–´? ?›Œì©í›Œì©?~', sysdate - 1.7435, 18);
insert into tblMemo values (97, 'ë¬´ìŠ¨ ì±…ì„ ?½ê³? ?ˆ?–´? ?—ˆ?—ˆ~', sysdate - 1.6234, 3);
insert into tblMemo values (98, '?‚˜ì¤‘ì— ë­? ?•  ê±°ì•¼? ê°•ì•„ì§? ?š¸?Œ?†Œë¦?~', sysdate - 1.51239, 38);
insert into tblMemo values (99, '?‚¤ë³´ë“œ ë°°ì†¡ì¤?!!', sysdate - 1.4314, 9);
insert into tblMemo values (100, 'ìµœê·¼?— ?“¤?? ?†Œ?‹ ?ˆ?–´? ì½©ì½©~', sysdate, 1);



commit;

select count(*) from tblAddress; --50
select count(*) from tblInfo; --50
select count(*) from tblMemo; --100

select * from tblAddress;
select * from tblInfo;
select * from tblMemo;


select * from tabs;









desc tblAddress;





