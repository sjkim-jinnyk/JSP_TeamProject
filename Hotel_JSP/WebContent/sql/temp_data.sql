-- id, 비밀번호
INSERT INTO hotel_admin VALUES('ADMIN', '0000');
INSERT INTO hotel_admin VALUES('매니저', '0000');

-- id, 비밀번호, 이름, 성별, 전화번호, 주소, 이메일, 포인트, 가입일
INSERT INTO hotel_user VALUES('id1', '0000', '사용자1', '남성', '010-0000-0000', '서울시 마포구 서교동', 'id1@naver.com', DEFAULT, SYSDATE);
INSERT INTO hotel_user VALUES('id2', '0000', '사용자2', '여성', '010-1111-1111', '서울시 서초구 반포동', 'id2@naver.com', DEFAULT, SYSDATE);
INSERT INTO hotel_user VALUES('id3', '0000', '사용자3', '여성', '010-2222-2222', '포항시 북구 두호동', 'id3@naver.com', DEFAULT, SYSDATE);
INSERT INTO hotel_user VALUES('id4', '0000', '사용자4', '남성', '010-3333-3333', '인천광역시 부평구 부평동', 'id4@naver.com', DEFAULT, SYSDATE);

-- 게시물 번호, 작성자id, 제목, 내용, 조회수, 작성일
INSERT INTO info VALUES(1, 'ADMIN', '공지사항1', '공지사항1 내용', DEFAULT, SYSDATE);
INSERT INTO info VALUES(2, 'ADMIN', '공지사항2', '공지사항2 내용', DEFAULT, SYSDATE);
INSERT INTO info VALUES(3, '매니저', '공지사항3', '공지사항3 내용', DEFAULT, SYSDATE);
INSERT INTO info VALUES(4, '매니저', '공지사항4', '공지사항4 내용', DEFAULT, SYSDATE);

-- 게시물 번호, 작성자id, 제목, 내용, 원본게시물 번호, 답변 출력 순서, 작성일, 조회수, 이미지
INSERT INTO qna VALUES(1, 'id1', '질문1', '질문1 내용', 1, 0, SYSDATE, DEFAULT, 'qna1.jpg');
INSERT INTO qna VALUES(2, 'id2', '질문2', '질문2 내용', 2, 0, SYSDATE, DEFAULT, 'qna2.jpg');
INSERT INTO qna VALUES(3, 'id3', '질문3', '질문3 내용', 3, 0, SYSDATE, DEFAULT, 'qna3.jpg');
INSERT INTO qna VALUES(4, 'id4', '질문4', '질문4 내용', 4, 0, SYSDATE, DEFAULT, 'qna4.jpg');
INSERT INTO qna VALUES(5, 'ADMIN', 're:질문2', '질문2 내용에 대한 답변', 2, 1, SYSDATE, DEFAULT, 'qna2-1.jpg');
INSERT INTO qna VALUES(6, '매니저', 're:질문4', '질문4 내용에 대한 답변', 4, 1, SYSDATE, DEFAULT, 'qna4-1.jpg');

-- 방 이름, 가격, 방 설명, 이미지, 방 크기
INSERT INTO room VALUES('DELUXE KING', 426800, 'Mountain View', 'DELUXE KING.jpg', 46.7);
INSERT INTO room VALUES('DELUXE TWIN', 475300, 'Poolside View', 'DELUXE TWIN.jpg', 46.7);
INSERT INTO room VALUES('KIDS DELUXE FAMILY TWIN', 523800, 'Poolside View', 'KIDS DELUXE FAMILY TWIN.jpg', 46.7);
INSERT INTO room VALUES('HILL STUDIO SUITE TWIN', 870000, 'Panorama View', 'HILL STUDIO SUITE TWIN.jpg', 89);
INSERT INTO room VALUES('PRESTIGE HILL SUITE', 1700000, 'Panorama View', 'PRESTIGE HILL SUITE.jpg', 193.1);

-- 예약번호, 예약id, 방 이름, 예약일, 체크인 날짜, 체크아웃 날짜, 성인 인원수, 어린이 인원수, 성인 조식 수, 어린이 조식 수, 총 가격, 요청사항
-- 체크인, 체크아웃 시간은 기본적으로 정해져있으므로 날짜만 입력, 조식은 자동으로 투숙일 만큼 제공
INSERT INTO reserve VALUES(1, 'id1', 'DELUXE KING', SYSDATE, '2021-06-07', '2021-06-10', 1, DEFAULT, 1, DEFAULT, 541800, '요청사항');
INSERT INTO reserve VALUES(2, 'id2', 'DELUXE TWIN', SYSDATE, '2021-06-10', '2021-06-11', 1, DEFAULT, DEFAULT, DEFAULT, 475300, '요청사항');
INSERT INTO reserve VALUES(3, 'id3', 'KIDS DELUXE FAMILY TWIN', SYSDATE, '2021-06-09', '2021-06-12', 2, 2, 2, 2, 2003400, '요청사항');
INSERT INTO reserve VALUES(4, 'id4', 'PRESTIGE HILL SUITE', SYSDATE, '2021-06-11', '2021-06-12', 2, DEFAULT, 2, DEFAULT, 1790000, '요청사항');
INSERT INTO reserve VALUES(5, 'id2', 'DELUXE KING', SYSDATE, '2021-07-07', '2021-07-10', 1, DEFAULT, 1, DEFAULT, 541800, '요청사항');
INSERT INTO reserve VALUES(6, 'id3', 'DELUXE TWIN', SYSDATE, '2021-07-10', '2021-07-11', 1, DEFAULT, DEFAULT, DEFAULT, 475300, '요청사항');
INSERT INTO reserve VALUES(7, 'id4', 'KIDS DELUXE FAMILY TWIN', SYSDATE, '2021-07-09', '2021-07-12', 2, 2, 2, 2, 2003400, '요청사항');
INSERT INTO reserve VALUES(8, 'id1', 'PRESTIGE HILL SUITE', SYSDATE, '2021-07-11', '2021-07-12', 2, DEFAULT, 2, DEFAULT, 1790000, '요청사항');

-- 객실 이름, 객실 호수
INSERT INTO room_number VALUES('DELUXE KING', 101);
INSERT INTO room_number VALUES('DELUXE KING', 102);
INSERT INTO room_number VALUES('DELUXE KING', 103);
INSERT INTO room_number VALUES('DELUXE TWIN', 201);
INSERT INTO room_number VALUES('DELUXE TWIN', 202);
INSERT INTO room_number VALUES('DELUXE TWIN', 203);
INSERT INTO room_number VALUES('KIDS DELUXE FAMILY TWIN', 301);
INSERT INTO room_number VALUES('KIDS DELUXE FAMILY TWIN', 302);
INSERT INTO room_number VALUES('KIDS DELUXE FAMILY TWIN', 303);
INSERT INTO room_number VALUES('HILL STUDIO SUITE TWIN', 401);
INSERT INTO room_number VALUES('HILL STUDIO SUITE TWIN', 402);
INSERT INTO room_number VALUES('HILL STUDIO SUITE TWIN', 403);
INSERT INTO room_number VALUES('PRESTIGE HILL SUITE', 501);
INSERT INTO room_number VALUES('PRESTIGE HILL SUITE', 502);
INSERT INTO room_number VALUES('PRESTIGE HILL SUITE', 503);