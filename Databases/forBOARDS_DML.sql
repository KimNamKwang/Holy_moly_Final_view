INSERT INTO MAIN_BOARD 
(BOARD_UID,BOARD_TYPE,BOARD_DESCRIPTION) 
VALUES
('UID_NOTICE','NOTICE','공지사항'),
('UID_EVENT','EVENT','이벤트'),
('UID_FAQ','FAQ','FAQ')
-- COMMON_BOARD의 게시글마다 BOARD_UID가 하나씩 들어가고 그 BOARD_UID를 타고 MAIN_BOARD에서 어떤 타입인지 확인하는 것.
;

INSERT INTO COMMON_BOARD 
(COMMONBOARD_UID,TITLE,CONTENT ,DATE_CREATED, WRITER,VIEWS ,BOARD_FILE_NAME,EVENT_START_DATE,EVENT_END_DATE ,
 USER_UID,BOARD_UID) 
VALUES
('EVT_20230216_1','이벤트 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_EVENT'),
('EVT_20230216_2','이벤트 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_EVENT'),
('NOT_20230216_1','공지사항 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_NOTICE'),
('NOT_20230216_2','공지사항 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_NOTICE'),
('FAQ_20230216_1','FAQ 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_FAQ'),
('FAQ_20230216_2','FAQ 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'user1','UID_FAQ')
;



