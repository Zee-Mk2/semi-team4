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
    status				VARCHAR(1),
    bookmarks			INT,
    views				INT
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
	viewAge		VARCHAR(100),
	enterNm		VARCHAR(1000),
	ticketPrice	VARCHAR(2000),
	posterImg	VARCHAR(1000),
    introImg	VARCHAR(1000),
	story		VARCHAR(5000),
	startTime	VARCHAR(1000),
    status		VARCHAR(1),
    bookmarks	INT,
    views		INT
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
    id			VARCHAR(30),
    password	VARCHAR(100),
    name		VARCHAR(15),
    email		VARCHAR(100),
    gender		VARCHAR(1),
    address		VARCHAR(100),
    favDistrict	VARCHAR(100),
    enrollDate	DATE,
    role		VARCHAR(10),
    status		VARCHAR(1)
);

SELECT * FROM member;

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
    resvDate	DATE,
    resvStatus	DATE,
    FOREIGN KEY (mno) REFERENCES memberInfo(mno) ON DELETE CASCADE
);

SELECT * FROM reserve;


-- 캠핑 북마크 테이블
DROP TABLE campBookmark;
CREATE TABLE campBookmark (
	contentID			INT,
    mno					INT,
    campBookmarkDate 	DATE,
    FOREIGN KEY (contentID) REFERENCES campsiteInfo(contentID) ON DELETE CASCADE,
    FOREIGN KEY (mno) REFERENCES memberInfo(mno) ON DELETE CASCADE
);

SELECT * FROM campBookmark;


-- 공연 북마크 테이블
DROP TABLE concBookmark;
CREATE TABLE concBookmark (
	conId       		VARCHAR(100),
    mno					INT,
    concBookmarkDate	DATE,
    FOREIGN KEY (conId) REFERENCES concert(conId) ON DELETE CASCADE,
    FOREIGN KEY (mno) REFERENCES memberInfo(mno) ON DELETE CASCADE
);

SELECT * FROM concBookmark;


-- 게시판 테이블
DROP TABLE board;
CREATE TABLE board (
	bno				INT PRIMARY KEY AUTO_INCREMENT,
    mno				INT,
    boartCat		VARCHAR(50),
    boardTitle		VARCHAR(1000),
    boardContent	VARCHAR(3000),
    boardOriFileNm	VARCHAR(100),
    boardReFileNm	VARCHAR(100),
    boardCreateDate	DATE,
    boardViews		INT,
    boardStatus		VARCHAR(1),
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
    replycreateDate	DATE,
    replyStatus		VARCHAR(1),
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE SET NULL,
    FOREIGN KEY (mno) REFERENCES member(mno) ON DELETE SET NULL
);

SELECT * FROM reply;

------------------------------- 테이블 끝 -------------------------------
