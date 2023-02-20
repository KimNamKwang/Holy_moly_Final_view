-- adminBoard
-- TITLE, DATE_CREATED, BOARD_TYPE_DESCRIPTION
-- 게시글 제목, 작성일, 게시판 분류 설명
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.DATE_CREATED, MAIN_BOARD.BOARD_TYPE_DESCRIPTION
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON MAIN_BOARD.BOARD_UID = COMMON_BOARD.BOARD_UID;

-- adminBoardCreate, adminBoardUpdate
-- TITLE, CONTENT, BOARD_TYPE_DESCRIPTION, BOARD_FILE_NAME
-- 게시글 제목, 게시글 내용, 게시판 분류 설명, 게시글 파일 명
SELECT COMMON_BOARD.TITLE, COMMON_BOARD.CONTENT, COMMON_BOARD.BOARD_FILE_NAME, MAIN_BOARD.BOARD_TYPE_DESCRIPTION
FROM MAIN_BOARD INNER JOIN COMMON_BOARD
ON MAIN_BOARD.BOARD_UID = COMMON_BOARD.BOARD_UID;

-- adminInquiry
-- NAME, USER_UID, INQUIRY_TITLE, INQUIRY_DATE, INQUIRY_CONTENT, INQUIRY_ANSWER, INQUIRY_TYPE
-- 사용자 이름, 사용자 아이디, 문의제목, 문의날짜, 문의내용, 1:1문의 답변, 문의유형
SELECT USERS.NAME, USERS.USER_UID, INQUIRY_TYPES.INQUIRY_TYPE, INQUIRYS.INQUIRY_TITLE, INQUIRYS.INQUIRY_DATE, INQUIRYS.INQUIRY_CONTENT, 
		INQUIRYS.INQUIRY_ANSWER
FROM INQUIRY_TYPES INNER JOIN INQUIRYS 
ON INQUIRY_TYPES.INQUIRY_TYPE_UID = INQUIRYS.INQUIRY_TYPE_UID
INNER JOIN USERS
ON INQUIRYS.USER_UID = USERS.USER_UID;

-- adminUsers
-- NAME, USER_UID, JOINDATE, PHONE, E_MAIL, ADDRESS, DETAILADDRESS, EXTRAADDRESS, GRADE
-- 사용자 이름, 사용자 아이디, 가입일, 전화번호, 사용자 이메일, 주소, 상세주소, 주소참고사항, 등급
SELECT USERS.NAME, USERS.USER_UID, USERS.JOINDATE, USERS.PHONE, USERS.E_MAIL, USERS.ADDRESS,
		USERS.DETAILADDRESS, USERS.EXTRAADDRESS, USER_GRADES.GRADE
FROM USER_GRADES INNER JOIN USERS
ON USERS.GRADE_UID = USER_GRADES.GRADE_UID;

-- adminUserCreate, adminUserUpdate
-- NAME, USER_UID, PASSWORD, GRADE, E_MAIL, PHONE, ADDRESS, DETAILADDRESS, EXTRAADDRESS, 
-- 사용자 이름, 사용자 아이디, 사용자 비밀번호, 등급, 사용자 이메일, 전화번호, 주소, 상세주소, 주소참고사항
SELECT USERS.NAME, USERS.USER_UID, USERS.PASSWORD, USERS.PHONE, USERS.E_MAIL, USERS.ADDRESS,
		USERS.DETAILADDRESS, USERS.EXTRAADDRESS, USER_GRADES.GRADE
FROM USER_GRADES INNER JOIN USERS
ON USERS.GRADE_UID = USER_GRADES.GRADE_UID;

-- eventList
-- TITLE, CONTENT, DATE_CREATED, BOARD_FILE_NAME, EVENT_START_DATE, EVENT_END_DATE
-- 게시글 제목, 게시글 내용, 작성일, 게시글 파일 명, 이벤트 시작 일, 이벤트 끝일
SELECT TITLE, CONTENT, DATE_CREATED, BOARD_FILE_NAME, EVENT_START_DATE, EVENT_END_DATE
FROM COMMON_BOARD INNER JOIN MAIN_BOARD
ON COMMON_BOARD.BOARD_UID = MAIN_BOARD.BOARD_UID
AND MAIN_BOARD.BOARD_TYPE = 'EVENT';

-- eventView
-- TITLE, CONTENT, DATE_CREATED, BOARD_FILE_NAME, EVENT_START_DATE, EVENT_END_DATE
-- 게시글 제목, 게시글 내용, 작성일, 게시글 파일 명, 이벤트 시작 일, 이벤트 끝일
SELECT TITLE, CONTENT, DATE_CREATED, BOARD_FILE_NAME, EVENT_START_DATE, EVENT_END_DATE
FROM COMMON_BOARD;

-- IdResult_su
-- USER_UID
-- 사용자 아이디
SELECT USER_UID
FROM USERS;