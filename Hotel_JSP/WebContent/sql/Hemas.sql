--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-21-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOTEL_ADMIN
--------------------------------------------------------

  CREATE TABLE "HOTEL_ADMIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"ADMIN_PWD" VARCHAR2(20 BYTE)
   )
--------------------------------------------------------
--  DDL for Table HOTEL_USER
--------------------------------------------------------

  CREATE TABLE "HOTEL_USER" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PWD" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"USER_GEN" VARCHAR2(20 BYTE), 
	"USER_PHONE" VARCHAR2(20 BYTE), 
	"USER_ADDR" VARCHAR2(500 BYTE), 
	"USER_EMAIL" VARCHAR2(100 BYTE), 
	"USER_POINT" NUMBER(10,0) DEFAULT 0, 
	"USER_DATE" DATE
   )
--------------------------------------------------------
--  DDL for Table INFO
--------------------------------------------------------

  CREATE TABLE "INFO" 
   (	"INFO_NO" NUMBER(5,0), 
	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"INFO_TITLE" VARCHAR2(100 BYTE), 
	"INFO_CONTENT" VARCHAR2(4000 BYTE), 
	"INFO_HIT" NUMBER(5,0) DEFAULT 0, 
	"INFO_DATE" DATE
   )
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"QNA_NO" NUMBER(5,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"QNA_TITLE" VARCHAR2(100 BYTE), 
	"QNA_CONTENT" VARCHAR2(4000 BYTE), 
	"QNA_GROUP" NUMBER(5,0), 
	"QNA_STEP" NUMBER(5,0), 
	"QNA_DATE" DATE, 
	"QNA_HIT" NUMBER(5,0) DEFAULT 0, 
	"QNA_FILE" VARCHAR2(500 BYTE)
   )
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "RESERVE" 
   (	"RES_NO" NUMBER(5,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"ROOM_NAME" VARCHAR2(30 BYTE), 
	"ROOM_NUMBER" NUMBER(5,0), 
	"RES_DATE" DATE, 
	"RES_IN" VARCHAR2(50 BYTE), 
	"RES_OUT" VARCHAR2(50 BYTE), 
	"RES_NOD" NUMBER(5,0), 
	"RES_ADULT" NUMBER(5,0) DEFAULT 0, 
	"RES_CHILD" NUMBER(5,0) DEFAULT 0, 
	"RES_ADULT_BR" NUMBER(5,0) DEFAULT 0, 
	"RES_CHILD_BR" NUMBER(5,0) DEFAULT 0, 
	"RES_BED" NUMBER(5,0) DEFAULT 0, 
	"RES_TOTAL" NUMBER(20,0), 
	"RES_REQUEST" VARCHAR2(1000 BYTE)
   )
--------------------------------------------------------
--  DDL for Table ROOM
--------------------------------------------------------

  CREATE TABLE "ROOM" 
   (	"ROOM_NUMBER" NUMBER(5,0), 
	"ROOM_NAME" VARCHAR2(30 BYTE), 
	"ROOM_PRICE" NUMBER(10,0), 
	"ROOM_CONTENT" VARCHAR2(100 BYTE), 
	"ROOM_IMAGE" VARCHAR2(500 BYTE), 
	"ROOM_SIZE" NUMBER(5,2)
   )
REM INSERTING into HOTEL_ADMIN
SET DEFINE OFF;
Insert into HOTEL_ADMIN (ADMIN_ID,ADMIN_PWD) values ('ADMIN','0000');
Insert into HOTEL_ADMIN (ADMIN_ID,ADMIN_PWD) values ('매니저','0000');
Insert into HOTEL_ADMIN (ADMIN_ID,ADMIN_PWD) values ('admin2','111');
Insert into HOTEL_ADMIN (ADMIN_ID,ADMIN_PWD) values ('admin','111');
Insert into HOTEL_ADMIN (ADMIN_ID,ADMIN_PWD) values ('admin3','111');
REM INSERTING into HOTEL_USER
SET DEFINE OFF;
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('sist0506','sist0506','남재희','남성','01000000000','서울 마포구 와우산로29마길 24 서울 마포구 서교동 332-10 수정빌라 203호 (서교동)','pcs05453@naver.com',0,to_date('21/06/18','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('hong1234','hong1234','홍길동','남성','01012341234','인천 강화군 양도면 가능포로 166-13 인천 강화군 양도면 조산리 754 101호 ','hong1234@naver.com',0,to_date('21/06/18','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('abc123','1234','김수진','여성','010-4321-4321','제주특별자치도 제주시 가령골길 1 제주특별자치도 제주시 일도이동 378-12 1234호 (일도이동)','qwerty1234@naver.com',0,to_date('21/06/19','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('2','2','2','남성','222','광주 남구 2순환로 1508 광주 남구 송하동 319  (송하동)','22@gmail.com',0,to_date('21/06/20','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('1','1','1','남성','1','충북 청주시 상당구 1순환로 1202-1 충북 청주시 상당구 방서동 227-11  (방서동)','1@naver.com',0,to_date('21/06/15','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('aaa','1111','김연아','여성','010-7777-7777','서울 강남구 테헤란로','test1@gamil.com',200,to_date('21/06/16','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('id2','0000','사용자2','여성','01011111111','서울시 서초구 반포동','id2@naver.com',0,to_date('21/06/20','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('id3','0000','사용자3','여성','01022222222','포항시 북구 두호동','id3@naver.com',0,to_date('21/06/20','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('id4','0000','사용자4','남성','01033333333','인천광역시 부평구 부평동','id4@naver.com',0,to_date('21/06/20','RR/MM/DD'));
Insert into HOTEL_USER (USER_ID,USER_PWD,USER_NAME,USER_GEN,USER_PHONE,USER_ADDR,USER_EMAIL,USER_POINT,USER_DATE) values ('id1','111','유저','여성','010-1234-5678','서울 강남구 가로수길 5   (신사동)','id1@naver.com',0,to_date('21/06/21','RR/MM/DD'));
REM INSERTING into INFO
SET DEFINE OFF;
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (16,'ADMIN','제주특별자치도 ‘사회적 거리두기 2단계’ 격상으로 인한 운영 안내','1. 식음업장 방역 수칙 적용 및 운영 안내
(아리아 / 루브리카 / 라운지 & 바 / 조선 델리 / 잇투오 / 피크포인트 / 그랑제이/ IRD)
◼ 입장 시 전자출입명부(QR 체크인) 수집 또는 출입명부 개인정보 작성 후 입장
※ 투숙객도 반드시 휴대전화 또는 신분증을 지참해야만 입장 가능 (조식 포함)
◼ 테이블 간 1M 이상 간격 유지

◼ 테이블 당 5인 이상 착석불가 (단, 거주지 상관없이 직계가족은 예외)

: 가족관계증명서 증빙 지참 必

* ''직계가족 모임''에 한해 백신 1차 이상 접종자는 8인+α(접종자) 인원 추가 가능


◼ 입장 또는 음식을 담기 위한 대기 시 이용자 간 간격 유지


2. 식음업장 운영 시간 안내

◼ 아리아 (정상 운영)

 - Breakfast : 07:00 ~ 10:30

 - Lunch : 12:00 ~ 14:30

 - Dinner : 18:00 ~ 21:30

 

◼ 루브리카 (정상 운영)

 - Lunch : 12:00 ~ 14:30

 - Dinner : 18:00 ~ 21:30 (Last Order 21:00)

◼ 라운지 앤 바 (단축운영)

 - 운영시간 : 08:00 ~ 22:00

 

◼ 조선 델리 (정상 운영)

 -  운영시간 : 08:00 ~ 21:30

◼ 잇투오

 - 운영시간 : 11:00 ~ 22:00 (Last Order 21:00)

◼ 피크포인트 (시간 변경)

 - 운영시간 : 12:00 ~ 22:00 (Last Order 21:00)

◼ 그랑 제이 (정상 운영)

 - Breakfast : 07:30 ~ 11:00

 - Afternoon Coffee & Tea : 12:00 ~ 17:00

 - Gran Choice : 18:00 ~ 22:00 (Last Order 21:00)


◼ 헤븐리 라운지 (정상 운영)

 - 운영시간 : 09:00 ~ 22:00 (Last Order 21:00)

◼ IRD : 24시간 운영

3. 시설 이용 관련 안내

◼ 사우나 (*신관 사우나 미운영)

- 운영시간 : 07:00 ~ 22:00

 ※ 라커룸 및 스탠딩샤워 시설 이용가능

(건식/습식 사우나, 냉온탕, 좌식 샤워시설 및 라운지 이용 불가)

 ※ 4㎡당 1명 입장제한

 ※ 음식물 취식 불가

 

◼ 가든풀

- 운영시간 : 09:00 ~ 22:00

 ※ 4㎡당 1명 입장제한

 ※ 음식물 취식 불가

 

◼ 피트니스/GX Room

- 운영시간 : 07:00 ~ 22:00 

 ※ 4㎡당 1명 입장제한

 ※ 음식물 취식 불가 

그랜드 조선 제주는 고객 여러분의 안전과 건강을 최우선으로 생각하며 호텔의 모든 직원들은

방역수칙을 철저히 준수하고 있습니다.

고객 여러분의 양해에 깊은 감사를 드리며, 기타 문의사항은 그랜드 조선 제주 대표 번호

(064-738-6600) 또는 객실예약과(1811-0511)로 연락 부탁드립니다.

감사합니다.',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (18,'ADMIN','홈페이지 서버 점검 안내','안녕하십니까,

금주 조선호텔앤리조트 통합 홈페이지 서버 점검 관계로 홈페이지 접속이 제한될 예정입니다.

일시: 3월 3일(수) 02:00 ~ 04:00
내용: 보안 및 서버 점검

고객님들께 불편을 끼쳐드려 죄송합니다.

감사합니다.',13,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (5,'ADMIN','개인정보처리방침 변경 안내','안녕하세요.
항상 저희 신세계 조선호텔을 이용해 주시는 고객님께 깊은 감사를 드립니다.
개인정보처리방침이 아래와 같이 변경되어 관련 내용을 고지 드리오니 서비스 이용에 참고하여 주시기 바랍니다.
 
<개인정보처리방침 변경안내>
 
1. 개정 시행일자
- 2016년 9월 21일

2. 주요 개정사항
1) 개인정보처리방침 용어 변경

취급 à 처리
 

2) 개인정보 수탁사 및 업무내용 추가
[변경 전]

수탁업체	위탁 업무 내용
㈜LAC	신세계조선호텔 면세사업 위탁 운영
㈜아림DM	면세점 온라인 쇼핑몰 서버 운영, 모바일 상품권 발송
㈜KT	면세점 온라인 쇼핑몰 유지 관리
㈜아이뱅크	모바일 기프티콘 발송
Micros Fidelio Korea	면세점 온라인 결제 대행 및 SMS 발송
[변경 후]
* 추가 : ㈜블루웨이브컨설팅
 

수탁업체	위탁 업무 내용
㈜LAC	조선호텔 연회원 모집 및 회원 관리
㈜아림DM	홍보 및 DM 발송 위탁
㈜KT	SMS 발송
㈜아이뱅크	홈페이지 시스템 개발 및 유지 관리
㈜블루웨이브컨설팅	하자보수
Micros Fidelio Korea	객실 및 연회 시스템 운영 및 유지보수
3) 온라인몰 신규 오픈에 따른 개인정보 처리 내용 추가 및 수정
온라인몰(eShop)의 수집항목, 이용목적, 보유기간, 수집방법 내용 추가

4) 그 외 내용 보완 및 문구 수정

3. 개정된 개인정보 취급방침에 동의하지 않으시는 경우 회원 탈퇴를 요청하실 수 있습니다.

감사합니다.',1,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (6,'ADMIN','코로나 19 관련 호텔 운영 변경 안내','[코로나19 관련 호텔 운영 변경 안내]

 

신세계조선호텔은 코로나 바이러스 감염증-19(COVID-19)의 확산에 따라 정부의 "사회적 거리두기" 강화 지침을 준수,

레스토랑 및 피트니스의 운영 시간 변경을 아래와 같이 공지해 드립니다.
 

고객 여러분들의 많은 이해와 협조 부탁드립니다.

 

부산 웨스틴조선호텔
 

까밀리아
조식, 중식 및 석식 운영 중단

※ 조식 도시락은 셔블에서 이용가능
※ 까밀리아는 9월 18일 저녁부터 정상운영 됩니다.

 
파노라마 라운지
08:00AM~ 00:00AM (Last Order 11:40PM)
 

오킴스
11:00AM ~ 00:00AM (Last Order 11:40PM)
 

셔블
조식 06:30AM ~ 10:30PM 

중식 및 석식 11:30AM ~ 9:30PM(Last Order 9:00PM)
 

조선델리
8:00AM ~ 10:00PM
 

조선델리 비치
9:00AM ~ 6:00PM
 

레스케이프 호텔 
 

팔레드 신
Lunch 정상 운영, 5:30PM ~ 9:00PM (Last Order: 8:00PM)
 

라망 시크레
Lunch 정상 운영, 5:30PM ~ 9:00PM (일요일 제외)
 

마크 다모르
6:00PM ~ 9:00PM (Last Order: 8:00PM)
 

인룸 다이닝
~ 9:00PM (Last Order: 8:00PM)
 

피트니스
운영 중단 (오픈 일자 추후 공지)

포포인츠 바이 쉐라톤 서울역 

더 이터리

뷔페 운영 중단. 단품 판매
 

더 바 
7:00PM ~ 9:00PM
 

피트니스
운영 중단 (오픈 일자 추후 공지)
 

*상기 사항은 외부 상황에 따라 추가 변경될 수 있습니다.

고객님의 안전과 더 나은 서비스를 위해 최선을 다하겠습니다.
 

감사합니다.',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (7,'ADMIN','부산 웨스틴조선호텔 파노라마 라운지 추가 방역 안내','[부산 웨스틴조선호텔 파노라마 추가 방역 안내]

부산 웨스틴조선호텔은 질병관리본부로부터 부산 웨스틴조선호텔 내 코로나19 확진 고객이 다녀갔다는 사실을 8월 31일(월) 14시 32분 통보 받았습니다.

해당고객은 로비층에 위치한 파노라마 라운지에 8월 27일(목) 방문, 13시 16분부터 15시 21분까지 이용하였으며 비투숙객으로 식음업장 이용 후 나간 것으로 동선이 확인되었습니다.

당사는 질병관리본부의 권고에 따라 31일(월) 통보 받은 즉시, 파노라마 라운지 이용고객에게 위 사실을 알려 호텔 밖으로 이동할 수 있도록 조치하였으며 해당 식음업장인 파노라마 라운지 영업을 즉시 운영 중단하고, 방역작업을 시행하는 등 방역 조치를 철저히 진행했습니다

또한, 코로나19 감염증 확산을 최소화하기 위하여 당사는 해당 고객과 밀접접촉 가능성이 있는 모든 직원에 대해 면밀히 검사시행 및 자가격리 기간 이후 출근할 수 있도록 조치 예정입니다.

향후 코로나19 감염증과 관련된 모든 내용은 투명하게 공개하는 한편, 질병관리본부 등 정부 지침에 의거해 철저하게 관리해 나가겠습니다.

안전과 위생에 대한 조치를 확실하게 마무리한 9월 1일 이후부터 정상 영업을 재개할 예정입니다.

고객님들의 더욱 안전한 호텔 이용을 위해 항상 노력하겠습니다.
감사합니다.

부산 웨스틴조선호텔 임직원 일동',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (8,'ADMIN','집합금지명령 지침에 따른 그랜드 조선 부산 사우나 운영 잠정 중단 안내','안녕하십니까,

먼저, 그랜드 조선 부산을 찾아주신 고객님께 진심으로 감사의 말씀을 드립니다.

코로나 19 확산 방지를 위하여 그랜드 조선 부산에서는 부산시 집합금지명령 지침에 따라 사우나 운영을 잠정 중단합니다.

- 기간: 2020년 10월 7일(수) 00:00 - 10월 11일 24:00
  (※ 지침 변경 시, 기간이 연장될 수 있습니다.)

고객님의 양해에 깊은 감사를 드리며, 문의사항은 그랜드 조선 부산 대표 번호 (051-922-5000)으로 연락부탁드립니다.

항상 고객님의 안전을 생각하는 그랜드 조선 부산이 되도록 하겠습니다.

감사합니다.',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (9,'ADMIN','기준일 및 주주명부 폐쇄기간 설정 공고','당사는 2020년 11월 19일 개최 예정인 임시주주총회에서 의결권을 행사할 주주를 확정하기 위하여 상법 제354조 및 당사 정관 제13조에 의거하여 2020년 10월 28일 현재 주주명부에 기재되어 있는 주주에게 의결권을 부여하며, 2020년 10월 29일부터 2020년 11월 3일까지 주식의 명의개서, 질권의 등록 및 그 변경과 말소, 신탁재산의 표시 및 말소 등 주주명부의 기재사항 변경을 정지함을 공고합니다.


2020년 10월 13일 서울시 중구 소공로 106
주식회사 신세계조선호텔 대표이사 한채양',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (10,'ADMIN','홈페이지 서버 점검 안내','안녕하십니까,

금주 신세계조선호텔 통합 홈페이지 서버 점검 관계로 홈페이지 접속이 제한될 예정입니다.

일시: 11월 5일(목) 03:00 ~ 05:00
내용: 보안 및 서버 점검

고객님들께 불편을 끼쳐드려 죄송합니다.

감사합니다.',0,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (11,'ADMIN','신주발행 공고','신주발행 공고

당사는 2020년 11월 19일 개최한 이사회에서 아래와 같이 제3자 배정 방식으로 신주를 발행하기로 결의하였는 바, 상법 제418조 제4항에 의거하여 이를 공고합니다. 

다 음

1. 신주의 종류와 수: 기명식 보통주식 [12,315,270]주

2. 신주의 인수방법: 정관 제10조 제2항 규정에 따른 제3자 배정방식

3. 1주의 액면가액: 금 5,000원

4. 신주의 발행금액: 금 [180,000,000,000]원(1주당 약 금 [14,616]원)

5. 주금납입일: 2020년 12월 4일(예정)

6. 기타 세부적인 내용은 대표이사에게 위임함. 

2020년 11월 19일

주식회사 신세계조선호텔

서울특별시 중구 소공로 106(소공동)

대표이사 한 채 양',1,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (12,'ADMIN','수도권 사회적 거리두기 2단계에 따른 호텔 식음업장 운영 시간 변경 안내','[수도권 사회적 거리두기 2단계에 따른 호텔 식음업장 운영 시간 변경 안내]

조선호텔앤리조트는 코로나 바이러스 감염증-19(COVID-19)의 확산에 따라 정부의 "사회적 거리두기" 지침을 준수,

레스토랑 및 피트니스 시설의 운영 시간 변경을 아래와 같이 공지해 드립니다.

고객 여러분들의 많은 이해와 협조 부탁드립니다.

※ 본 운영 시간은 21년 2월 15일 00시부터 21년 2월 28일 24시까지 적용됩니다.


<웨스틴 조선 서울> 

■ 아리아
- 아침 07:00 ~ 10:00
※ 주중 및 주말 동일

[주중]
- 점심 11:30 ~ 14:30
- 저녁 17:30 ~ 21:30

[주말&공휴일]
- 점심 1부 11:30 ~ 13:20 / 2부 13:50 ~ 15:40
- 저녁 1부 17:20 ~ 19:20 / 2부 19:50 ~ 21:50

■ 나인스 게이트
- 아침 07:00 ~ 10:00(Last Order 09:30)
※ 주말 & 공휴일 제외

- 점심 11:30 ~ 15:00(Last Order 14:30)
※ 주말 & 공휴일 11:30 ~ 15:30(Last Order 15:00)

- 저녁 18:00 ~ 22:00(Last Order 21:30)
 

■ 라운지 & 바
- 월요일 ~ 토요일 09:00 ~ 22:00(Last Order 21:30)

- 일요일 & 공휴일 10:00 ~ 22:00(Last Order 21:30)
 


■ 홍연
- 점심 12:00 ~ 15:00(Last Order 14:30)
- 저녁 18:00 ~ 22:00(Last Order 21:30)
 
■ 스시조
-  아침 07:00 ~ 10:00(Last Order 9:30)
-  점심 12:00 ~ 15:00(Last Order 14:30)
-  저녁 17:30 ~ 22:00(Last Order 21:30)
 
■ 루브리카
​
- 점심 11:30 ~ 15:00(Last Order 14:30)
- 저녁 17:00 ~ 21:00(Last Order 20:30)

■ 사우나
- 06:00 ~ 22:00
 

■ 수영장 & 체련장
- 06:00 ~ 21:00

※ 상기 사항은 외부 상황에 따라 추가 변경될 수 있습니다.

   고객님의 안전과 더 나은 서비스를 위해 최선을 다하겠습니다.

감사합니다.',1,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (13,'ADMIN','사회적 거리두기 2단계에 따른 레스토랑 및 부대시설 운영 안내(04/12~05/02)','[웨스틴 조선 부산] 레스토랑 및 부대시설 운영 안내

​ 

웨스틴 조선 부산은 코로나바이러스감염증-19(COVID-19) 확산에 따른 정부의 "사회적 거리두기" 지침을 준수해 일부 레스토랑 운영시간 조정을 아래와 같이 한시적으로 시행합니다.

 

고객 여러분의 많은 이해와 협조 부탁드립니다.

 

●적용 기간: 4/12 ~ 5/2

구 분

운영 시간

식음료
영업장

뷔페 레스토랑
까밀리아

조식 06:30~10:00

주중

중식 12:00~15:00
석식 18:00~21:30

주말

중식 1부   11:30~13:30
        2부   14:00~16:00
석식 1부   17:30~19:30
        2부   20:00~22:00

아이리쉬펍 오킴스

11:00~24:00

한식당 셔블

11:30~21:00

파노라마 라운지

08:00~22:00

조선델리

08:00~22:00

조선델리 비치

09:00~18:00

인룸다이닝

06:00~22:00

부대시설

웨스틴 클럽 라운지

조식         06:00~10:00

※4/13~4/16 조식 미운영 까밀리아에서 통합 운영
Day Time       11:00~16:30
Happy Hour  1부 17:30~18:50 (One Dish 제공)
                      2부 19:00~20:30 (One Dish 제공)

※상기 사항은 외부 상황에 따라 추가 변경 될 수 있습니다.

 

[코로나19 예방 대책 운영 안내]

부산 웨스틴조선호텔은 코로나바이러스감염증-19의 예방 및 관리를 위해

중앙방역대책본부의 지침에 따라 아래 예방 지침을 준수하고 있습니다.

 

-호텔 입구 별 열화상 카메라 설치 및 감독

-호텔 내 모든 시설 및 장비 소독 강화

-호텔 공용공간 내 손 세정제 비치 및 위생관리

-전 직원 마스크 착용 및 체온 측정 의무화

 

고객님의 안전과 더 나은 서비스를 위해 최선을 다하겠습니다.

 

감사합니다.',1,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (14,'ADMIN','부산시 "사회적 거리두기 1.5단계"에 따른 그랜드 조선 부산 시설 이용 안내','조선호텔앤리조트는 코로나 바이러스 감염증-19(COVID-19)의 확산에 따라 정부의 "사회적 거리두기" 지침을 준수하여 변경된 식음업장 및 시설 이용 안내를 아래와 같이 공지해 드립니다.
고객 여러분들의 많은 이해와 협조 부탁드립니다. 

※ 본 이용 지침은 별도 고지 시까지 적용됩니다.

1. 식음업장 방역 수칙 적용 및 운영 안내
(아리아 / 팔레드 신 / 라운지&바 / 조선델리 / Gran J 프라이빗 라운지 / Eat2O)
◼ 입장 시 전자출입명부(QR 체크인) 수집 또는 출입명부 개인정보 작성 후 입장
※ 투숙객도 반드시 휴대전화 또는 신분증을 지참해야만 입장 가능 (조식 포함)
◼ 테이블 간 2m(최소 1m) 간격 유지
◼ 입장 또는 음식을 담기 위한 대기 시 이용자 간 간격 유지

2. 식음업장 운영 시간 변경 안내
◼ 아리아 / 팔레드 신 / 조선 델리 / Gran J 프라이빗 라운지: 정상 운영
◼ 라운지&바
   10:00 - 24:00 (Last Order 23:00)
   ※ 커피 / 음료 / 디저트류 단품 주문 시 이용 시간 1시간으로 제한
 
3. 시설 이용 관련 안내
◼ GAC (피트니스 / 수영장 / 사우나) 이용 안내
 
피트니스 
06:00 – 22:00 

실내수영장
1부 06:00 - 12:00
2부 13:00 - 18:00
3부 18:30 - 22:00

실외 수영장
1부 08:00 - 12:00
2부 13:00 - 18:00
3부 18:30 - 21:00
 
※ 마스크 필수 착용 (입수 시 미착용 허용)
※ 음식 섭취 금지
※ 수영장 전용 탈의실 미운영(객실에서 수영복 환복)
※ 시설 내 2m 거리두기 준수
※ 4㎡ 당 1명 제한
 
사우나 
06:00 – 22:00 
※ 마스크 필수 착용 (탕 내 미착용 허용)
※ 음식 섭취 금지 (물, 무알콜 음료는 허용)
※ 건/습식 사우나 미운영
※ 이용시간 1시간 제한
※ 감기몸살, 오한 증세가 있을 경우 이용 금지

그랜드 조선 부산은 고객 여러분의 안전과 건강을 최우선으로 생각하며 호텔 내부에서는 모든 직원과 고객 여러분의 마스크 착용을 의무화하고 있습니다.

고객 여러분의 양해에 깊은 감사를 드리며, 문의사항은 그랜드 조선 부산 대표 번호 (051-922-5000)으로 연락 부탁드립니다.

감사합니다.',1,to_date('21/06/18','RR/MM/DD'));
Insert into INFO (INFO_NO,ADMIN_ID,INFO_TITLE,INFO_CONTENT,INFO_HIT,INFO_DATE) values (15,'ADMIN','신세계조선호텔, 조선호텔앤리조트로 사명변경','신세계조선호텔, 조선호텔앤리조트로 사명변경
 호스피탈리티 선도 기업으로서의 조선 브랜드 강화, 전문성 부각 위한 CI 변경
 서울 웨스틴조선호텔, 부산 웨스틴조선호텔 영문명 BI 내년 1월부터 교체적용


신세계조선호텔(대표이사 한채양)이 호스피탈리티 선도 기업으로서 조선 브랜드를 강화하고 전문성을 부각하기 위한 CI 및 BI 변경에 나선다.

신세계조선호텔은 호스피탈리티 산업 내 사업 영역 확장을 고려하여 기존의 ㈜ 신세계조선호텔(SHINSEGAE CHOSUN HOTEL) 에서 ㈜조선호텔앤리조트(JOSUN HOTELS & RESORTS)로 사명을 변경한다.

조선호텔의 전통성을 이어가면서도 한국적인 발음을 살린 마스터브랜드 조선 (JOSUN)을 적용한 신 사명은 2021년 1월부터 적용한다.

또한 기존 사업장의 브랜드 통일을 위한 BI 교체 역시 함께 진행한다.

‘서울 웨스틴조선호텔’과 ‘부산 웨스틴조선호텔’의 경우 조선 브랜드로 영문명을 변경, 각각 The Westin Chosun SEOUL과 The Westin Chosun BUSAN에서 The Westin Josun SEOUL과 The Westin Josun BUSAN으로 교체에 나선다.

조선호텔이 독자 호텔로 운영하는 그랜드 조선, 조선 팰리스 등 호텔 브랜드와의 영문명 통일을 통해 조선 브랜드를 확장, 호텔의 위상을 높이고 브랜드별 포트폴리오 체계를 명확히 한다는 계획이다.

조선호텔앤리조트 한채양 대표이사는 “국내 호텔 산업에서 최고 헤리티지를 이어온 조선의 브랜드를 바탕으로 전문성을 강화하고자 사명을 변경한다,”며 “산업을 이끄는 초일류 정신과 진정성 있는 서비스, 더 나은 삶을 위한 창조정신을 더해 호스피탈리티 선도 기업으로서 앞장설 것”이라고 말했다.',1,to_date('21/06/18','RR/MM/DD'));
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (12,'sist0506','카드 재발급','카드를 분실했는데 재발급 가능한가요?',12,0,to_date('21/06/20','RR/MM/DD'),1,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (13,'sist0506','포인트 사용 문의','포인트는 어디에서 사용할 수 있나요?',13,0,to_date('21/06/20','RR/MM/DD'),3,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (14,'sist0506','포인트 유효기간','포인트에 유효기간이 있나요?',14,0,to_date('21/06/20','RR/MM/DD'),1,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (15,'sist0506','포인트 적립','식음업장이나 연회장 이용시에도 포인트가 적립되나요?',15,0,to_date('21/06/20','RR/MM/DD'),1,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (16,'ADMIN','RE: 포인트 적립','조선호텔앤리조트 객실, 연회, 기타 호텔 부대시설 및 임대 영업장에서는 포인트 적립 및 사용이 불가합니다.',15,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (17,'ADMIN','RE: 포인트 유효기간','포인트는 최초 적립된 시점으로부터 24개월간(회원의 휴면 계정 처리 기간도 포함) 이용 가능하며, 24개월이 지난 시점에 월 단위로 자동 소멸됩니다.',14,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (18,'ADMIN','RE: 포인트 사용 문의','포인트 사용은 조선호텔앤리조트 레스토랑 이용 시에만 가능하며 그 외 객실, 연회, 기타 호텔 부대시설 및 임대 영업장에서는 포인트 사용이 불가합니다.',13,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (19,'ADMIN','RE: 카드 재발급','카드분실 시 조선호텔앤리조트 회원관리과(02-317-0471)로 문의주시면 재발급 가능하며,  2만원의 재발급 비용이 발생합니다.',12,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (20,'ADMIN','RE: 클럽조선 VIP 관련 문의','클럽조선 VIP 유효기간은 구매일로 부터 1년이며, 클럽조선 VIP 유효기간이 만료되어도 클럽조선 리워드는 탈회 시까지 유효합니다.',9,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (21,'ADMIN','RE: 멤버쉽 관련 문의','클럽조선 리워드(무료멤버십)에 가입하시면 포인트 적립 혜택이 있으며, 
클럽조선 VIP(유료멤버십) 객실과 레스토랑 상시 할인 혜택이 제공됩니다.',8,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (22,'ADMIN','RE: 회원 관련 문의','멤버십을 위한 특가 상품이나 할인 혜택, 이벤트 등은 마케팅 수신동의 해주신 회원에 한하여 문자나 이메일로 발송됩니다. (각각 수신동의 필요)
혹시 수신 동의가 안되어 있다면 ''홈페이지 > 마이페이지 > 회원정보수정 > 정보수신동의''에 체크해주시면 다양한 혜택을 받아보실 수 있습니다.',7,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (23,'sist0506','멤버쉽','멤버십 전환 후 다시 기존 멤버십으로 돌아갈 수 있나요?

멤버십 전환 시 보유하고 있던 멤버십 바우처는 어떻게 되나요?',23,0,to_date('21/06/20','RR/MM/DD'),3,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (24,'sist0506','메리어트 포인트','메리어트 포인트도 클럽조선 포인트와 중복 적립이 되나요?',24,0,to_date('21/06/20','RR/MM/DD'),2,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (26,'sist0506','회원정보 수정','회원 정보 수정은 어떻게 하나요?',26,0,to_date('21/06/20','RR/MM/DD'),12,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (27,'ADMIN','RE: 멤버쉽','멤버십 전환을 완료하신 경우, 이전 멤버십으로의 재전환은 불가합니다.

기존 멤버십을 전환하신 경우 기존에 보유하신 잔여 쿠폰이 그대로 이관되어 사용하실 수 있으며, 신규멤버십의 쿠폰은 발행되지 않습니다.',23,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (28,'ADMIN','RE: 메리어트 포인트','클럽 조선 멤버십은 메리어트, 카드사 및 기타 혜택과 중복 적용이 불가합니다.',24,1,to_date('21/06/20','RR/MM/DD'),0,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (7,'sist0506','회원 관련 문의','회원 대상 프로모션 상품 및 특가를 안내 받고 싶습니다',7,0,to_date('21/06/18','RR/MM/DD'),2,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (8,'sist0506','멤버쉽 관련 문의','클럽 조선에 가입하면 추가할인이 있나요?',8,0,to_date('21/06/18','RR/MM/DD'),7,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (9,'sist0506','클럽조선 VIP 관련 문의','클럽조선 VIP 유효기간은 어떻게 되나요?

클럽조선 VIP 구매 시 바우처는 바로 발급 되나요?',9,0,to_date('21/06/18','RR/MM/DD'),9,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (10,'id1','예약변경에 대해 문의드려요.','06.21-06.23일 2박 동안 디럭스 103호 예약했는데 21-22일 1박으로 숙박날짜 변경 가능한가요?',10,0,to_date('21/06/19','RR/MM/DD'),6,null);
Insert into QNA (QNA_NO,USER_ID,QNA_TITLE,QNA_CONTENT,QNA_GROUP,QNA_STEP,QNA_DATE,QNA_HIT,QNA_FILE) values (11,'admin','RE: 예약변경에 대해 문의드려요.','안녕하세요. id1 고객님.
예약 날짜 변경은 불가하니 취소 후 다시 예약해주세요.
예약 변경은 이용 인원 수 및 조식, 엑스트라 베드 변경만 가능합니다. 더 궁금하신 사항은 새로운 게시물로 남겨주세요. 감사합니다.',10,1,to_date('21/06/19','RR/MM/DD'),0,null);
REM INSERTING into RESERVE
SET DEFINE OFF;
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (25,'sist0506','STANDARD',101,to_date('21/06/20','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,2,0,0,1859000,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (50,'1','SUITE',301,to_date('21/06/21','RR/MM/DD'),'2021-06-21','2021-06-22',1,2,0,1,1,1,1202300,'호텔 문의 사항입니다.');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (36,'id1','STANDARD',101,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-24',3,3,1,1,1,0,1447600,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (52,'1','DELUXE',202,to_date('21/06/21','RR/MM/DD'),'2021-06-28','2021-06-30',2,1,0,1,0,1,1417900,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (42,'1','DELUXE',202,to_date('21/06/20','RR/MM/DD'),'2021-07-16','2021-07-20',4,1,0,2,0,0,2739000,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (60,'2','STANDARD',101,to_date('21/06/21','RR/MM/DD'),'2021-06-28','2021-06-30',2,2,2,1,1,1,1081300,'침구류 3개 부탁드립니다!');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (49,'6','DELUXE',202,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-23',2,1,0,0,0,0,1320000,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (41,'sist0506','STANDARD',102,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-22',1,2,0,0,0,0,880000,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (34,'testid','DELUXE',201,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-23',2,2,1,1,0,1,4057900,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (35,'testid','STANDARD',103,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-24',3,1,0,2,0,1,1467400,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (40,'3','DELUXE',203,to_date('21/06/20','RR/MM/DD'),'2021-06-20','2021-06-21',1,3,2,2,2,1,939400,'test3 test');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (51,'2','PRESTIGE',402,to_date('21/06/21','RR/MM/DD'),'2021-06-28','2021-06-30',2,3,0,1,1,0,4478100,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (53,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (2,'id2','DELUXE',201,to_date('21/06/09','RR/MM/DD'),'2021-06-10','2021-06-13',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (3,'id3','SUITE',301,to_date('21/06/09','RR/MM/DD'),'2021-06-10','2021-06-13',3,2,1,2,1,1,3600000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (4,'id4','PRESTIGE',401,to_date('21/06/09','RR/MM/DD'),'2021-06-10','2021-06-13',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (5,'id2','STANDARD',102,to_date('21/06/09','RR/MM/DD'),'2021-06-11','2021-06-14',3,1,0,1,0,0,1350000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (6,'id3','DELUXE',202,to_date('21/06/09','RR/MM/DD'),'2021-06-11','2021-06-14',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (7,'id4','SUITE',302,to_date('21/06/09','RR/MM/DD'),'2021-06-11','2021-06-14',3,2,1,2,1,1,3600000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (8,'id5','PRESTIGE',402,to_date('21/06/09','RR/MM/DD'),'2021-06-11','2021-06-14',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (9,'id3','STANDARD',103,to_date('21/06/09','RR/MM/DD'),'2021-06-12','2021-06-15',3,1,0,1,0,0,1350000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (10,'id4','DELUXE',203,to_date('21/06/09','RR/MM/DD'),'2021-06-12','2021-06-15',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (54,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (12,'id2','PRESTIGE',403,to_date('21/06/09','RR/MM/DD'),'2021-06-12','2021-06-15',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (55,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (14,'id2','DELUXE',201,to_date('21/06/09','RR/MM/DD'),'2021-06-14','2021-06-17',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (15,'id3','SUITE',301,to_date('21/06/09','RR/MM/DD'),'2021-06-14','2021-06-17',3,2,1,2,1,1,3600000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (16,'id4','PRESTIGE',401,to_date('21/06/09','RR/MM/DD'),'2021-06-14','2021-06-17',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (17,'id2','STANDARD',102,to_date('21/06/09','RR/MM/DD'),'2021-06-15','2021-06-18',3,1,0,1,0,0,1350000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (18,'id3','DELUXE',202,to_date('21/06/09','RR/MM/DD'),'2021-06-15','2021-06-18',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (19,'id4','SUITE',302,to_date('21/06/09','RR/MM/DD'),'2021-06-15','2021-06-18',3,2,1,2,1,1,3600000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (20,'id5','PRESTIGE',402,to_date('21/06/09','RR/MM/DD'),'2021-06-15','2021-06-18',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (21,'id3','STANDARD',103,to_date('21/06/09','RR/MM/DD'),'2021-06-16','2021-06-19',3,1,0,1,0,0,1350000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (22,'id4','DELUXE',203,to_date('21/06/09','RR/MM/DD'),'2021-06-16','2021-06-19',3,2,0,2,0,0,2100000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (56,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (24,'id2','PRESTIGE',403,to_date('21/06/09','RR/MM/DD'),'2021-06-16','2021-06-19',3,2,2,2,2,2,7050000,'요청사항');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (33,'testid','PRESTIGE',401,to_date('21/06/20','RR/MM/DD'),'2021-06-21','2021-06-23',2,2,2,2,0,1,17747400,'호텔 문의사항 남기기 문의사항~~');
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (57,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (58,'2','SUITE',303,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,2,0,1,1,0,2279200,null);
Insert into RESERVE (RES_NO,USER_ID,ROOM_NAME,ROOM_NUMBER,RES_DATE,RES_IN,RES_OUT,RES_NOD,RES_ADULT,RES_CHILD,RES_ADULT_BR,RES_CHILD_BR,RES_BED,RES_TOTAL,RES_REQUEST) values (59,'2','SUITE',302,to_date('21/06/21','RR/MM/DD'),'2021-06-22','2021-06-24',2,1,0,0,0,0,2200000,null);
REM INSERTING into ROOM
SET DEFINE OFF;
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (101,'STANDARD',400000,'STANDARD Room','DELUXE_KING_POOLSIDE',46.7);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (102,'STANDARD',400000,'STANDARD Room','DELUXE_KING_POOLSIDE',46.7);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (103,'STANDARD',400000,'STANDARD Room','DELUXE_KING_POOLSIDE',46.7);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (201,'DELUXE',600000,'DELUXE Room','PREMIER_SUITE',77.5);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (202,'DELUXE',600000,'DELUXE Room','PREMIER_SUITE',77.5);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (203,'DELUXE',600000,'DELUXE Room','PREMIER_SUITE',77.5);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (301,'SUITE',1000000,'SUITE Room','HILL_STUDIO_SUITE_TWIN',95.1);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (302,'SUITE',1000000,'SUITE Room','HILL_STUDIO_SUITE_TWIN',95.1);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (303,'SUITE',1000000,'SUITE Room','HILL_STUDIO_SUITE_TWIN',95.1);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (401,'PRESTIGE',2000000,'PRESTIGE Room','PRESTIGE_HILL_SUITE_O',193.1);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (402,'PRESTIGE',2000000,'PRESTIGE Room','PRESTIGE_HILL_SUITE_O',193.1);
Insert into ROOM (ROOM_NUMBER,ROOM_NAME,ROOM_PRICE,ROOM_CONTENT,ROOM_IMAGE,ROOM_SIZE) values (403,'PRESTIGE',2000000,'PRESTIGE Room','PRESTIGE_HILL_SUITE_O',193.1);
--------------------------------------------------------
--  Constraints for Table HOTEL_ADMIN
--------------------------------------------------------

  ALTER TABLE "HOTEL_ADMIN" ADD PRIMARY KEY ("ADMIN_ID") ENABLE
  ALTER TABLE "HOTEL_ADMIN" MODIFY ("ADMIN_PWD" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table HOTEL_USER
--------------------------------------------------------

  ALTER TABLE "HOTEL_USER" ADD PRIMARY KEY ("USER_ID") ENABLE
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_DATE" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_POINT" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_EMAIL" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_ADDR" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_PHONE" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_GEN" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_NAME" NOT NULL ENABLE)
  ALTER TABLE "HOTEL_USER" MODIFY ("USER_PWD" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table INFO
--------------------------------------------------------

  ALTER TABLE "INFO" ADD PRIMARY KEY ("INFO_NO") ENABLE
  ALTER TABLE "INFO" MODIFY ("INFO_DATE" NOT NULL ENABLE)
  ALTER TABLE "INFO" MODIFY ("INFO_HIT" NOT NULL ENABLE)
  ALTER TABLE "INFO" MODIFY ("INFO_CONTENT" NOT NULL ENABLE)
  ALTER TABLE "INFO" MODIFY ("INFO_TITLE" NOT NULL ENABLE)
  ALTER TABLE "INFO" MODIFY ("ADMIN_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE)
  ALTER TABLE "QNA" MODIFY ("USER_ID" NOT NULL ENABLE)
  ALTER TABLE "QNA" ADD PRIMARY KEY ("QNA_NO") ENABLE
  ALTER TABLE "QNA" MODIFY ("QNA_HIT" NOT NULL ENABLE)
  ALTER TABLE "QNA" MODIFY ("QNA_DATE" NOT NULL ENABLE)
  ALTER TABLE "QNA" MODIFY ("QNA_STEP" NOT NULL ENABLE)
  ALTER TABLE "QNA" MODIFY ("QNA_GROUP" NOT NULL ENABLE)
  ALTER TABLE "QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "RESERVE" ADD PRIMARY KEY ("RES_NO") ENABLE
  ALTER TABLE "RESERVE" MODIFY ("RES_TOTAL" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_BED" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_CHILD_BR" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_ADULT_BR" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_CHILD" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_ADULT" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_NOD" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_OUT" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_IN" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("RES_DATE" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("ROOM_NUMBER" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("ROOM_NAME" NOT NULL ENABLE)
  ALTER TABLE "RESERVE" MODIFY ("USER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table ROOM
--------------------------------------------------------

  ALTER TABLE "ROOM" ADD PRIMARY KEY ("ROOM_NUMBER") ENABLE
  ALTER TABLE "ROOM" MODIFY ("ROOM_SIZE" NOT NULL ENABLE)
  ALTER TABLE "ROOM" MODIFY ("ROOM_IMAGE" NOT NULL ENABLE)
  ALTER TABLE "ROOM" MODIFY ("ROOM_CONTENT" NOT NULL ENABLE)
  ALTER TABLE "ROOM" MODIFY ("ROOM_PRICE" NOT NULL ENABLE)
  ALTER TABLE "ROOM" MODIFY ("ROOM_NAME" NOT NULL ENABLE)
