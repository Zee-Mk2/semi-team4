DROP SCHEMA SEMI_TEAM4;
CREATE SCHEMA SEMI_TEAM4;

USE SEMI_TEAM4;

-- 캠핑장 정보 테이블
DROP TABLE campsiteInfo;  
CREATE TABLE campsiteInfo (
	contentID			INT PRIMARY KEY,
	campNm              VARCHAR(100), 
	lineIntro           VARCHAR(100), 
	intro               VARCHAR(5000),
	manStatus           VARCHAR(100), 
	featurea             VARCHAR(1000), 
	induType            VARCHAR(100), 
	location            VARCHAR(100), 
	doNm                VARCHAR(100), 
	sigunguNm           VARCHAR(100), 
	zipCode             VARCHAR(100), 
	addr                VARCHAR(100), 
	DetailAddr          VARCHAR(100), 
	mapX                VARCHAR(100), 
	mapY                VARCHAR(100), 
	direction           VARCHAR(1000), 
	tel                 VARCHAR(100), 
	homepage			VARCHAR(1000),
	gnrlSiteCo          INT,
	autoSiteCo          INT,
	glampSiteCo         INT,
	caravSiteCo         INT,
	indvdlCaravSiteCo   INT,
	siteMg1Width        INT,
	siteMg2Width        INT,
	siteMg3Width        INT,
	siteMg1Vrticl       INT,
	siteMg2Vrticl       INT,
	siteMg3Vrticl       INT,
	siteMg1Co           INT,
	siteMg2Co           INT,
	siteMg3Co           INT,
	siteBottomCl1       INT,
	siteBottomCl2       INT,
	siteBottomCl3       INT,
	siteBottomCl4       INT,
	siteBottomCl5		INT,
	glampInnerFclty     VARCHAR(100),
	caravInnerFclty     VARCHAR(100),
	openSeason          VARCHAR(100),
	openDay             VARCHAR(100),
	toiletCo            INT,
	showerCo            INT,
	sinkCo              INT,
	fireBowl            VARCHAR(100),
	addFclty            VARCHAR(100),
	surroundFclty       VARCHAR(100),
	exprnProgrmAt       VARCHAR(100),
	exprnProgrm         VARCHAR(100),
	fireExtCo           INT, 
	fireSensorCo        INT, 
	campThema           VARCHAR(100),
	animalEntry         VARCHAR(100),
	tourDate            VARCHAR(100),
	img                 VARCHAR(1000),
    status				VARCHAR(1) DEFAULT 'Y',
    views				INT DEFAULT 0,
    minPrice			INT
);

SELECT * FROM campsiteInfo;

-- 공연 테이블
DROP TABLE concert;  
CREATE TABLE concert (
	conId		VARCHAR(100) PRIMARY KEY,
	conNm		VARCHAR(100),
	genre		VARCHAR(100),
	conState	VARCHAR(100),
	startDate	DATE,
	endDate		DATE,
	conHallNm	VARCHAR(100),
	conHallId	VARCHAR(100),
	openRun		VARCHAR(100),
	cast		VARCHAR(1000),
	crew		VARCHAR(1000),
	runtime		VARCHAR(100),
	viewAge		INT,
	enterNm		VARCHAR(1000),
	ticketPrice	VARCHAR(2000),
	posterImg	VARCHAR(1000),
    introImg	VARCHAR(1000),
	story		VARCHAR(5000),
	startTime	VARCHAR(1000),
    status		VARCHAR(1) DEFAULT 'Y',
    views		INT DEFAULT 0,
    minPrice	INT	
);

SELECT * FROM concert;

-- 공연장 테이블
DROP TABLE conHall;
CREATE TABLE conHall (
	conHallId	VARCHAR(100) PRIMARY KEY,
	conHallNm	VARCHAR(100),
	hallChar	VARCHAR(100),
	gugunNm		VARCHAR(100),
	sidoNm		VARCHAR(100),
	la			VARCHAR(100),
	lo			VARCHAR(100),
	adres		VARCHAR(100),
	numOfHalls	INT,
	openYear	INT,
	homepage	VARCHAR(1000),
	numOfSeats	INT,
	telNo		VARCHAR(100)
);

SELECT * FROM conhall;

-- 공연 순위 테이블
DROP TABLE conRank;  
CREATE TABLE conRank (
	conId		VARCHAR(100) PRIMARY KEY,
	rankNum		INT,
	showNm		VARCHAR(100),
	genre		VARCHAR(100),
	showPd		VARCHAR(100),
	showPlace	VARCHAR(100),
	seatCnt		INT,
	showCnt		INT,
	area		VARCHAR(100),
	poster		VARCHAR(100)
);

SELECT * FROM conRank ORDER BY rankNum;

--------------------- 파싱테이블 끝 ---------------------
------------------ 파싱 외 DB테이블 시작 ------------------

-- 멤버 테이블
DROP TABLE member;
CREATE TABLE member (
	mno			INT PRIMARY KEY AUTO_INCREMENT,
    id			VARCHAR(50),
    password	VARCHAR(100),
    name		VARCHAR(15),
    gender		VARCHAR(1),
    address		VARCHAR(100),
    favDistrict	VARCHAR(100),
    enrollDate	DATETIME DEFAULT CURRENT_TIMESTAMP,
    role		VARCHAR(10) DEFAULT 'USER',
    status		VARCHAR(1) DEFAULT 'Y',
    birth		DATETIME,
    oriFileNm	VARCHAR(100),
    reFileNm	VARCHAR(100) DEFAULT 'default-avatar.png',
    phone		VARCHAR(20)
);

SELECT * FROM member;

-- 캠핑 북마크 테이블
DROP TABLE campBookmark;
CREATE TABLE campBookmark (
	contentID			INT,
    mno					INT,
    campBookmarkDate 	DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (contentID) REFERENCES campsiteInfo(contentID) ON DELETE CASCADE,
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE CASCADE
);

SELECT * FROM campBookmark;

-- 공연 북마크 테이블
DROP TABLE concBookmark;
CREATE TABLE concBookmark (
	conId       		VARCHAR(100),
    mno					INT,
    concBookmarkDate	DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (conId) REFERENCES concert(conId) ON DELETE CASCADE,
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE CASCADE
);

SELECT * FROM concBookmark;

-- 게시판 테이블
DROP TABLE board;
CREATE TABLE board (
	bno				INT PRIMARY KEY AUTO_INCREMENT,
    mno				INT,
    contentId		VARCHAR(100),
    rating			INT,
    name			VARCHAR(15),
    boardCat		VARCHAR(50),
    boardTag		VARCHAR(50),
    boardTitle		VARCHAR(1000),
    boardContent	VARCHAR(3000),
    boardOriFileNm	VARCHAR(100),
    boardReFileNm	VARCHAR(100),
    boardCreateDate	DATETIME DEFAULT CURRENT_TIMESTAMP,
    boardViews		INT DEFAULT 0,
    boardStatus		VARCHAR(1) DEFAULT 'Y',
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE SET NULL
);

SELECT * FROM board;

-- 댓글 테이블
DROP TABLE reply;
CREATE TABLE reply(
    replyNo            INT PRIMARY KEY AUTO_INCREMENT,
    bno                INT,
    mno                INT,
    replyContent    VARCHAR(1000),
    replycreateDate    DATETIME DEFAULT CURRENT_TIMESTAMP,
    replyStatus        VARCHAR(1) DEFAULT 'Y',
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE SET NULL,
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE SET NULL
);

SELECT * FROM reply;

-- 공연장 좌석 테이블
DROP TABLE seat;
CREATE TABLE seat (
	seatId		INT PRIMARY KEY AUTO_INCREMENT,
    conHallId	VARCHAR(100),
    seatNo		VARCHAR(20),
    seatType	VARCHAR(20),
    seatPrice	INT,
    FOREIGN KEY (conHallId) REFERENCES conHall(conHallId) ON DELETE SET NULL
);

SELECT * FROM seat;

-- 예약 테이블
DROP TABLE concReserve;
CREATE TABLE concReserve (
	resvNo		INT PRIMARY KEY AUTO_INCREMENT,
    mno			INT,
    conId		VARCHAR(100),
    conHallId	VARCHAR(100),
    seatNo		VARCHAR(20),
    seatType	VARCHAR(20),
    userName 	VARCHAR(15),
    tel			VARCHAR(100),
    resvTime	DATETIME,
    status	VARCHAR(1) DEFAULT 'Y',
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE CASCADE,
    FOREIGN KEY (conHallId) REFERENCES seat(conHallId) ON DELETE CASCADE,
    FOREIGN KEY (conId) REFERENCES concert(conId) ON DELETE CASCADE
);

SELECT * FROM concReserve;

-- 공연 스케줄 테이블
DROP TABLE concSchedule;
CREATE TABLE concSchedule (
	conTime		DATETIME,
    conId		VARCHAR(100),
    conHallId	VARCHAR(100),
    FOREIGN KEY (conId) REFERENCES concert(conId) ON DELETE CASCADE,
    FOREIGN KEY (conHallId) REFERENCES conHall(conHallId) ON DELETE CASCADE
);

SELECT * FROM concSchedule;

-- 스케줄 테이블 초기화
INSERT INTO concSchedule VALUES('2023-06-4 15:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-4 19:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-5 20:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-6 20:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-7 16:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-7 20:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-8 20:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-9 20:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-10 15:00:00', 'PF215902', 'FC003045');
INSERT INTO concSchedule VALUES('2023-06-10 19:00:00', 'PF215902', 'FC003045');

-- 좌석 테이블 초기화
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-1', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-2', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-3', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-4', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-5', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-6', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-7', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-8', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-9', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-10', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-11', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-12', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-13', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-14', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'A-15', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-1', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-2', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-3', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-4', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-5', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-6', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-7', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-8', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-9', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-10', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-11', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-12', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-13', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-14', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'B-15', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-1', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-2', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-3', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-4', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-5', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-6', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-7', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-8', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-9', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-10', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-11', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-12', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-13', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-14', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'C-15', 'R석', 60000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-1', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-2', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-3', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-4', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-5', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-6', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-7', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-8', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-9', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-10', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-11', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-12', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-13', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-14', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'D-15', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-1', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-2', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-3', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-4', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-5', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-6', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-7', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-8', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-9', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-10', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-11', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-12', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-13', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-14', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'E-15', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-1', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-2', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-3', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-4', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-5', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-6', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-7', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-8', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-9', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-10', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-11', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-12', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-13', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-14', 'S석', 50000);
INSERT INTO seat VALUES(DEFAULT, 'FC003045', 'F-15', 'S석', 50000);

------------------------------- 테이블 끝 -------------------------------

------------------------------- 쿼리 검증 -------------------------------

-- 캠핑메인 테마별 BEST 캠핑장 > 테마별로 조회수가 가장 많은 캠핑장 1개씩 뽑아오는 쿼리
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%해변%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%섬%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%산%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%숲%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%계곡%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%강%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%호수%' ORDER BY views LIMIT 1)
UNION ALL
(SELECT campNm, location, doNm, sigunguNm, img FROM campsiteInfo WHERE location LIKE '%도심%' ORDER BY views LIMIT 1);

-- 공연메인 테마별 BEST 공연
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '서양음악(클래식)' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '대중음악' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '뮤지컬' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '연극' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '서커스/마술' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '한국음악(국악)' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '무용' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '대중무용' ORDER BY views LIMIT 1)
UNION
(SELECT conNm, genre, startDate, endDate, conHallNm, posterImg, conId FROM concert WHERE genre LIKE '복합' ORDER BY views LIMIT 2);

-- SELECT * FROM concert WHERE genre = '아동';

-- -- 회원가입
INSERT INTO member VALUES(DEFAULT, 'admin', '1234', '관리자', null, null, null, DEFAULT, 'ADMIN', 'Y', null, null, DEFAULT, null);
SELECT * FROM member;
DELETE FROM member WHERE mno = 6;

-- 게시글 작성
INSERT INTO board VALUES(DEFAULT, 2, '지석환', 'info', 'camp', '오토캠핑 가이드', '내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용', null, null, DEFAULT, DEFAULT, DEFAULT);
SELECT * FROM board;

-- 게시글 리스트
SELECT 
	B.bno, B.boardTitle, M.name, B.boardCreateDate, B.boardReFileNm, B.boardViews, B.boardStatus, B.boardTag
FROM board B 
JOIN member M ON(B.mno = M.mno)
WHERE 1 = 1
	AND B.boardStatus = 'Y'
	AND B.boardCat = 'info'
-- 	AND M.name LIKE '%${name}%'
-- 	AND B.title LIKE '%${title}%'
-- 	AND B.content LIKE '%${content}%'
ORDER BY B.bno DESC LIMIT 15 OFFSET 0;

-- 게시글 상세
SELECT * FROM board WHERE bno = "2";

-- 조회수 업데이트
UPDATE board SET boardViews = (boardViews + 1) WHERE bno = 5;

-- 게시글 수정
UPDATE board SET
	boardCat = 'camp',
	boardTitle = '게시글 수정3',
	boardContent = '제발'
WHERE bno = 10;

SELECT * FROM board;

-- -- 회원정보 수정
UPDATE member SET name = '관리자2', email = 'verylongemailaddress@email.com' WHERE mno = '1';

-- 로그인
SELECT * FROM member WHERE id = 'admin' AND status = 'Y';

-- 검색 리스트
SELECT contentID, campNm, induType, location, doNm, sigunguNm, animalEntry, img
FROM campSiteInfo
WHERE manStatus = '운영'
ORDER BY views
LIMIT 15 OFFSET 0;

-- 검색결과 갯수
SELECT count(*)
FROM campSiteInfo
WHERE manStatus = '운영'
ORDER BY views;

-- 공연 검색 'PF218950'
SELECT C.conId, C.conNm, C.genre, C.startDate, C.endDate, C.conHallNm, C.posterImg, C.minPrice
FROM concert C
LEFT JOIN (
	SELECT conId, count(*) AS bookmarks
	FROM concBookmark
	GROUP BY conId
) bookmarks ON C.conId = bookmarks.conId
WHERE C.status = 'Y'
ORDER BY bookmarks.bookmarks DESC;

SELECT * FROM concert ORDER BY views DESC;

-- 공연 상세
SELECT Conc.*, Hall.la, Hall.lo, bookmarks.bookmarks, rating.avgRating, rating.numReviews
FROM concert Conc
LEFT JOIN conHall Hall ON Conc.conHallId = Hall.conHallId
LEFT JOIN (
	SELECT conId, count(*) AS bookmarks
	FROM concBookmark
	WHERE conId = 'PF218950'
	GROUP BY conId
) bookmarks ON Conc.conId = bookmarks.conId
LEFT JOIN (
SELECT contentId, SUM(rating) / count(*) AS avgRating, count(*) AS numReviews
	FROM board
	WHERE contentId = 'PF218950'
	GROUP BY contentId
) rating ON Conc.conId = rating.contentId
WHERE Conc.conId = 'PF218950';

SELECT * FROM board;
SELECT contentId, SUM(rating) / count(*) AS avgRating
FROM board
WHERE contentId = '37'
GROUP BY contentId;

SELECT Conc.*, Hall.la, Hall.lo, bookmarks.bookmarks FROM concert Conc
LEFT JOIN conHall Hall ON Conc.conHallId = Hall.conHallId
LEFT JOIN (
	SELECT conId, count(*) AS bookmarks
    FROM concBookmark
    WHERE conId = 'PF218968'
    GROUP BY conId
) bookmarks ON Conc.conId = bookmarks.conId WHERE Conc.conId = 'PF218968';

SELECT Conc.*, Hall.la, Hall.lo FROM concert Conc
JOIN conHall Hall ON(Conc.conHallId = Hall.conHallId)
WHERE conNm = '%포항%';

SELECT * FROM campSiteInfo;
SELECT contentID, campNm, lineIntro, addr, tel, img FROM campSiteInfo WHERE location='해변' AND manStatus = '운영' ORDER BY bookmarks DESC LIMIT 10;

-- 위시리스트 조회
SELECT C.conNm, C.genre, C.conHallNm, C.minPrice, C.posterImg, C.conId, C.startDate, C.endDate, C.cast, C.runtime
FROM concert C JOIN concBookmark B ON(C.conId = B.conId)
WHERE C.status = 'Y' AND B.mno = 7;

SELECT * FROM concert WHERE genre = '연극';
SELECT * FROM conHall WHERE conHallId='FC001247';

SELECT * FROM concReserve;
-- 나의 예약정보 조회 / Y: 다가오는 예약, N: 취소된 예약, 'E': 완료된 예약
SELECT cr.*, conc.posterImg, conc.conNm, hall.conHallNm, st.seatPrice
	FROM concReserve cr
	JOIN concert conc ON (conc.conId = cr.conId)
    JOIN conHall hall ON (cr.conHallId = hall.conHallId)
    JOIN seat st ON (cr.seatNo = st.seatNo)
    WHERE cr.mno = 1 AND cr.status = 'Y';
    
-- 리뷰 리스트 조회
SELECT B.*, C.conNm FROM board B
	JOIN concert C ON (B.contentId = C.conId);
    
SELECT 
	B.bno, B.boardTitle, M.name, B.boardCreateDate, B.boardReFileNm, B.boardViews, B.boardContent, B.boardTag, C.campNm
FROM board B 
JOIN member M ON(B.mno = M.mno)
JOIN campsiteInfo C ON (B.contentId = C.contentID)
WHERE B.boardStatus = 'Y';

SELECT * FROM board;
SELECT * FROM member;
SELECT * FROM campsiteInfo;
-- 상세페이지 리뷰 리스트
SELECT
	B.bno, B.boardTitle, B.boardContent, M.reFileNm, M.name, B.boardCreateDate, B.boardReFileNm, B.boardViews, B.boardContent, B.boardTag, C.conNm
FROM board B
JOIN member M ON(B.mno = M.mno)
JOIN concert C ON (B.contentId = C.conId)
WHERE B.boardStatus = 'Y' AND B.contentId = 'PF215902';

SELECT B.bno, B.boardTitle, M.name, B.boardCreateDate, B.boardReFileNm, B.boardViews, B.boardContent, B.boardTag
	FROM board B 
	JOIN member M ON(B.mno = M.mno)
	WHERE B.boardStatus = 'Y' AND B.boardCat = 'info' AND B.boardTag = 'conc'
	ORDER BY B.bno DESC LIMIT 15 OFFSET 0;

-- 내가 작성한 후기 조회
SELECT B.* FROM board B
	JOIN member M ON (B.mno = M.mno)
    WHERE B.boardStatus = 'Y' AND B.boardCat = 'review' AND B.mno = 1
    ORDER BY B.boardCreateDate DESC;
    
SELECT * FROM campBookmark;

SELECT C.*, rating.avgRating, rating.numReviews, bookmarks.bookmarks
	FROM campSiteInfo C
	LEFT JOIN (
		SELECT contentID, count(*) AS bookmarks
		FROM campBookmark
		WHERE contentID = 37
		GROUP BY contentID
	) bookmarks ON C.contentID = bookmarks.contentID
	LEFT JOIN (
	SELECT contentId, SUM(rating) / count(*) AS avgRating, count(*) AS numReviews
		FROM board
		WHERE contentId = 37
		GROUP BY contentId
	) rating ON C.contentID = rating.contentId
	WHERE C.contentID = 37;
    
SELECT * FROM conHall WHERE conHallId = 'FC000743';
SELECT * FROM conHall WHERE conHallId = 'FC001394';
SELECT * FROM conHall WHERE conHallId = 'FC000493';

SELECT b.*, camp.campNm, camp.doNm, camp.sigunguNm FROM board b
    JOIN campsiteInfo camp ON b.contentId = camp.contentID
	WHERE b.boardTag = 'camp' AND b.boardStatus = 'Y' AND b.boardCat = 'review'
	ORDER BY b.boardViews DESC
	LIMIT 3;
    
SELECT * FROM board;

SELECT * FROM board WHERE boardCat = 'free' AND boardStatus = 'Y' ORDER BY boardCreateDate DESC LIMIT 8


-- 선택한 일자의 회차별 잔여 좌석 조회 쿼리
SELECT
    cs.conTime AS startTime,
    COALESCE(t.R - booked.R, t.R) AS R,
    COALESCE(t.S - booked.S, t.S) AS S,
    COALESCE(t.A - booked.A, t.A) AS A
FROM
    concSchedule cs
    JOIN
    (
        SELECT
            IFNULL(MAX(CASE WHEN seatType = 'R석' THEN count END), 0) AS 'R',
            IFNULL(MAX(CASE WHEN seatType = 'S석' THEN count END), 0) AS 'S',
            IFNULL(MAX(CASE WHEN seatType = 'A석' THEN count END), 0) AS 'A'
        FROM
            (
                SELECT seatType, COUNT(*) AS count
                FROM seat
                WHERE conHallId = 'FC003045'
                GROUP BY seatType
            ) AS subquery
    ) AS t
    LEFT JOIN
    (
        SELECT
            resvTime,
            SUM(CASE WHEN seatType = 'R석' THEN count ELSE 0 END) AS R,
            SUM(CASE WHEN seatType = 'S석' THEN count ELSE 0 END) AS S,
            SUM(CASE WHEN seatType = 'A석' THEN count ELSE 0 END) AS A
        FROM
            (
                SELECT resvTime, seatType,  COUNT(*) AS count
                FROM concReserve
                WHERE conHallId = 'FC003045'
                AND status = 'Y'
                GROUP BY resvTime, seatType
            ) AS subquery
        GROUP BY resvTime
    ) booked ON (booked.resvTime = cs.conTime)
WHERE conTime LIKE '2023-06-10%'
ORDER BY conTime;

-- 좌석별 가격 조회 쿼리
SELECT
	  MAX(CASE WHEN seatType = 'R석' THEN seatPrice END) AS R,
	  MAX(CASE WHEN seatType = 'S석' THEN seatPrice END) AS S,
	  MAX(CASE WHEN seatType = 'A석' THEN seatPrice END) AS A
FROM seat
WHERE conHallId = 'FC003045'
GROUP BY conHallId;

-- 이미 예약된 좌석 조회 쿼리
SELECT S.seatNo FROM concReserve R
JOIN (
	SELECT * FROM seat
) S ON (R.seatNo = S.seatNo)
WHERE R.conHallId = 'FC003045' AND R.resvTime = '2023-06-10 15:00:00' AND R.status = 'Y';

SELECT
	IFNULL(MAX(CASE WHEN seatType = 'R석' THEN count END), 0) AS 'R',
    IFNULL(MAX(CASE WHEN seatType = 'S석' THEN count END), 0) AS 'S',
    IFNULL(MAX(CASE WHEN seatType = 'A석' THEN count END), 0) AS 'A'
FROM
	(SELECT resvTime, seatType, COUNT(*) AS count
		FROM concReserve
		WHERE conHallId = 'FC003045'
		AND resvTime = '2023-06-10 15:00:00'
		GROUP BY seatType) AS subquery;
    
SELECT resvTime, seatType, COUNT(*) AS count
	FROM concReserve
	WHERE conHallId = 'FC003045'
	GROUP BY resvTime, seatType
	ORDER BY resvTime;

-- 북마크 수 구하기
SELECT conId, count(*) AS bookmarks FROM concBookmark WHERE conId = 'PF218950' GROUP BY conId;

SELECT Conc.*, Hall.la, Hall.lo FROM concert Conc JOIN conHall Hall ON(Conc.conHallId = Hall.conHallId) WHERE Conc.conId = 'PF217344';