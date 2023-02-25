-- adminBoardCreate
-- 유저가 게시글을 올리는 권한은 없으므로 WRITER와 USER_UID는 각각 관리자와 admin1로 고정.
-- 신규 등록이므로 VIEWS는 0으로 고정.
-- 게시판 분류 select name은 BOARD_UID, 각 option의 value는 해당하는 BOARD_UID로 넣고 선택된 옵션의 value가 이 구문의 BOARD_UID 부분의 value로 들어가야 함.
-- FAQ_TYPE_UID도 마찬가지로 문의 유형 select의 name은 FAQ_TYPE_UID, 각 option의 value는 해당하는 FAQ_TYPE_UID. 선택된 옵션의 값이 들어가도록.
INSERT INTO COMMON_BOARD (COMMONBOARD_UID, TITLE, CONTENT, DATE_CREATED, WRITER, VIEWS, USER_UID,
		BOARD_UID, FAQ_TYPE_UID)
VALUES ('BOARD23', '커미가 너무 써요', '강사님... 제가 아직 애기인가봐요', SYSDATE(), '관리자', 0, 'admin1',
		'BOARD_FAQ', 'FAQ_SHIPPING');

-- adminBoardCreate 이벤트 기간
-- COMMONBOARD_UID에는 위 INSERT COMMON_BOARD 문의 COMMONBOARD_UID가 들어가야 함. function으로 생성된 COMMONBOARD_UID를 넣으면 됨.
INSERT INTO EVENT_DATE_BOARD (EVENT_DATE_UID, EVENT_START_DATE, EVENT_END_DATE, COMMONBOARD_UID)
VALUES ('EVENT_D1', '2023-02-22', '2023-02-28', 'BOARD23');
        
-- adminUserCreate
-- jsp 등급 select에서 각각의 option value를 해당하는 GRADE_UID로 지정해야 함. select의 name은 GRADE_UID.
-- 선택 후 등록 버튼을 눌렀을 때 GRADE_UID=GRADE_F 식으로 백에 넘어가고 그것을 이 insert문 GRADE_UID value로 넣어 줘야 함.
-- AUTH_UID는 하드코딩으로 AUTH_U로 고정.
INSERT INTO USERS (USER_UID, NAME, PASSWORD, E_MAIL, BIRTH_DATE, POSTALCODE, ADDRESS, DETAILADDRESS,
			EXTRAADDRESS, JOINDATE, PHONE, MARKETING_RECEIVE_ACCEPTION, GRADE_UID, AUTH_UID) 
VALUES ('user20', '최자두', 'jaja123', 'jadu@daum.com', '1999-12-03', '29105', '서울시 동작구 로스테로 104-2', '204호', 
		'(동작동)', SYSDATE(), '01012343541', 'N', 'GRADE_F', 'AUTH_U');

-- join_step
-- 1, 2 에서는 hidden으로 넘기고 3에서 4로 넘어갈 때 한 번에 INSERT.
-- GRADE_UID, AUTH_UID는 하드코딩으로 'GRADE_F', 'AUTH_U'로 고정.
INSERT INTO USERS (USER_UID, NAME, PASSWORD, E_MAIL, BIRTH_DATE, POSTALCODE, ADDRESS, DETAILADDRESS,
			EXTRAADDRESS, JOINDATE, PHONE, MARKETING_RECEIVE_ACCEPTION, GRADE_UID, AUTH_UID) 
VALUES ('use15', '강성석', 'qwezxc12', 'sung@daum.com', '2002-05-27', '31942', '부산시 해운대로 13', '2층', 
		'해운대동', SYSDATE(), '01027273838', 'N', 'GRADE_F', 'AUTH_U');

-- memberInquiry
-- 문의 유형 select name은 INQUIRY_TYPE_UID, 각 option의 value는 해당하는 INQUIRY_TYPE_UID 내용으로 지정해야 함.
-- 그래서 넘겼을 때 들어온 value가 INQUIRY_TYPE_UID value로 들어가게 해야 함.
-- USER_UID는 로그인 되어 있는 user의 USER_UID는를 가져와야 함.
-- INQUIRY_ANSWER와 PROGRESS_STATUS_UID는 각각 NULL, INQ_PROG_STAT_WAIT으로 고정.
INSERT INTO INQUIRYS (INQUIRY_UID, INQUIRY_TITLE, INQUIRY_DATE, INQUIRY_CONTENT, INQUIRY_ANSWER,
		TRACKING_NUMBER_FOR_INQUIRY, USER_UID, INQUIRY_TYPE_UID, PROGRESS_STATUS_UID)
VALUES ('INQ_230222_1', '오늘 점심 메뉴는?', SYSDATE(), '배고픈데 오늘 점심 메뉴는 뭐가 좋을까요?', NULL, '123456789',
		'user6', 'Q_COMP_ELSE', 'INQ_PROG_STAT_WAIT');

-- reservationForHome/Bulk 2에서 3으로 넘어갈 때 INSERT 되도록.
-- reservationInfo 에서 reservationForPremiumStep2 로 넘어갈 때 INSERT
-- 물품종류 select name은 ITEM_TYPE_UID, 요청사항 select name은 REQUEST_UID로 지정하고 각 option의 value에는 해당하는 UID값을 넣어야 함.
-- SHIPMENT_TYPE_UID는 예약페이지로 들어가는 경로에 따라 값을 담아뒀다가 해당하는 경로에 대한 UID를 넣어 주어야 함.
-- PROGRESS_STATUS_UID는 SHIP_PROG_STAT_REGI(접수완료)로 고정.
INSERT INTO SHIPMENT (TRACKING_NUMBER, NUMBER_OF_ITEMS, SENDER_NAME, SENDER_PHONE, DEPARTURE_POSTALCODE,
		DEPARTURE_ADDRESS, DEPARTURE_DETAILADDRESS, DEPARTURE_EXTRAADDRESS, RECIPIENT_NAME, RECIPIENT_PHONE,
        DESTINATION_POSTALCODE, DESTINATION_ADDRESS, DESTINATION_DETAILADDRESS, DESTINATION_EXTRAADDRESS,
        TOTAL_PRICE, ITEM_PRICE, SHIPMENT_PASSWORD, VISITING_DATE, RESERVATION_DATE, SHIPMENT_COMPLETION_DATE,
        SHIPMENT_TYPE_UID, REQUEST_UID, ITEM_TYPE_UID, PROGRESS_STATUS_UID)
VALUES ('123412341', 1, '하쿠나', '01040920302', '29304', '대전광역시 중앙로 104', '3층', '(은행동)', '마타타',
		'01029392949','대구광역시 중구 남방로 213', '1901호', NULL, 8970, 20000, 2412, '2023-02-22', SYSDATE(),
        '2023-02-25', 'SHIP_GEN', 'REQ_07', 'item_b_01', 'SHIP_PROG_STAT_REGI');
