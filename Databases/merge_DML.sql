INSERT INTO MAIN_BOARD 
(BOARD_UID,BOARD_TYPE,BOARD_TYPE_DESCRIPTION) 
VALUES
('BOARD_NOTICE','NOTICE','공지사항'),
('BOARD_EVENT','EVENT','이벤트'),
('BOARD_FAQ_REGISTER','FAQ','FAQ 접수문의'),
('BOARD_FAQ_SHIPPING','FAQ_SHIPPING','FAQ 배송문의'),
('BOARD_FAQ_MAP','FAQ_MAP','FAQ 지도문의'),
('BOARD_FAQ_ACCIDENT','FAQ_ACCIDENT','FAQ 사고문의')
-- COMMON_BOARD의 게시글마다 BOARD_UID가 하나씩 들어가고 그 BOARD_UID를 타고 MAIN_BOARD에서 어떤 타입인지 확인하는 것.
;

INSERT INTO FAQ_TYPE 
(FAQ_TYPE_UID, FAQ_TYPE, FAQ_TYPE_DESCRIPTION, BOARD_UID)
VALUES
('FAQ_REGISTER', 'REGISTER','FAQ 접수문의', 'BOARD_FAQ'),
('FAQ_SHIPPING','SHIPPING','FAQ 배송문의','BOARD_FAQ'),
('FAQ_MAP','MAP','FAQ 지도문의','BOARD_FAQ'),
('FAQ_ACCIDENT','ACCIDENT','FAQ 사고문의','BOARD_FAQ')
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
(USER_UID, NAME, PASSWORD, E_MAIL, BIRTH_DATE, POSTALCODE, ADDRESS, DETAILADDRESS, EXTRAADDRESS, JOINDATE, PHONE, 
  MARKETING_RECEIVE_ACCEPTION, GRADE_UID, AUTH_UID)
VALUES
('user1','천혜향','pw123','abc@naver.com','1995-03-21','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01012345678',
'Y', 'GRADE_F','AUTH_U'),
('user2','한라봉','pw123','abc@naver.com','2000-08-15','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023456789',
'Y','GRADE_F','AUTH_U'),
('user3','금귤','pw123','abc@naver.com','1992-07-07','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023456789',
'N(NULL이면 N으로 들어가게 하던지 체크가 안되면 으로 들어가게 하던지.)','GRADE_F','AUTH_U'),
('user4','안성국','pw123','ask123@naver.com','2005-02-11','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023256789',
'Y','GRADE_PL','AUTH_U'),
('user5','천호연','pw123','choyeon@naver.com','1992-01-01','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01021456789',
'Y','GRADE_V','AUTH_U'),
('user6','채치수','pw123','sizechae@naver.com','1990-10-07','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'0103556789',
NULL,'GRADE_PU','AUTH_U'),
('user7','강백호','pw123','power@naver.com','1992-07-25','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023643789',
'Y','GRADE_V','AUTH_U'),
('user8','이재현','pw123','jhlee@naver.com','1992-02-08','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023956789',
'N(NULL이면 N으로 들어가게 하던지 체크가 안되면 으로 들어가게 하던지.)','GRADE_F','AUTH_U'),
('user9','김남광','pw123','kjf@naver.com','1999-09-01','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01023456569',
NULL,'GRADE_PU','AUTH_U'),
('user10','김석진','pw123','sjk@naver.com','1999-10-17','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01053456789',
'Y','GRADE_F','AUTH_U'),
('user11','안지영','pw123','elle@naver.com','2019-07-07','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01090456789',
'Y','GRADE_F','AUTH_U'),
('user12','왕지영','pw123','KINGelle@naver.com','2019-07-07','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01185889955',
'Y','GRADE_V','AUTH_U'),
('admin1','관리자','pw123','abc@naver.com','1983-06-30','01684','서울시 강남구 테헤란로 84','101호','',sysdate(),'01030067890',
NULL,'GRADE_PL','AUTH_A')
;

INSERT INTO POINT
(POINT_UID, POINT_CHANGE_VALUE, POINT_CHANGE_DATE, USER_UID)
VALUES
('POINT_230221_1',+800,'2022-01-11','USER1'),
('POINT_230221_2',+1000,'2022-09-14','USER1'),
('POINT_230221_3',+2000,'2022-11-26','USER2'),
('POINT_230223_1',-100,'2022-11-28','USER2'),
('POINT_230223_2',+300,'2023-01-14','USER3'),
('POINT_230226_1',-200,'2023-02-20','USER3')
-- 총 합계는 db에서 나타내지 않고 나중에 sum해서 화면에서 보여주면 된다.
;

select SUM(POINT_CHANGE_VALUE) FROM POINT where USER_UID = 'user2';


INSERT INTO COMMON_BOARD 
(COMMONBOARD_UID, TITLE, CONTENT, DATE_CREATED, WRITER, VIEWS, EVENT_START_DATE, EVENT_END_DATE,
 USER_UID, BOARD_UID) 
VALUES
('EVT_20230216_1','김석진 데이터베이스 6행시 성공 기념 이벤트','이번 이벤트는 로지텍 마우스 추첨행사입니다',sysdate(),'관리자',123,'2022-12-15','2023-02-16',
'admin1','BOARD_EVENT'),
('EVT_20230216_2','김석진 로지텍 마우스 당첨 기념 이벤트','로지텍 마우스에 당첨되신 분에 한해 로지텍 햄스터를 드립니다.',sysdate(),'관리자',100,'2023-01-10','2023-02-16',
'admin1','BOARD_EVENT'),
('NOT_20230216_1','3월 배송지연 안내','2023년 3월 1일부터 12일까지 배송이 지연됩니다.',sysdate(),'관리자',15,NULL,NULL,
'admin1','BOARD_NOTICE'),
('NOT_20230216_2','배송비 인상 안내','2023년 3월부터 배송비가 인상됩니다.',sysdate(),'관리자',76,NULL,NULL,
'admin1','BOARD_NOTICE'),
('NOT_20230221_1','한파로 인한 배송지연 안내','최근 한파로 인해 도로사정이 좋지 않아 배송이 지연됩니다.',sysdate(),'관리자',9,NULL,NULL,
'admin1','BOARD_NOTICE'),
('NOT_20230221_2','악성 사용자 제재','최근 DDOS등을 이용해 서버를 공격하는 악성사용자들을 제재할 예정입니다.',sysdate(),'관리자',31,NULL,NULL,
'admin1','BOARD_NOTICE'),
('NOT_20230221_3','홀리몰리 포스트를 사랑해주시는 고객님들께','안녕하세요 고객님! 저희 홀리몰리 포스트를 이용해주셔서 감사드립니다..람쥐.',sysdate(),'관리자',571,NULL,NULL,
'admin1','BOARD_NOTICE'),
('NOT_20230221_4','일부 지역 배송불가 안내','폭설로 인해 제주.산간 및 도서지역은 현재 배송이 불가능합니다.',sysdate(),'관리자',152,NULL,NULL,
'admin1','BOARD_NOTICE'),
('FAQ_20230216_1','FAQ 접수문의1','내용부분',sysdate(),'천혜향',NULL,NULL,NULL,
'user1','BOARD_FAQ_REGISTER'),
('FAQ_20230216_2','FAQ 접수문의2','내용부분',sysdate(),'한라봉',NULL,NULL,NULL,
'user2','BOARD_FAQ_REGISTER'),
('FAQ_20230216_3','FAQ 배송문의1','내용부분',sysdate(),'천혜향',NULL,NULL,NULL,
'user1','BOARD_FAQ_SHIPPING'),
('FAQ_20230216_4','FAQ 배송문의2','내용부분',sysdate(),'한라봉',NULL,NULL,NULL,
'user2','BOARD_FAQ_SHIPPING'),
('FAQ_20230216_5','FAQ 지도문의1','내용부분',sysdate(),'천혜향',NULL,NULL,NULL,
'user1','BOARD_FAQ_MAP'),
('FAQ_20230216_6','FAQ 지도문의2','내용부분',sysdate(),'한라봉',NULL,NULL,NULL,
'user2','BOARD_FAQ_MAP'),
('FAQ_20230216_7','FAQ 사고문의1','내용부분',sysdate(),'천혜향',NULL,NULL,NULL,
'user1','BOARD_FAQ_ACCIDENT'),
('FAQ_20230216_8','FAQ 사고문의2','내용부분',sysdate(),'한라봉',NULL,NULL,NULL,
'user2','BOARD_FAQ_ACCIDENT')
;

INSERT INTO ATTACHED_FILES
(FILE_UID, ORIGINALFILE_NAME, FILE_FOLDER_NAME, COMMONBOARD_UID)
VALUES
('FILE_230221_1','logitech_mouse.jpg','files_for_event','EVT_20230216_1'),
('FILE_230221_2','logitech_hamster.jpg','files_for_event','EVT_20230216_2'),
('FILE_230223_1','sorry.png','files_for_notice','NOT_20230216_1'),
('FILE_230224_1','squirrel.txt','files_for_notice','NOT_20230221_3')
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
null,'user2','Q_COMP_ELSE','INQ_PROG_STAT_WAIT'),
('INQ_230217_3','등급문의드립니다',sysdate(),'월 결제 금액 얼마부터 PURPLE인가요?','네 고객님 저희 내부 규정상...',
null,'user3','Q_GRADE','INQ_PROG_STAT_DONE'),
('INQ_230217_4','파손보상문의',sysdate(),'물품이 파손되어서 보상처리 신청합니다',null,
null,'user1','Q_COMPEN','INQ_PROG_STAT_WAIT'),
('INQ_230217_5','어제 배송했는데요',sysdate(),'도착했다고 하는데 물건이 없는데요?','네 안녕하세요 고객님 저희가 배송기사측에',
'TRK_20230217_2','user3','Q_SHIP','INQ_PROG_STAT_DONE'),
('INQ_230217_6','개인정보사용처가 어떻게 되나요?',sysdate(),'제 개인정보 사용처가 알고 싶은데요','네 고객님 저희 홈페이지 메인에 이용약관을...',
null,'user2','Q_COMP_ELSE','INQ_PROG_STAT_DONE'),
('INQ_230217_7','다음달 등급을 알 수 있을까요',sysdate(),'다음달 등급 미리 알 수 있나요?',null,
null,'user2','Q_GRADE','INQ_PROG_STAT_WAIT')
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
SHIPMENT_PASSWORD, VISITING_DATE,     RESERVATION_DATE, SHIPMENT_COMPLETION_DATE,   SHIPMENT_TYPE_UID, REQUEST_UID, ITEM_TYPE_UID, PROGRESS_STATUS_UID)

VALUES
('TRK_20230217_1',2,'홍길동','01045671234','01623','서울시 강남구 테헤란로 14','103호',NULL,'이지금','01014235463',
'02422','서울시 서초구 서초대로14','101동 304호','서초동',50000,25000,1234,'2023-02-19', sysdate(),'2023-02-22','SHIP_GEN','REQ_04','item_m_02','SHIP_PROG_STAT_COMP'),
('TRK_20230217_2',6,'하야시','01023245533','11920','서울시 강남구 봉은사로 10','307호',NULL,'서운령','01188882222',
'21022','서울시 노원구 동일로 10','1층',NULL,180000,30000,2546,'2023-02-22', sysdate(),NULL,'SHIP_BULK','REQ_02','item_c_02','SHIP_PROG_STAT_INPROG'),
('TRK_20230221_1',1,'왕지영','01185889955','01684','서울시 강남구 테헤란로 84','101호',NULL,'강백호','01023643789',
'01134','서울시 노원구 동일로 23','옥상',NULL,100000,100000,2345,'2023-02-22', sysdate(),NULL,'SHIP_GEN','REQ_03','item_c_03','SHIP_PROG_STAT_INPROG'),
('TRK_20230221_2',6,'모코코','01099889955','01234','서울시 서초구 서초대로 3길','501동 301호',NULL,'권호성','01025323789',
'04334','경기도 이천시 이천로 54-3','가동 3층',NULL,180000,30000,8458,'2023-02-10', '2023-02-12','2023-02-15','SHIP_BULK','REQ_03','item_c_03','SHIP_PROG_STAT_COMP')
;


INSERT INTO MYPAGE
(TRACKING_NUMBER, USER_UID, INQUIRY_UID)
VALUES
('TRK_20230217_1','user1','INQ_230217_1'),('TRK_20230217_2','user2',null)
;
