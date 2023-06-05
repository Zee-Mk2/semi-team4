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
	feature             VARCHAR(1000), 
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
    bookmarks			INT DEFAULT 0,
    views				INT DEFAULT 0
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
    bookmarks	INT DEFAULT 0,
    views		INT DEFAULT 0,
    minPrice	INT	
);

SELECT * FROM concert;

SELECT * FROM concert ORDER BY startDate;


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
DELETE FROM member WHERE mno = 13;

-- 예약 테이블
DROP TABLE reserve;
CREATE TABLE reserve (
	resvNo		INT PRIMARY KEY AUTO_INCREMENT,
    mno			INT,
    category	VARCHAR(50),
    resvName 	VARCHAR(15),
    resvTel		VARCHAR(100),
    numOfPeople	INT,
    resvPrice	INT,
    resvDate	DATETIME,
    resvStatus	DATETIME,
    FOREIGN KEY (mno) REFERENCES memberInfo(mno) ON DELETE CASCADE
);

SELECT * FROM reserve;


-- 캠핑 북마크 테이블
DROP TABLE campBookmark;
CREATE TABLE campBookmark (
	contentID			INT,
    mno					INT,
    campBookmarkDate 	DATETIME,
    FOREIGN KEY (contentID) REFERENCES campsiteInfo(contentID) ON DELETE CASCADE,
    FOREIGN KEY (mno) REFERENCES memberInfo(mno) ON DELETE CASCADE
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
SELECT * FROM member;
SELECT * FROM concert LIMIT 1;
INSERT INTO concBookmark VALUES('PF217342', 7, DEFAULT);
DELETE FROM concBookmark WHERE conId = 'PF217342' AND mno = 7;

SELECT * FROM concert WHERE conId = 'PF217344';
SELECT Conc.*, Hall.la, Hall.lo FROM concert Conc JOIN conHall Hall ON(Conc.conHallId = Hall.conHallId) WHERE Conc.conId = 'PF217344';
SELECT * FROM conHall;

SELECT * FROM campSiteInfo;

-- 게시판 테이블
DROP TABLE board;
CREATE TABLE board (
	bno				INT PRIMARY KEY AUTO_INCREMENT,
    mno				INT,
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
	replyNo			INT PRIMARY KEY AUTO_INCREMENT,
    bno				INT,
    mno				INT,
    replyContent	VARCHAR(1000),
    replycreateDate	DATETIME,
    replyStatus		VARCHAR(1),
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE SET NULL,
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE SET NULL
);

SELECT * FROM reply;

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

-- 공연 검색
SELECT conId, conNm, genre, startDate, endDate, conHallNm, posterImg, minPrice
FROM concert
WHERE status = 'Y'
AND conNm LIKE '%인어공주%';

SELECT * FROM concert WHERE conNm LIKE '%포항뮤직%';

-- 공연 상세
SELECT Conc.*, Hall.la, Hall.lo FROM concert Conc
JOIN conHall Hall ON(Conc.conHallId = Hall.conHallId)
WHERE conId = 'PF217342';

SELECT Conc.*, Hall.la, Hall.lo FROM concert Conc
JOIN conHall Hall ON(Conc.conHallId = Hall.conHallId)
WHERE conNm = '%포항%';

SELECT * FROM campSiteInfo;
SELECT contentID, campNm, lineIntro, addr, tel, img FROM campSiteInfo WHERE location='해변' AND manStatus = '운영' ORDER BY bookmarks DESC LIMIT 10;

-- 위시리스트 조회
SELECT C.conNm, C.genre, C.conHallNm, C.minPrice, C.posterImg, C.conId, C.startDate, C.endDate, C.cast, C.runtime
FROM concert C JOIN concBookmark B ON(C.conId = B.conId)
WHERE C.status = 'Y' AND B.mno = 7;