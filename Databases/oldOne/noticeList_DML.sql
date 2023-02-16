INSERT INTO NOTICE_BOARD 
(NOTICE_UID,TITLE,CONTENT,DATE_CREATED,WRITER,VIEWS,NOTICE_FILE_NAME) 
VALUES('NOT_230215_1','속보)김석진 데이터베이스 6행시 성공...','김석진씨가 로지텍 마우스를 구매한것으로 알려져 충격을 주고 있다',sysdate(),
'관리자',183,''),
('NOT_230215_2','오늘 점심메뉴 공지','점심메뉴는 어떤 것으로 할지 투표를 통해 공지합니다',sysdate(),
'관리자',102,'lunch_menu_final.png');

select * from NOTICE_BOARD;