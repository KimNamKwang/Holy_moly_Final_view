
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