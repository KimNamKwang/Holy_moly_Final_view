-- 컬럼 타입을 변경하는 쿼리
ALTER TABLE USERS MODIFY PHONE VARCHAR(100);

-- 컬럼안의 데이터를 삭제하는 쿼리
DELETE FROM USERS WHERE USER_UID = 'user2';

-- select 쿼리
SELECT * FROM USERS;