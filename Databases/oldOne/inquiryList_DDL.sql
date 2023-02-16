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