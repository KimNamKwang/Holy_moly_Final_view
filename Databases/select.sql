-- adminBoard
-- TITLE, DATE_CREATED, BOARD_TYPE_DESCRIPTION
-- 게시글 제목, 작성일, 게시판 분류 설명
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.DATE_CREATED, MAIN_BOARD.BOARD_TYPE_DESCRIPTION
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON MAIN_BOARD.BOARD_UID = COMMON_BOARD.BOARD_UID;

-- adminBoard 총 게시판수
-- COUNT(*) AS TOTAL_BOARD
-- 총 개수
SELECT COUNT(*) AS TOTAL_BOARD
FROM COMMON_BOARD;

-- adminBoardUpdate
-- TITLE, CONTENT, BOARD_TYPE_DESCRIPTION, FILE_FOLDER_NAME, ORIGINALFILE_NAME
-- 게시글 제목, 게시글 내용, 게시판 분류 설명, 파일 폴더명, 파일명
-- 하드코딩
SELECT COMMON_BOARD.TITLE, MAIN_BOARD.BOARD_TYPE_DESCRIPTION, COMMON_BOARD.CONTENT,
		ATTACHED_FILES.FILE_FOLDER_NAME, ATTACHED_FILES.ORIGINALFILE_NAME
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON MAIN_BOARD.BOARD_UID = COMMON_BOARD.BOARD_UID
INNER JOIN ATTACHED_FILES
ON COMMON_BOARD.COMMONBOARD_UID = ATTACHED_FILES.COMMONBOARD_UID
WHERE COMMON_BOARD.COMMONBOARD_UID = 'NOT_20230216_1';

-- adminInquiry
-- NAME, USER_UID, INQUIRY_TITLE, INQUIRY_DATE, INQUIRY_CONTENT, INQUIRY_ANSWER, INQUIRY_TYPE
-- 사용자 이름, 사용자 아이디, 문의제목, 문의날짜, 문의내용, 1:1문의 답변, 문의유형
SELECT USERS.NAME, USERS.USER_UID, INQUIRY_TYPES.INQUIRY_TYPE_DESCRIPTION, INQUIRYS.INQUIRY_TITLE, INQUIRYS.INQUIRY_DATE, INQUIRYS.INQUIRY_CONTENT, 
		INQUIRYS.INQUIRY_ANSWER
FROM INQUIRY_TYPES INNER JOIN INQUIRYS 
ON INQUIRY_TYPES.INQUIRY_TYPE_UID = INQUIRYS.INQUIRY_TYPE_UID
INNER JOIN USERS
ON INQUIRYS.USER_UID = USERS.USER_UID
;

-- adminInquiry 총 문의수
-- COUNT(*) AS TOTAL_INQUIRYS
-- 총 개수
SELECT COUNT(*) AS TOTAL_INQUIRYS
FROM INQUIRYS;

-- adminUsers
-- NAME, USER_UID, JOINDATE, BIRTH_DATE, PHONE, E_MAIL, ADDRESS, DETAILADDRESS, EXTRAADDRESS, GRADE
-- 사용자 이름, 사용자 아이디, 가입일, 전화번호, 사용자 이메일, 주소, 상세주소, 주소참고사항, 등급
SELECT USERS.NAME, USERS.USER_UID, USERS.JOINDATE, USERS.BIRTH_DATE, USERS.PHONE, USERS.E_MAIL, USERS.ADDRESS,
		USERS.DETAILADDRESS, USERS.EXTRAADDRESS, USER_GRADES.GRADE
FROM USER_GRADES INNER JOIN USERS
ON USERS.GRADE_UID = USER_GRADES.GRADE_UID;

-- adminUsers 총 인원수
-- COUNT(*) AS TOTAL_USER
-- 총 개수
SELECT COUNT(*) AS TOTAL_USER
FROM USERS;

-- adminUserUpdate
-- NAME, USER_UID, PASSWORD, BIRTH_DATE, GRADE, E_MAIL, PHONE, POSTALCODE, ADDRESS, DETAILADDRESS, EXTRAADDRESS
-- 사용자 이름, 사용자 아이디, 사용자 비밀번호, 생년월일, 등급, 사용자 이메일, 전화번호, 우편번호, 주소, 상세주소, 주소참고사항
-- 하드코딩
SELECT USERS.NAME, USERS.USER_UID, USERS.PASSWORD, USERS.BIRTH_DATE, USERS.PHONE, USERS.POSTALCODE, USERS.E_MAIL, USERS.ADDRESS,
		USERS.DETAILADDRESS, USERS.EXTRAADDRESS, USER_GRADES.GRADE
FROM USER_GRADES INNER JOIN USERS
ON USERS.GRADE_UID = USER_GRADES.GRADE_UID
WHERE USER_UID = 'user1';

-- eventList
-- TITLE, CONTENT, DATE_CREATED, FILE_FOLDER_NAME, ORIGINALFILE_NAME, EVENT_START_DATE, EVENT_END_DATE
-- 게시글 제목, 게시글 내용, 작성일, 파일 폴더명, 파일명, 이벤트 시작 일, 이벤트 끝일
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.CONTENT, COMMON_BOARD.DATE_CREATED, ATTACHED_FILES.FILE_FOLDER_NAME,
		ATTACHED_FILES.ORIGINALFILE_NAME, EVENT_DATE_BOARD.EVENT_START_DATE, EVENT_DATE_BOARD.EVENT_END_DATE
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON MAIN_BOARD.BOARD_UID = COMMON_BOARD.BOARD_UID
INNER JOIN ATTACHED_FILES
ON COMMON_BOARD.COMMONBOARD_UID = ATTACHED_FILES.COMMONBOARD_UID
INNER JOIN EVENT_DATE_BOARD
ON COMMON_BOARD.EVENT_DATE_UID = EVENT_DATE_BOARD.EVENT_DATE_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'EVENT';

-- eventList 페이지네이션
SELECT *
FROM COMMON_BOARD INNER JOIN MAIN_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'EVENT'
order by COMMON_BOARD.COMMONBOARD_UID
LIMIT 0, 4;

-- eventView
-- TITLE, CONTENT, DATE_CREATED, BOARD_FILE_NAME
-- 게시글 제목, 게시글 내용, 작성일, 파일 폴더명, 파일명
-- 하드코딩
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.CONTENT, COMMON_BOARD.DATE_CREATED, ATTACHED_FILES.FILE_FOLDER_NAME,
		ATTACHED_FILES.ORIGINALFILE_NAME
FROM COMMON_BOARD INNER JOIN ATTACHED_FILES
ON COMMON_BOARD.COMMONBOARD_UID = ATTACHED_FILES.COMMONBOARD_UID
WHERE COMMON_BOARD.COMMONBOARD_UID = 'EVT_20230216_2';

-- IdResult_su
-- USER_UID
-- 사용자 아이디
-- 하드코딩
SELECT USER_UID
FROM USERS
WHERE USER_UID = 'user2';

-- index 이벤트
-- BOARD_FILE_NAME, TITLE, DATE_CREATED
-- 게시글 제목, 작성일
SELECT ATTACHED_FILES.FILE_FOLDER_NAME, ATTACHED_FILES.ORIGINALFILE_NAME
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
INNER JOIN ATTACHED_FILES
ON COMMON_BOARD.COMMONBOARD_UID = ATTACHED_FILES.COMMONBOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'EVENT';

-- index 공지사항
-- TITLE, DATE_CREATED
-- 게시글 제목, 작성일
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.DATE_CREATED
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'EVENT';

-- index 사이드바
-- NAME, USER_UID, GRADE, POINT_CHANGE_VALUE, COUNT(INQUIRYS.INQUIRY_UID) AS POINT
-- 하드코딩
SELECT USERS.NAME, USERS.USER_UID, USER_GRADES.GRADE, SUM(POINT.POINT_CHANGE_VALUE) AS POINT
FROM USER_GRADES INNER JOIN USERS
ON USER_GRADES.GRADE_UID = USERS.GRADE_UID
INNER JOIN POINT
ON USERS.USER_UID = POINT.USER_UID
WHERE USERS.USER_UID = 'user2';

-- index 사이드바 내 문의 개수, mypage 내 문의 현황 개수
-- 하드코딩
SELECT COUNT(*) AS TOTAL_USER_INQUIRYS
FROM INQUIRYS
WHERE USER_UID = 'user2'; 

-- inquiryList
-- INQUIRY_TITLE, INQUIRY_DATE, INQUIRY_TYPE_DESCRIPTION, PROGRESS_STATUS_DESCRIPTION
-- 문의제목, 문의날짜, 문의유형 설명, 진행상태설명
-- 하드코딩
SELECT INQUIRYS.INQUIRY_TITLE, INQUIRYS.INQUIRY_DATE, INQUIRY_TYPES.INQUIRY_TYPE_DESCRIPTION,
		PROGRESS_STATUS_TYPE.PROGRESS_STATUS_DESCRIPTION
FROM PROGRESS_STATUS_TYPE INNER JOIN INQUIRYS
ON PROGRESS_STATUS_TYPE.PROGRESS_STATUS_UID = INQUIRYS.PROGRESS_STATUS_UID
INNER JOIN INQUIRY_TYPES
ON INQUIRYS.INQUIRY_TYPE_UID = INQUIRY_TYPES.INQUIRY_TYPE_UID
INNER JOIN USERS
ON INQUIRYS.USER_UID = USERS.USER_UID
WHERE USERS.USER_UID = 'user1';

-- inquiryView
-- INQUIRY_TITLE, INQUIRY_DATE, INQUIRY_CONTENT, INQUIRY_TYPE_DESCRIPTION
-- 문의제목, 문의날짜, 문의내용, 문의유형 설명
-- 하드코딩
SELECT INQUIRYS.INQUIRY_TITLE, INQUIRYS.INQUIRY_DATE, INQUIRYS.INQUIRY_CONTENT, INQUIRY_TYPES.INQUIRY_TYPE_DESCRIPTION
FROM INQUIRY_TYPES INNER JOIN INQUIRYS
ON INQUIRY_TYPES.INQUIRY_TYPE_UID = INQUIRYS.INQUIRY_TYPE_UID
WHERE INQUIRY_UID = 'INQ_230217_2';

-- join_step4
-- BIRTH_DATE, NAME, PHONE, ADDRESS, DETAILADDRESS, EXTRAADDRESS, E_MAIL, USER_UID
-- 생년월일, 사용자 이름, 전화번호, 주소, 상세주소, 주소참고사항, 사용자 이메일, 사용자 아이디
-- 하드코딩
SELECT BIRTH_DATE, NAME, PHONE, ADDRESS, DETAILADDRESS, EXTRAADDRESS, E_MAIL, USER_UID
FROM USERS
WHERE USER_UID = 'user1' ;

-- myinfo
-- NAME, BIRTH_DATE, PASSWORD, PHONE, POSTALCODE, ADDRESS, DETAILADDRESS, EXTRAADDRESS
-- 사용자 이름, 생년월일, 사용자 비밀번호, 전화번호, 우편번호, 주소, 상세주소, 주소참고사항
-- 하드코딩
SELECT NAME, BIRTH_DATE, PASSWORD, PHONE, POSTALCODE, ADDRESS, DETAILADDRESS, EXTRAADDRESS
FROM USERS
WHERE USER_UID = 'user3' ;

-- myinfoPass
-- USER_UID
-- 하드코딩
SELECT USER_UID
FROM USERS
WHERE USER_UID = 'user1';

-- mypage
-- NAME, GRADE, SUM(POINT.POINT_CHANGE_VALUE) AS POINT, SHIPMENT_TYPE_DESCRIPTION, RESERVATION_DATE, SHIPMENT_COMPLETION_DATE, RECIPIENT_PHONE,
-- RECIPIENT_NAME, DESTINATION_ADDRESS, DESTINATION_DETAILADDRESS, DESTINATION_EXTRAADDRESS
-- 사용자 이름, 등급, 포인트, 배송타입 설명, 예약날짜, 배송완료일자, 수령자 전화번호, 수령자 이름, 목적지 주소, 목적지 상세주소, 목적지 주소 참고사항
-- 하드코딩
SELECT USERS.NAME, USER_GRADES.GRADE, SUM(POINT.POINT_CHANGE_VALUE) AS POINT, SHIPMENT_TYPES.SHIPMENT_TYPE_DESCRIPTION,
		SHIPMENT.RESERVATION_DATE, SHIPMENT.SHIPMENT_COMPLETION_DATE, SHIPMENT.RECIPIENT_PHONE, SHIPMENT.RECIPIENT_NAME,
        SHIPMENT.DESTINATION_ADDRESS, SHIPMENT.DESTINATION_DETAILADDRESS, SHIPMENT.DESTINATION_EXTRAADDRESS
FROM USER_GRADES INNER JOIN USERS
ON USER_GRADES.GRADE_UID = USERS.GRADE_UID
INNER JOIN MYPAGE
ON USERS.USER_UID = MYPAGE.USER_UID
INNER JOIN POINT
ON USERS.USER_UID = POINT.USER_UID
INNER JOIN SHIPMENT
ON MYPAGE.TRACKING_NUMBER = SHIPMENT.TRACKING_NUMBER
INNER JOIN SHIPMENT_TYPES
ON SHIPMENT.SHIPMENT_TYPE_UID = SHIPMENT_TYPES.SHIPMENT_TYPE_UID
WHERE USERS.USER_UID = 'user2';

-- noticeList
-- TITLE, DATE_CREATED
-- 게시글 제목, 작성일
SELECT TITLE, DATE_CREATED
FROM COMMON_BOARD INNER JOIN MAIN_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'NOTICE';

-- noticeList 총 공지사항수
-- COUNT(*) AS TOTAL_NOTICE
-- 총 개수
SELECT COUNT(*) AS TOTAL_NOTICE
FROM COMMON_BOARD INNER JOIN MAIN_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'NOTICE';

-- noticeList 페이지네이션
SELECT *
FROM COMMON_BOARD INNER JOIN MAIN_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
WHERE MAIN_BOARD.BOARD_TYPE = 'NOTICE'
order by COMMON_BOARD.COMMONBOARD_UID
LIMIT 0, 5;

-- noticeView
-- TITLE, DATE_CREATED, VIEWS, CONTENT, FILE_FOLDER_NAME, ORIGINALFILE_NAME
-- 게시글 제목, 작성일, 조회수, 게시글 내용, 파일 폴더명, 파일명
-- 하드코딩
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.DATE_CREATED, COMMON_BOARD.CONTENT,
		ATTACHED_FILES.FILE_FOLDER_NAME, ATTACHED_FILES.ORIGINALFILE_NAME
FROM ATTACHED_FILES INNER JOIN COMMON_BOARD
ON ATTACHED_FILES.COMMONBOARD_UID = COMMON_BOARD.COMMONBOARD_UID
WHERE COMMON_BOARD.COMMONBOARD_UID = 'EVT_20230216_1';

-- reservationForHomeStep3, reservationForHomeBulkStep4
-- VISITING_DATE, NUMBER_OF_ITEMS, TOTAL_PRICE, SENDER_NAME, SENDER_PHONE, DEPARTURE_ADDRESS,
-- DEPARTURE_DETAILADDRESS, DEPARTURE_EXTRAADDRESS, DESTINATION_POSTALCODE, RECIPIENT_PHONE, DESTINATION_ADDRESS,
-- DESTINATION_DETAILADDRESS, DESTINATION_EXTRAADDRESS, ITEM_TYPE_DESCRIPTION, ITEM_PRICE
-- 방문희망일, 총 발송 수량, 총요금, 발신자 이름, 발신자 전화번호, 출발지 주소, 출발지 상세주소, 출발지 주소 참고사항, 목적지 우편번호, 수령자 전화번호,
-- 목적지 주소, 목적지 상세주소, 목적지 주소 참고사항, 물품종류설명, 물품단가
-- 하드코딩
SELECT SHIPMENT.VISITING_DATE, SHIPMENT.NUMBER_OF_ITEMS, SHIPMENT.TOTAL_PRICE, SHIPMENT.SENDER_NAME, SHIPMENT.SENDER_PHONE,
		SHIPMENT.DEPARTURE_ADDRESS, SHIPMENT.DEPARTURE_DETAILADDRESS, SHIPMENT.DEPARTURE_EXTRAADDRESS, 
        SHIPMENT.DESTINATION_POSTALCODE, SHIPMENT.RECIPIENT_PHONE, SHIPMENT.DESTINATION_ADDRESS,
        SHIPMENT.DESTINATION_DETAILADDRESS, SHIPMENT.DESTINATION_EXTRAADDRESS, ITEM_TYPES.ITEM_TYPE_DESCRIPTION,
        SHIPMENT.ITEM_PRICE
FROM ITEM_TYPES INNER JOIN SHIPMENT
ON ITEM_TYPES.ITEM_TYPE_UID = SHIPMENT.ITEM_TYPE_UID
WHERE SHIPMENT.TRACKING_NUMBER = 'TRK_20230217_2';

-- trackShipInquiry
-- TRACKING_NUMBER, RESERVATION_DATE, RECIPIENT_NAME, ITEM_TYPE_DESCRIPTION, SENDER_NAME, PROGRESS_STATUS_DESCRIPTION
-- 운송장번호, 예약날짜, 수령자 이름, 물품종류설명, 발신자 이름, 진행상태설명
-- 하드코딩
SELECT SHIPMENT.TRACKING_NUMBER, SHIPMENT.RESERVATION_DATE, SHIPMENT.RECIPIENT_NAME,
		ITEM_TYPES.ITEM_TYPE_DESCRIPTION, SHIPMENT.SENDER_NAME, PROGRESS_STATUS_TYPE.PROGRESS_STATUS_DESCRIPTION
FROM PROGRESS_STATUS_TYPE INNER JOIN SHIPMENT
ON PROGRESS_STATUS_TYPE.PROGRESS_STATUS_UID = SHIPMENT.PROGRESS_STATUS_UID
INNER JOIN ITEM_TYPES
ON SHIPMENT.ITEM_TYPE_UID = ITEM_TYPES.ITEM_TYPE_UID
WHERE TRACKING_NUMBER = 'TRK_20230217_1';