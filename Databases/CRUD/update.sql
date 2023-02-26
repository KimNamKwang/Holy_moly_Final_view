-- adminBoardUpdate
-- 위 Create와 마찬가지
UPDATE COMMON_BOARD
SET TITLE = '최명식', CONTENT = 'jaja12343', E_MAIL = 'jadu@naver.com', BIRTH_DATE = '1990-12-03',
		POSTALCODE = '55555', ADDRESS = '서울시 동작구 로스테로 555-55', DETAILADDRESS = '505호', EXTRAADDRESS = '(동작동)',
        PHONE = '01055556666', GRADE_UID = 'GRADE_F'
WHERE USER_UID = 'user20';

-- adminBoardUpdate 이벤트 기간
UPDATE EVENT_DATE_BOARD
SET EVENT_START_DATE = '2023-02-23', EVENT_END_DATE = '2023-03-01'
WHERE EVENT_DATE_UID = 'EVENT_D1';

-- adminUserUpdate
-- 위 Create와 마찬가지의 과정으로, jsp select name과 option value 수정해야 함.
-- USER_UID, MARKETING_RECEIVE_ACCEPTION, AUTH_UID 는 수정 항목에 해당하지 않음
UPDATE USERS
SET NAME = '최명식', PASSWORD = 'jaja12343', E_MAIL = 'jadu@naver.com', BIRTH_DATE = '1990-12-03',
		POSTALCODE = '55555', ADDRESS = '서울시 동작구 로스테로 555-55', DETAILADDRESS = '505호', EXTRAADDRESS = '(동작동)',
        PHONE = '01055556666', GRADE_UID = 'GRADE_F'
WHERE USER_UID = 'user20';

-- adminInquiry
-- 1:1 답변은 해당하는 1:1 데이터의 INQUIRY_ANSWER 부분이 들어가는 것이므로 UPDATE 사용
-- 답변을 다는 것이므로 PROGRESS_STATUS_UID는 INQ_PROG_STAT_DONE로 고정.
UPDATE INQUIRYS
SET INQUIRY_ANSWER = '답변드립니다. ...', PROGRESS_STATUS_UID = 'INQ_PROG_STAT_DONE'
WHERE INQUIRY_UID = 'INQ_230217_2';

-- adminInquiry 답글삭제
-- SET은 고정값.
UPDATE INQUIRYS
SET INQUIRY_ANSWER = '', PROGRESS_STATUS_UID = 'INQ_PROG_STAT_WAIT'
WHERE INQUIRY_UID = 'INQ_230217_2';

-- myinfo
-- NAME, E_MAIL, BIRTH_DATE, JOINDATE, MARKETING_RECEIVE_ACCEPTION, GRADE_UID, AUTH_UID는 수정 항목이 아님
UPDATE USERS
SET PASSWORD = 'pspswwdd', PHONE = '01122456457', POSTALCODE ='11111', ADDRESS = '제주시 서귀포로 241',
			DETAILADDRESS = '1층', EXTRAADDRESS = '(서귀포동)'
WHERE USER_UID = 'user3';


-- noticeView
-- 조회수 증가
UPDATE COMMON_BOARD
SET VIEWS = VIEWS + 1
WHERE COMMONBOARD_UID = 'NOT_20230221_2';