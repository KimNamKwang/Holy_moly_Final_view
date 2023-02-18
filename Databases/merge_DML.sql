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

INSERT INTO PROGRESS_STATUS_TYPE
(PROGRESS_STATUS_UID,PROGRESS_STATUS_TYPE,PROGRESS_STATUS_DESCRIPTION)
VALUES
('INQ_PROG_STAT_WAIT','IN_PROGRESS','문의중'), 
('INQ_PROG_STAT_DONE','COMPLETION','답변완료'),
('SHIP_PROG_STAT_REGI','REGISTER','접수완료'),
('SHIP_PROG_STAT_PICK','PIPCKUP','수거완료'),
('SHIP_PROG_STAT_INPROG','IN PROGRESS','배송중'),
('SHIP_PROG_STAT_COMP','COMPLETE','배송완료')
;

INSERT INTO INQUIRYS
(INQUIRY_UID,INQUIRY_TITLE,INQUIRY_DATE,INQUIRY_CONTENT,INQUIRY_ANSWER,
TRACKING_NUMBER_FOR_INQUIRY,USER_UID,INQUIRY_TYPE_UID,PROGRESS_STATUS_UID)
VALUES
('INQ_230217_1','배송문의드립니다',sysdate(),'어제 발송했는데 며칠이나 걸리는지 문의좀 드릴려고요','네 안녕하세요 고객님...',
'TRK_20230217_1','user1','Q_SHIP','INQ_PROG_STAT_DONE'),
('INQ_230217_2','설 명절선물 세트 판매 문의',sysdate(),'설 명절선물 세트 구매언제능한가요?',null,
null,'user2','Q_COMP_ELSE','INQ_PROG_STAT_WAIT')
;

INSERT INTO REQUESTS
(REQUEST_UID, REQUEST_DESCRIPTION)
VALUES
('REQ_01','기사님 방문 전 연락주세요'),('REQ_02','보낼 물품을 문 앞에 놓아 두겠습니다'),('REQ_03','보낼 물품을 경비실에 맡겨두겠습니다'),
('REQ_04','파손에 주의해 주세요연락주세요'),('REQ_05','배송 시 경비실에 맡겨 주세요'),('REQ_06','배송 시 택배함에 넣어 주세요'),
('REQ_07','배송 시 문앞에 놓아 주세요.')
;

INSERT INTO ITEM_TYPES
(ITEM_TYPE_UID, ITEM_TYPE, ITEM_TYPE_DESCRIPTION)
VALUES
('item_f_01','food','농축산물류'),('item_f_02','food_dried','건어물'),('item_f_03','food_fruits','과일류'),
('item_f_04','food_rice','쌀'),('item_f_05','food_vegetables','채소류'),('item_f_06','food_else','기타'),

('item_b_01','book','서적류'),('item_b_02','book_documents','서류'),('item_b_03','book_publications','서적'),
('item_b_04','book_prints','인쇄물'),('item_b_05','book_else','기타 서적류'),

('item_m_01','medicine','약품류'),('item_m_02','medicine_drugs','의약품'),('item_m_03','medicine_oriental','한약'),
('item_m_04','medicine_healthSupplement','건강보조제품'),('item_m_05','food','농축산물류'),('item_m_06','food','농축산물류'),

('item_c_01','clothing','의류/잡화'),('item_c_02','clothing_clothes','의류'),('item_c_03','clothing_shoes','신발'),
('item_c_04','clothing_bagAndWallets','가방/지갑'),('item_c_05','clothing_accessories','액세서리')
;

INSERT INTO SHIPMENT_TYPES
(SHIPMENT_TYPE_UID, SHIPMENT_TYPE, SHIPMENT_TYPE_DESCRIPTION)
VALUES
('SHIP_GEN','GRNERAL','일반 택배'),('SHIP_BULK','BULF','다량 택배'),('SHIP_PRE','PREMIUN','프리미엄 택배')
;

INSERT INTO SHIPMENT
(TRACKING_NUMBER, NUMBER_OF_ITEMS, SENDER_NAME, SENDER_PHONE, DEPARTURE_POSTALCODE, DEPARTURE_ADDRESS,
DEPARTURE_DETAILADDRESS, DEPARTURE_EXTRAADDRESS, RECIPIENT_NAME, RECIPIENT_PHONE, DESTINATION_POSTALCODE,
DESTINATION_ADDRESS, DESTINATION_DETAILADDRESS, DESTINATION_EXTRAADDRESS, TOTAL_PRICE, ITEM_PRICE,
SHIPMENT_PASSWORD, VISITING_DATE,SHIPMENT_TYPE_UID, REQUEST_UID, ITEM_TYPE_UID, PROGRESS_STATUS_UID)

VALUES
('TRK_20230217_1',2,'홍길동','01045671234','01623','서울시 강남구 테헤란로 14','103호',NULL,'이지금','01014235463',
'02422','서울시 서초구 서초대로14','101동 304호','서초동',50000,25000,1234,'2023-02-19','SHIP_GEN','REQ_04','item_m_02','SHIP_PROG_STAT_REGI'),
('TRK_20230217_2',6,'하야시','01023245533','11920','서울시 강남구 봉은사로 10','307호',NULL,'서운령','01188882222',
'21022','서울시 노원구 동일로 10','1층',NULL,180000,30000,1234,'2023-02-22','SHIP_BULK','REQ_02','item_c_02','SHIP_PROG_STAT_INPROG')
;

