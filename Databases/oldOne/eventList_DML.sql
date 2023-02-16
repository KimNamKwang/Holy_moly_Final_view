INSERT INTO EVENT_BOARD 
(EVENT_UID,EVENT_START_DATE,EVENT_END_DATE,TITLE,CONTENT,DATE_CREATED,WRITER) 
VALUES
('EVT_230215_1','2023-01-16','2023-03-10','로지텍 마우스 추첨 이벤트','로지텍 마우스를 100분께 무료로 추첨',sysdate(),'관리자'),
('EVT_230215_2','2023-02-15','2023-03-15','김석진 6행시 성공기념 이벤트 응모','안녕하세요 홀몰택배입니다 이번...',sysdate(),'관리자')
;

select * from EVENT_BOARD;