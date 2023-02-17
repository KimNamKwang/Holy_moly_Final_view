INSERT INTO MAIN_BOARD 
(BOARD_UID,BOARD_TYPE,BOARD_TYPE_DESCRIPTION) 
VALUES
('UID_NOTICE','NOTICE','공지사항'),
('UID_EVENT','EVENT','이벤트'),
('UID_FAQ','FAQ','FAQ')
-- COMMON_BOARD의 게시글마다 BOARD_UID가 하나씩 들어가고 그 BOARD_UID를 타고 MAIN_BOARD에서 어떤 타입인지 확인하는 것.
;

INSERT INTO  USER_GRADES
(GRADE_UID,GRADE,GRADE_DESCRIPTION)
VALUES
('GRADE_F','FAMILY','FAMILY등급'),
('GRADE_PU','PURPLE','PURPLE등급'),
('GRADE_V','VIP','VIP등급'),
('GRADE_VV','VVIP','VVIP등급'),
('GRADE_PL','PLATINUM','PLATINUM등급')
;

INSERT INTO AUTHS
(AUTH_UID, AUTH, AUTH_DESCRIPTION)
VALUES
('AUTH_U','ROLE_USER','일반 유저'),
('AUTH_A','ROLE_ADMIN','관리자')
;


INSERT INTO USERS
(USER_UID, NAME, PASSWORD, E_MAIL, POSTALCODE, ADDRESS, DETAILADDRESS, EXTRAADDRESS, JOINDATE, PHONE, POINT, 
 GRADE_UID, AUTH_UID)
VALUES
('user1','천혜향','pw123','abc@naver.com','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01012345678',2000,
'GRADE_F','AUTH_U'),
('user2','한라봉','pw123','abc@naver.com','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023456789',1500,
'GRADE_F','AUTH_U'),
('admin1','금귤','pw123','abc@naver.com','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01034567890',null,
'GRADE_PL','AUTH_A')
;

INSERT INTO COMMON_BOARD 
(COMMONBOARD_UID, TITLE, CONTENT, DATE_CREATED, WRITER, VIEWS, BOARD_FILE_NAME, EVENT_START_DATE, EVENT_END_DATE,
 USER_UID, BOARD_UID) 
VALUES
('EVT_20230216_1','이벤트 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_EVENT'),
('EVT_20230216_2','이벤트 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_EVENT'),
('NOT_20230216_1','공지사항 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_NOTICE'),
('NOT_20230216_2','공지사항 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_NOTICE'),
('FAQ_20230216_1','FAQ 제목1','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_FAQ'),
('FAQ_20230216_2','FAQ 제목2','내용부분',sysdate(),'관리자',123,'system.jpg','2022-12-15','2023-02-16',
'admin1','UID_FAQ')
;


INSERT INTO INQUIRY_TYPES
(INQUIRY_TYPE_UID,INQUIRY_TYPE,INQUIRY_TYPE_DESCRIPTION)
VALUES
('Q_SHIP','SHIPMENT','배송문의'),
('Q_GRADE','GRADE','등급문의'),
('Q_COMPEN','COMPENSATION','사고보상처리'),
('Q_COMP_ELSE','COMPLAINORELSE','기타/서비스불만')
;