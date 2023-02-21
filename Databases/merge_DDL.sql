
CREATE TABLE ATTACHED_FILES
(
  FILE_UID          VARCHAR(100) NOT NULL COMMENT '파일UID',
  ORIGINALFILE_NAME VARCHAR(100) NOT NULL COMMENT '파일명',
  FILE_FOLDER_NAME  VARCHAR(100) NOT NULL COMMENT '파일 폴더명',
  COMMONBOARD_UID   VARCHAR(100) NOT NULL COMMENT '게시글 UID',
  PRIMARY KEY (FILE_UID)
) COMMENT '첨부파일';

CREATE TABLE AUTHS
(
  AUTH_UID         VARCHAR(100) NOT NULL COMMENT '권한UID',
  AUTH             VARCHAR(100) NOT NULL COMMENT '권한',
  AUTH_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '권한설명',
  PRIMARY KEY (AUTH_UID)
) COMMENT '권한';

CREATE TABLE COMMON_BOARD
(
  COMMONBOARD_UID  VARCHAR(100) NOT NULL COMMENT '게시글 UID',
  TITLE            VARCHAR(100) NOT NULL COMMENT '게시글 제목',
  CONTENT          VARCHAR(500) NULL     COMMENT '게시글 내용',
  DATE_CREATED     DATETIME     NOT NULL COMMENT '작성일',
  WRITER           VARCHAR(100) NOT NULL COMMENT '작성자',
  VIEWS            INTEGER      NULL     COMMENT '조회수',
  EVENT_START_DATE DATETIME     NULL     COMMENT '이벤트 시작 일',
  EVENT_END_DATE   DATETIME     NULL     COMMENT '이벤트 끝일',
  USER_UID         VARCHAR(100) NULL     COMMENT '사용자 아이디',
  BOARD_UID        VARCHAR(100) NOT NULL COMMENT '게시판 타입UID',
  PRIMARY KEY (COMMONBOARD_UID)
) COMMENT '전체 게시판';

CREATE TABLE INQUIRY_TYPES
(
  INQUIRY_TYPE_UID         VARCHAR(100) NOT NULL COMMENT '문의유형UID',
  INQUIRY_TYPE             VARCHAR(100) NOT NULL COMMENT '문의유형',
  INQUIRY_TYPE_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '문의유형 설명',
  PRIMARY KEY (INQUIRY_TYPE_UID)
) COMMENT '문의유형';

CREATE TABLE INQUIRYS
(
  INQUIRY_UID                 VARCHAR(100) NOT NULL COMMENT '1:1문의 UID',
  INQUIRY_TITLE               VARCHAR(100) NOT NULL COMMENT '문의제목',
  INQUIRY_DATE                DATETIME     NOT NULL COMMENT '문의날짜',
  INQUIRY_CONTENT             VARCHAR(500) NOT NULL COMMENT '문의내용',
  INQUIRY_ANSWER              VARCHAR(500) NULL     COMMENT '1:1문의 답변',
  TRACKING_NUMBER_FOR_INQUIRY VARCHAR(100) NULL     COMMENT '1:1 문의용 운송장번호',
  USER_UID                    VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  INQUIRY_TYPE_UID            VARCHAR(100) NOT NULL COMMENT '문의유형UID',
  PROGRESS_STATUS_UID         VARCHAR(100) NOT NULL COMMENT '진행상태UID',
  PRIMARY KEY (INQUIRY_UID)
) COMMENT '1:1문의 목록';

CREATE TABLE ITEM_TYPES
(
  ITEM_TYPE_UID         VARCHAR(100) NOT NULL COMMENT '물품종류UID',
  ITEM_TYPE             VARCHAR(100) NOT NULL COMMENT '물품종류',
  ITEM_TYPE_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '물품종류설명',
  PRIMARY KEY (ITEM_TYPE_UID)
) COMMENT '물품종류';

CREATE TABLE MAIN_BOARD
(
  BOARD_UID              VARCHAR(100) NOT NULL COMMENT '게시판 타입UID',
  BOARD_TYPE             VARCHAR(100) NOT NULL COMMENT '게시판 분류 코드',
  BOARD_TYPE_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '게시판 분류 설명',
  PRIMARY KEY (BOARD_UID)
) COMMENT '게시판';

CREATE TABLE MYPAGE
(
  TRACKING_NUMBER VARCHAR(100) NULL     COMMENT '운송장번호',
  USER_UID        VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  INQUIRY_UID     VARCHAR(100) NULL     COMMENT '1:1문의 UID'
) COMMENT '마이페이지';

CREATE TABLE POINT
(
  POINT_UID                VARCHAR(100) NOT NULL COMMENT '포인트별UID',
  POINT_CHANGE_VALUE       INTEGER      NULL     COMMENT '포인트 변화 값',
  POINT_CHANGE_DATE        DATETIME     NULL     COMMENT '적립/사용 날짜',
  USER_UID                 VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  PRIMARY KEY (POINT_UID)
) COMMENT '포인트';


CREATE TABLE PROGRESS_STATUS_TYPE
(
  PROGRESS_STATUS_UID         VARCHAR(100) NOT NULL COMMENT '진행상태UID',
  PROGRESS_STATUS_TYPE        VARCHAR(100) NOT NULL COMMENT '진행상태유형',
  PROGRESS_STATUS_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '진행상태설명',
  PRIMARY KEY (PROGRESS_STATUS_UID)
) COMMENT '진행상태유형';

CREATE TABLE REQUESTS
(
  REQUEST_UID         VARCHAR(100) NOT NULL COMMENT '요청사항UID',
  REQUEST_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '요청사항 설명',
  PRIMARY KEY (REQUEST_UID)
) COMMENT '요청사항';

CREATE TABLE SHIPMENT
(
  TRACKING_NUMBER           VARCHAR(100) NOT NULL COMMENT '운송장번호',
  NUMBER_OF_ITEMS           INTEGER      NOT NULL COMMENT '총 발송 수량',
  SENDER_NAME               VARCHAR(100) NOT NULL COMMENT '발신자 이름',
  SENDER_PHONE              VARCHAR(100) NOT NULL COMMENT '발신자 전화번호',
  DEPARTURE_POSTALCODE      VARCHAR(100) NOT NULL COMMENT '출발지 우편번호',
  DEPARTURE_ADDRESS         VARCHAR(100) NOT NULL COMMENT '출발지 주소',
  DEPARTURE_DETAILADDRESS   VARCHAR(100) NOT NULL COMMENT '출발지 상세주소',
  DEPARTURE_EXTRAADDRESS    VARCHAR(100) NULL     COMMENT '출발지 주소 참고사항',
  RECIPIENT_NAME            VARCHAR(100) NOT NULL COMMENT '수령자 이름',
  RECIPIENT_PHONE           VARCHAR(100) NOT NULL COMMENT '수령자 전화번호',
  DESTINATION_POSTALCODE    VARCHAR(100) NOT NULL COMMENT '목적지 우편번호',
  DESTINATION_ADDRESS       VARCHAR(100) NOT NULL COMMENT '목적지 주소',
  DESTINATION_DETAILADDRESS VARCHAR(100) NOT NULL COMMENT '목적지 상세주소',
  DESTINATION_EXTRAADDRESS  VARCHAR(100) NULL     COMMENT '목적지 주소 참고사항',
  TOTAL_PRICE               INTEGER      NOT NULL COMMENT '총요금',
  ITEM_PRICE                INTEGER      NOT NULL COMMENT '물품단가',
  SHIPMENT_PASSWORD         INTEGER      NOT NULL COMMENT '배송비밀번호',
  VISITING_DATE             DATETIME     NOT NULL COMMENT '방문희망일',
  RESERVATION_DATE          DATETIME     NOT NULL COMMENT '예약날짜',
  SHIPMENT_COMPLETION_DATE  DATETIME     NULL     COMMENT '배송완료일자',
  SHIPMENT_TYPE_UID         VARCHAR(100) NOT NULL COMMENT '배송타입 UID',
  REQUEST_UID               VARCHAR(100) NULL     COMMENT '요청사항UID',
  ITEM_TYPE_UID             VARCHAR(100) NOT NULL COMMENT '물품종류UID',
  PROGRESS_STATUS_UID       VARCHAR(100) NOT NULL COMMENT '진행상태UID',
  PRIMARY KEY (TRACKING_NUMBER)
) COMMENT '배송예약';

CREATE TABLE SHIPMENT_TYPES
(
  SHIPMENT_TYPE_UID         VARCHAR(100) NOT NULL COMMENT '배송타입 UID',
  SHIPMENT_TYPE             VARCHAR(100) NOT NULL COMMENT '배송타입',
  SHIPMENT_TYPE_DESCRIPTION VARCHAR(100) NOT NULL COMMENT '배송타입 설명',
  PRIMARY KEY (SHIPMENT_TYPE_UID)
) COMMENT '배송종류';

CREATE TABLE USER_GRADES
(
  GRADE_UID         VARCHAR(100) NOT NULL COMMENT '등급UID',
  GRADE             VARCHAR(100) NOT NULL COMMENT '등급',
  GRADE_DESCRIPTION VARCHAR(500) NOT NULL COMMENT '등급설명',
  PRIMARY KEY (GRADE_UID)
) COMMENT '사용자 등급';

CREATE TABLE USERS
(
  USER_UID                    VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  NAME                        VARCHAR(100) NOT NULL COMMENT '사용자 이름',
  PASSWORD                    VARCHAR(100) NOT NULL COMMENT '사용자 비밀번호',
  E_MAIL                      VARCHAR(100) NULL     COMMENT '사용자 이메일',
  BIRTH_DATE                  DATETIME     NOT NULL COMMENT '사용자 생년월일',
  POSTALCODE                  VARCHAR(100) NOT NULL COMMENT '우편번호',
  ADDRESS                     VARCHAR(100) NOT NULL COMMENT '주소',
  DETAILADDRESS               VARCHAR(100) NOT NULL COMMENT '상세주소',
  EXTRAADDRESS                VARCHAR(100) NULL     COMMENT '주소참고사항',
  JOINDATE                    DATETIME     NOT NULL COMMENT '가입일',
  PHONE                       VARCHAR(100) NULL     COMMENT '전화번호',
  MARKETING_RECEIVE_ACCEPTION VARCHAR(100) NULL     COMMENT '마케팅수신동의',
  GRADE_UID                   VARCHAR(100) NOT NULL COMMENT '등급UID',
  AUTH_UID                    VARCHAR(100) NOT NULL COMMENT '권한UID',
  PRIMARY KEY (USER_UID)
) COMMENT '사용자들';

ALTER TABLE MYPAGE
  ADD CONSTRAINT FK_SHIPMENT_TO_MYPAGE
    FOREIGN KEY (TRACKING_NUMBER)
    REFERENCES SHIPMENT (TRACKING_NUMBER);

ALTER TABLE MYPAGE
  ADD CONSTRAINT FK_USERS_TO_MYPAGE
    FOREIGN KEY (USER_UID)
    REFERENCES USERS (USER_UID);

ALTER TABLE INQUIRYS
  ADD CONSTRAINT FK_USERS_TO_INQUIRYS
    FOREIGN KEY (USER_UID)
    REFERENCES USERS (USER_UID);

ALTER TABLE COMMON_BOARD
  ADD CONSTRAINT FK_USERS_TO_COMMON_BOARD
    FOREIGN KEY (USER_UID)
    REFERENCES USERS (USER_UID);

ALTER TABLE COMMON_BOARD
  ADD CONSTRAINT FK_MAIN_BOARD_TO_COMMON_BOARD
    FOREIGN KEY (BOARD_UID)
    REFERENCES MAIN_BOARD (BOARD_UID);

ALTER TABLE MYPAGE
  ADD CONSTRAINT FK_INQUIRYS_TO_MYPAGE
    FOREIGN KEY (INQUIRY_UID)
    REFERENCES INQUIRYS (INQUIRY_UID);

ALTER TABLE USERS
  ADD CONSTRAINT FK_USER_GRADES_TO_USERS
    FOREIGN KEY (GRADE_UID)
    REFERENCES USER_GRADES (GRADE_UID);

ALTER TABLE USERS
  ADD CONSTRAINT FK_AUTHS_TO_USERS
    FOREIGN KEY (AUTH_UID)
    REFERENCES AUTHS (AUTH_UID);

ALTER TABLE SHIPMENT
  ADD CONSTRAINT FK_SHIPMENT_TYPES_TO_SHIPMENT
    FOREIGN KEY (SHIPMENT_TYPE_UID)
    REFERENCES SHIPMENT_TYPES (SHIPMENT_TYPE_UID);

ALTER TABLE SHIPMENT
  ADD CONSTRAINT FK_REQUESTS_TO_SHIPMENT
    FOREIGN KEY (REQUEST_UID)
    REFERENCES REQUESTS (REQUEST_UID);

ALTER TABLE SHIPMENT
  ADD CONSTRAINT FK_ITEM_TYPES_TO_SHIPMENT
    FOREIGN KEY (ITEM_TYPE_UID)
    REFERENCES ITEM_TYPES (ITEM_TYPE_UID);

ALTER TABLE INQUIRYS
  ADD CONSTRAINT FK_INQUIRY_TYPES_TO_INQUIRYS
    FOREIGN KEY (INQUIRY_TYPE_UID)
    REFERENCES INQUIRY_TYPES (INQUIRY_TYPE_UID);

ALTER TABLE INQUIRYS
  ADD CONSTRAINT FK_PROGRESS_STATUS_TYPE_TO_INQUIRYS
    FOREIGN KEY (PROGRESS_STATUS_UID)
    REFERENCES PROGRESS_STATUS_TYPE (PROGRESS_STATUS_UID);

ALTER TABLE SHIPMENT
  ADD CONSTRAINT FK_PROGRESS_STATUS_TYPE_TO_SHIPMENT
    FOREIGN KEY (PROGRESS_STATUS_UID)
    REFERENCES PROGRESS_STATUS_TYPE (PROGRESS_STATUS_UID);

ALTER TABLE POINT
  ADD CONSTRAINT FK_USERS_TO_POINT
    FOREIGN KEY (USER_UID)
    REFERENCES USERS (USER_UID);

ALTER TABLE ATTACHED_FILES
  ADD CONSTRAINT FK_COMMON_BOARD_TO_ATTACHED_FILES
    FOREIGN KEY (COMMONBOARD_UID)
    REFERENCES COMMON_BOARD (COMMONBOARD_UID);
