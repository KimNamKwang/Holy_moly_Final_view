
CREATE TABLE BOARD
(
  BOARD_UID       VARCHAR(100) NOT NULL COMMENT '게시글UID',
  BOARD_TITLE     VARCHAR(100) NOT NULL COMMENT '게시글 제목',
  BOARD_TYPE      VARCHAR(100) NOT NULL COMMENT '게시판 분류',
  BOARD_CONTENT   VARCHAR(500) NULL     COMMENT '게시글 내용',
  BOARD_FILE_NAME VARCHAR(100) NULL     COMMENT '파일 이름',
  BOARD_DATE      DATETIME     NOT NULL COMMENT '게시글 등록일',
  PRIMARY KEY (BOARD_UID)
) COMMENT '게시판';

CREATE TABLE USERS
(
  USER_UID      VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  NAME          VARCHAR(100) NOT NULL COMMENT '사용자 이름',
  PASSWORD      VARCHAR(100) NOT NULL COMMENT '사용자 비밀번호',
  E_MAIL        VARCHAR(100) NULL     COMMENT '사용자 이메일',
  POSTALCODE    VARCHAR(100) NOT NULL COMMENT '우편번호',
  ADDRESS       VARCHAR(100) NOT NULL COMMENT '주소',
  ADDRESSDETAIL VARCHAR(100) NOT NULL COMMENT '상세주소',
  JOINDATE      DATETIME     NOT NULL COMMENT '가입일',
  PHONE         VARCHAR(100) NULL     COMMENT '전화번호',
  GRADE         VARCHAR(100) NOT NULL COMMENT '사용자 등급',
  USER_AUTH     VARCHAR(100) NOT NULL COMMENT '사용자 권한',
  POINT         INTEGER NULL COMMENT '포인트',
  PRIMARY KEY (USER_UID)
) COMMENT '사용자들';

CREATE TABLE EVENT_BOARD
(
  EVENT_UID        VARCHAR(100) NOT NULL COMMENT '이벤트UID',
  EVENT_START_DATE DATETIME     NULL     COMMENT '이벤트 시작일',
  EVENT_END_DATE   DATETIME     NULL     COMMENT '이벤트 끝나는 날',
  TITLE            VARCHAR(100) NOT NULL COMMENT '제목',
  CONTENT          VARCHAR(500) NULL     COMMENT '내용',
  DATE_CREATED     DATETIME     NOT NULL COMMENT '작성일',
  WRITER           VARCHAR(100) NOT NULL COMMENT '작성자',
  BOARD_FILE_NAME VARCHAR(100) NULL     COMMENT '파일 이름'
  PRIMARY KEY (EVENT_UID)
) COMMENT '이벤트게시판';

CREATE TABLE FAQ
(
  FAQ_UID  VARCHAR(100) NOT NULL COMMENT '질문답변UID',
  TITLE    VARCHAR(100) NOT NULL COMMENT '제목',
  CONTENT  VARCHAR(500) NOT NULL COMMENT '내용',
  FAQ_TYPE VARCHAR(100) NOT NULL COMMENT '문의종류',
  PRIMARY KEY (FAQ_UID)
) COMMENT '질문답변';

CREATE TABLE INQUIRY_LIST
(
  INQUIRY_UID VARCHAR(100) NOT NULL COMMENT '1:1문의 UID',
  INQUIRY_TITLE    VARCHAR(100) NOT NULL COMMENT '문의제목',
  INQUIRY_DATE     DATETIME     NOT NULL COMMENT '문의날짜',
  INQUIRY_TYPE     VARCHAR(100) NOT NULL COMMENT '문의유형',
  INQUIRY_CONTENT  VARCHAR(500) NOT NULL COMMENT '문의내용',
  PROGRESS_STATUS  VARCHAR(100) NOT NULL COMMENT '진행상태',
  TRACKING_NUMBER  VARCHAR(100)     NULL COMMENT '운송장번호',
  USER_NAME         VARCHAR(100) NOT NULL COMMENT '사용자이름',
  USER_UID          VARCHAR(100) NOT NULL COMMENT '사용자아이디',
  USER_EMAIL        VARCHAR(100) NOT NULL COMMENT '사용자이메일',
  USER_PHONE_NUMBER VARCHAR(100) NOT NULL COMMENT '사용자휴대폰번호',
  -- USER_UID, USER_NAME 등 외래키로 필요
  PRIMARY KEY (INQUIRY_UID)
) COMMENT '1:1문의 목록';

CREATE TABLE MYPAGE
(
  -- 외래키 모음
  USER_UID        VARCHAR(100) NOT NULL COMMENT '사용자아이디',
  USER_NAME       VARCHAR(100) NOT NULL COMMENT '사용자이름',
  USER_GRADE      VARCHAR(100) NOT NULL COMMENT '사용자등급',
  POINT           INTEGER      NULL COMMENT '포인트',
  INQUIRY_UID     VARCHAR(100) NOT NULL COMMENT '1:1문의 UID',
  TRACKING_NUMBER VARCHAR(100) NOT NULL COMMENT '운송장번호'
  -- 외래키 INQUIRY_LIST에서 INQUIRY_UID
  -- 외래키 SHIPPING_RESERVATION에서 TRACKING_NUMBER 등 외래키
 
) COMMENT '마이페이지';

CREATE TABLE NOTICE_BOARD
(
  NOTICE_UID   VARCHAR(100) NOT NULL COMMENT '공지사항UID',
  TITLE        VARCHAR(100) NOT NULL     COMMENT '제목',
  CONTENT      VARCHAR(500) NULL     COMMENT '내용',
  DATE_CREATED DATETIME     NOT NULL     COMMENT '작성일',
  WRITER       VARCHAR(100) NOT NULL     COMMENT '작성자',
  VIEWS        INTEGER NOT NULL     COMMENT '조회수',
  BOARD_FILE_NAME VARCHAR(100) NULL     COMMENT '파일 이름'
  PRIMARY KEY (NOTICE_UID)
) COMMENT '공지사항 게시판';


CREATE TABLE SHIPMENT
(
  TRACKING_NUMBER           VARCHAR(100) NOT NULL COMMENT '운송장번호',
  ITEM_TYPE                 VARCHAR(100) NOT NULL COMMENT '물품종류',
  NUMBER_OF_ITEMS           INTEGER      NOT NULL COMMENT '총 발송 수량',
  SENDER_NAME               VARCHAR(100) NOT NULL COMMENT '발신자 이름',
  SENDER_PHONE              VARCHAR(100) NOT NULL COMMENT '발신자 전화번호',
  DEPARTURE_POSTALCODE      VARCHAR(100) NOT NULL COMMENT '출발지 우편번호',
  DEPARTURE_ADDRESS         VARCHAR(100) NOT NULL COMMENT '출발지 주소',
  DEPARTURE_DETAILADDRESS   VARCHAR(100) NOT NULL COMMENT '출발지 상세주소',
  DEPARTURE_EXTRAADDRESS    VARCHAR(100)     NULL COMMENT '출발지 주소 참고사항',
  RECIPIENT_NAME            VARCHAR(100) NOT NULL COMMENT '수령자 이름',
  RECIPIENT_PHONE           VARCHAR(100) NOT NULL COMMENT '수령자 전화번호',
  DESTINATION_POSTALCODE    VARCHAR(100) NOT NULL COMMENT '목적지 우편번호',
  DESTINATION_ADDRESS       VARCHAR(100) NOT NULL COMMENT '목적지 주소',
  DESTINATION_DETAILADDRESS VARCHAR(100) NOT NULL COMMENT '목적지 상세주소',
  DESTINATION_EXTRAADDRESS  VARCHAR(100)     NULL COMMENT '목적지 주소 참고사항',
  REQUEST                   VARCHAR(100)     NULL COMMENT '요청사항',
  TOTAL_PRICE               INTEGER      NOT NULL COMMENT '총요금',
  ITEM_PRICE                INTEGER      NOT NULL COMMENT '물품단가',
  SHIPMENT_PASSWORD         INTEGER      NOT NULL COMMENT '배송비밀번호',
  VISITING_DATE             DATETIME     NOT NULL COMMENT '방문희망일',
  PROGRESS_STATUS  			VARCHAR(100) NOT NULL COMMENT '배송진행상태',
  PRIMARY KEY (TRACKING_NUMBER)
) COMMENT '배송예약';