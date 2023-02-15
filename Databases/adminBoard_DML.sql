INSERT INTO BOARD 
(BOARD_UID,BOARD_TITLE,BOARD_TYPE,BOARD_CONTENT,BOARD_FILE_NAME,BOARD_DATE) 
VALUES
('B230215_1','속보)김석진 데이터베이스 6행시 성공...','B_NOTICE','김석진씨가 로지텍 마우스를 구매한것으로 알려져 충격을 주고 있다','',sysdate()), 
('B230215_2','김석진 6행시 성공기념 이벤트 응모','B_EVENT','커피쿠폰 무료 이벤트를 시작합니다','coffee_coupon_eveny.jpg',sysdate());

SELECT * FROM BOARD;
