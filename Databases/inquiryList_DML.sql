INSERT INTO INQUIRY_LIST 
(INQUIRY_UID,INQUIRY_TITLE,INQUIRY_DATE,INQUIRY_TYPE,INQUIRY_CONTENT,
PROGRESS_STATUS, TRACKING_NUMBER, USER_NAME,USER_UID,USER_EMAIL,USER_PHONE_NUMBER) 
VALUES
('INQ_230215_1','홈페이지가 안 열려요',sysdate(),'OTHERS_INQUIRY','홈페이지가 잘 안 열립니다 왜 이런거죠',
'COMPLETED','TNUM_20230215_1','천혜향','user1','abc@naver.com','01012345678'),
('INQ_230215_2','배송날짜문의요',sysdate(),'SHIPPING_INQUIRY','어제 발송했는데 제주도에 언제쯤 도착할까요',
'WAITING','TNUM_20230215_2','한라봉','user2','aasc@daum.net','01023456789');

select * from INQUIRY_LIST;