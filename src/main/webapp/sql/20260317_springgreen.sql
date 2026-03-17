-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.44 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- springgreen 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `springgreen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springgreen`;

-- 테이블 springgreen.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `price` int DEFAULT '0',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.books:~20 rows (대략적) 내보내기
DELETE FROM `books`;
INSERT INTO `books` (`bookid`, `bookname`, `publisher`, `price`) VALUES
	(1, '축구의 역사', '굿스포츠', 7000),
	(2, '축구아는 여자', '나무수', 13000),
	(3, '축구의 이해', '대한미디어', 22000),
	(4, '골프 바이블', '대한미디어', 35000),
	(5, '피겨 교본', '굿스포츠', 8000),
	(6, '역도 단계별기술', '굿스포츠', 6000),
	(7, '야구의 추억', '이상미디어', 20000),
	(8, '야구를 부탁해', '이상미디어', 13000),
	(9, '올림픽 이야기', '삼성당', 7500),
	(10, 'Olympic Champions', 'Pearson', 13000),
	(11, '가나다', '삼성당', 17500),
	(12, '포토샵CS6', '제우미디어', 25000),
	(13, '아시안게임 이야기', '스포츠북', 19500),
	(14, '우리들 이야기', '우리출판사', 5000),
	(15, '서로 사랑하자', '이상미디어', 18000),
	(16, '하나된 마음으로', '대한미디어', 21000),
	(17, '나눌수 있을때', '나무수', 9000),
	(18, '함박눈 내리는날', '이상미디어', 15000),
	(19, '나보다 축구를', '굿스포츠', 23000),
	(20, '시작했을때 한번더', '삼성당', 19000);

-- 테이블 springgreen.buseos 구조 내보내기
CREATE TABLE IF NOT EXISTS `buseos` (
  `buseoId` int NOT NULL,
  `buseoName` varchar(10) NOT NULL,
  `jiyuk` varchar(10) NOT NULL,
  PRIMARY KEY (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.buseos:~3 rows (대략적) 내보내기
DELETE FROM `buseos`;
INSERT INTO `buseos` (`buseoId`, `buseoName`, `jiyuk`) VALUES
	(10, '인사', '서울'),
	(20, '개발', '부산'),
	(30, '마케팅', '서울');

-- 테이블 springgreen.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.customer:~7 rows (대략적) 내보내기
DELETE FROM `customer`;
INSERT INTO `customer` (`custid`, `name`, `address`, `phone`) VALUES
	(1, '박지성', '영국 맨체스타', '000-5000-0001'),
	(2, '김연아', '대한민국 서울', '000-6000-0001'),
	(3, '김말숙', '대한민국 강원도', '000-7000-0001'),
	(4, '손흥민', '영국 토트넘', '000-8000-0001'),
	(5, '박세리', '대한민국 대전', '001-0011-0012'),
	(6, '이순신', '대한민국 아산', '001-0009-0007'),
	(7, '소나무', '대한민국 청주', '000-1100-0050');

-- 테이블 springgreen.guest 구조 내보내기
CREATE TABLE IF NOT EXISTS `guest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `visitDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `clientIp` varchar(30) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.guest:~20 rows (대략적) 내보내기
DELETE FROM `guest`;
INSERT INTO `guest` (`idx`, `name`, `content`, `email`, `homePage`, `visitDate`, `clientIp`) VALUES
	(1, '관리자', '방명록 서비스를 시작합니다.', '6vivace@hanmail.net', 'abc', '2026-03-09 11:21:19', '192.168.50.64'),
	(2, '홍길동', '글남깁니다.', '6vivace@hanmail.net', 'https://', '2026-03-09 12:24:17', '0:0:0:0:0:0:0:1'),
	(3, '홍길동', '방문했음.', '6vivace@hanmail.net', 'https://', '2026-03-09 12:36:24', '192.168.50.64'),
	(5, 'asd', 'asd', 'asd', 'https://www.naver.com', '2026-03-09 12:42:34', '192.168.50.64'),
	(6, '홍길동', '111', '6vivace@hanmail.net', '', '2026-03-09 12:44:09', '192.168.50.64'),
	(7, '123', '123', '123', 'https://', '2026-03-09 12:46:01', '192.168.50.64'),
	(8, '12313124', '12312312421', '123123213', 'https://', '2026-03-09 12:52:33', '192.168.50.69'),
	(9, '아톰', '방가', '6vivace@hanmail.net', 'https://cjsk1126.tistory.com', '2026-03-09 12:55:01', '127.0.0.1'),
	(10, '이톰', '방문완료', '', 'https://', '2026-03-09 13:06:01', '192.168.50.64'),
	(11, '씨톰', 'zzz', '6vivace@gmail.com', 'https://www.google.com', '2026-03-09 13:07:38', '192.168.50.64'),
	(12, '홍길동', '인사올림.\r\n\r\n<img src="https://pixabay.com/ko/images/download/wj_y2017fufu-daisy-10139490_1920.jpg" width="200px"/>', '6vivace@hanmail.net', 'https://cjsk1126.tistory.com', '2026-03-09 14:34:19', '192.168.50.64'),
	(13, '아톰', '이미지좀~\r\n\r\n<img src="https://kr.freepik.com/free-vector/graident-ai-robot-vectorart_125887871.htm#fromView=keyword&page=1&position=0&uuid=e401cd56-c592-44e9-b0ad-1bfec26651cf&query=Bot width="200px"/>', '6vivace@hanmail.net', 'https://www.daum.net', '2026-03-09 14:37:55', '192.168.50.64'),
	(14, '홍길동', '제발~\r\n\r\n<img src="https://discuss.pytorch.kr/uploads/default/original/2X/4/46b22ec06888396d927e15a991ec2945dcec66e9.jpeg " width="200px"/>', '6vivace@gmail.com', 'https://www.google.com', '2026-03-09 14:39:36', '192.168.50.64'),
	(15, '아톰', '<marquee>안녕하세요</marquee>', '', 'https://', '2026-03-09 14:40:55', '192.168.50.64'),
	(16, '홍길동', '<marquee direction="up" width="300px" height="100px">위로 이동</marquee>', '', 'https://', '2026-03-09 14:42:12', '192.168.50.64'),
	(17, '홍길동', '<marquee direction="up" width="300px" height="100px"><img src="https://discuss.pytorch.kr/uploads/default/original/2X/4/46b22ec06888396d927e15a991ec2945dcec66e9.jpeg " width="200px"/></marquee>', '', 'https://', '2026-03-09 14:44:04', '192.168.50.64'),
	(18, '아톰', '<marquee width="300px" height="100px"><img src="https://discuss.pytorch.kr/uploads/default/original/2X/4/46b22ec06888396d927e15a991ec2945dcec66e9.jpeg " width="200px"/></marquee>', '', 'https://', '2026-03-09 14:45:16', '192.168.50.64'),
	(19, '김말숙', '^^', '', 'https://', '2026-03-09 15:33:49', '192.168.50.64'),
	(24, 'admin', '로그인해서 들어와서 글남김', '', 'https://', '2026-03-10 11:05:39', '127.0.0.1'),
	(26, 'hkd1234', '글글글', '', 'https://', '2026-03-12 14:40:12', '127.0.0.1');

-- 테이블 springgreen.hakjum 구조 내보내기
CREATE TABLE IF NOT EXISTS `hakjum` (
  `grade` char(1) NOT NULL,
  `minScore` int NOT NULL,
  `maxScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hakjum:~5 rows (대략적) 내보내기
DELETE FROM `hakjum`;
INSERT INTO `hakjum` (`grade`, `minScore`, `maxScore`) VALUES
	('A', 90, 100),
	('B', 80, 89),
	('C', 70, 79),
	('D', 60, 69),
	('F', 0, 59);

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~8 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(4, '씨톰', 20, '여자', '서울'),
	(13, '아톰', 23, '남자', '광주'),
	(15, '아톰', 20, '여자', '서울'),
	(16, '에프톰', 33, '남자', '부산'),
	(17, '홍길동', 35, '남자', '대전'),
	(18, '김말숙', 55, '남자', '울산'),
	(19, '디톰', 20, '여자', '제주'),
	(20, '비톰맨', 44, '남자', '청주');

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~15 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-23 13:50:19'),
	(2, '김말숙', 20, '여자', '2026-01-23 13:50:20'),
	(3, '김연아', 20, '여자', '2026-01-23 13:50:21'),
	(4, '홍길순', 33, '여자', '2023-05-05 00:00:00'),
	(6, '아이유', 30, '여자', '2023-11-11 00:00:00'),
	(7, '아톰', 29, '남자', '2021-07-01 00:00:00'),
	(8, '씨톰', 40, '남자', '2016-03-21 00:00:00'),
	(9, '김자바', 36, '여자', '2015-02-10 00:00:00'),
	(10, '스프링', 37, '남자', '2024-04-07 00:00:00'),
	(11, '김회원', 43, '남자', '2025-12-20 00:00:00'),
	(12, '박사원', 37, '여자', '2025-03-05 00:00:00'),
	(13, '송아지', 23, '여자', '2025-02-01 00:00:00'),
	(14, '송사리', 27, '남자', '2024-07-01 00:00:00'),
	(15, '이재명', 55, '남자', '2025-05-10 00:00:00'),
	(16, '차회사', 50, '남자', '2024-05-20 00:00:00');

-- 테이블 springgreen.insa2 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'noimage.jpg',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa2:~4 rows (대략적) 내보내기
DELETE FROM `insa2`;
INSERT INTO `insa2` (`idx`, `name`, `age`, `gender`, `ipsail`, `photo`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-27 09:54:18', 'noimage.jpg'),
	(2, '김말숙', 20, '여자', '2026-01-27 09:54:19', 'noimage.jpg'),
	(3, '김연아', 20, '여자', '2026-01-27 09:54:20', 'noimage.jpg'),
	(4, '차청주', 37, '남자', '2010-02-24 00:00:00', 'noimage.jpg');

-- 테이블 springgreen.jikmu 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikmu` (
  `buseoId` int NOT NULL,
  `jikmuId` char(2) NOT NULL,
  PRIMARY KEY (`jikmuId`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikmu_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikmu:~3 rows (대략적) 내보내기
DELETE FROM `jikmu`;
INSERT INTO `jikmu` (`buseoId`, `jikmuId`) VALUES
	(10, 'J1'),
	(20, 'J2'),
	(30, 'J3');

-- 테이블 springgreen.jikwon 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwon` (
  `no` int NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `bonus` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwon:~10 rows (대략적) 내보내기
DELETE FROM `jikwon`;
INSERT INTO `jikwon` (`no`, `buseo`, `pay`, `bonus`) VALUES
	(101, '인사', 800, 100),
	(102, '개발', 1200, 20),
	(103, '기획', 1200, 0),
	(104, '개발', 1300, 30),
	(105, '개발', 1100, 50),
	(106, '인사', 900, 0),
	(107, '기획', 1400, 20),
	(108, '인사', 1200, 50),
	(109, '인사', 1100, 0),
	(110, '기획', 700, 100);

-- 테이블 springgreen.jikwons 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwons` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikwons_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwons:~3 rows (대략적) 내보내기
DELETE FROM `jikwons`;
INSERT INTO `jikwons` (`id`, `name`, `buseoId`) VALUES
	(101, '홍길동', 10),
	(102, '김말숙', 20),
	(103, '이기자', 10);

-- 테이블 springgreen.jobs 구조 내보내기
CREATE TABLE IF NOT EXISTS `jobs` (
  `no` int NOT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jobs:~7 rows (대략적) 내보내기
DELETE FROM `jobs`;
INSERT INTO `jobs` (`no`, `job`) VALUES
	(1, NULL),
	(2, '공무원'),
	(3, '회사원'),
	(4, '학생'),
	(5, NULL),
	(6, '자영업'),
	(7, NULL);

-- 테이블 springgreen.jproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jproduct:~0 rows (대략적) 내보내기
DELETE FROM `jproduct`;

-- 테이블 springgreen.jumun 구조 내보내기
CREATE TABLE IF NOT EXISTS `jumun` (
  `no` int NOT NULL,
  `ilja` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jumun:~7 rows (대략적) 내보내기
DELETE FROM `jumun`;
INSERT INTO `jumun` (`no`, `ilja`) VALUES
	(101, '2026-03-02 00:00:00'),
	(102, '2026-03-09 00:00:00'),
	(103, '2026-03-12 00:00:00'),
	(104, '2026-04-01 00:00:00'),
	(105, '2026-04-06 00:00:00'),
	(106, '2026-04-30 00:00:00'),
	(107, '2026-05-22 00:00:00');

-- 테이블 springgreen.kwamok 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok` (
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok:~5 rows (대략적) 내보내기
DELETE FROM `kwamok`;
INSERT INTO `kwamok` (`code`) VALUES
	(201),
	(202),
	(203),
	(204),
	(205);

-- 테이블 springgreen.kwamok2 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok2` (
  `id` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok2:~2 rows (대략적) 내보내기
DELETE FROM `kwamok2`;
INSERT INTO `kwamok2` (`id`, `kwamokName`) VALUES
	(1, '수학'),
	(3, '컴퓨터');

-- 테이블 springgreen.kwamoks 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamoks` (
  `kwamokId` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamoks:~3 rows (대략적) 내보내기
DELETE FROM `kwamoks`;
INSERT INTO `kwamoks` (`kwamokId`, `kwamokName`) VALUES
	(1, '수학'),
	(2, '과학'),
	(3, '컴퓨터');

-- 테이블 springgreen.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.member:~11 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(2, 'hkd1234', 'b7f2eacc03eacd3246209b121bb99f4e40fcf48f46721f9e8663927ea9da1a67cc46af84', '홍장군', '홍길동', '남자', '2026-03-12 00:00:00', '010-1234-1234', '27875 /충북 진천군 덕산읍 대하로 87 /100-1000 / (영무예다음) ', '6vivace@gmail.com', 'https://www.naver.com', '기타', '수영/독서/기타', 'noimage.jpg', '홍길동입니다.\r\n잘부탁드립니다.', '공개', 'NO', 370, 2, 0, '2026-03-12 11:10:12', '2026-03-16 14:57:31', 1),
	(4, 'kms1234', '8f92a1bb5dbe0bcd6efe9dc5fd4109662176175eeae2fceb4b51004489e1ec2e8bcfefe0', '김장미', '김말숙', '여자', '2026-03-12 00:00:00', '010-3333-2323', '17950 /경기 평택시 포승읍 원정리 1278 /100-1000 / ', '6vivace@hotmail.com', 'https://www.naver.com', '기타', '기타', 'noimage.jpg', '김말숙 만세', '공개', 'NO', 130, 1, 0, '2026-03-12 11:15:41', '2026-03-16 14:57:07', 2),
	(5, 'snm1234', '5d0770ef6373438e2427373c9bc619f40ddedab77b1ed45de14ac806cc5e9da2b57bcb5b', '독야청청', '소나무', '남자', '2026-03-12 00:00:00', '010-3232-2323', '18560 /경기 화성시 만세구 우정읍 3.1만세로281번길 29-30 /100-1000 / ', '6vivace@nate.com', 'https://', '기타', '수영/독서/영화감상/기타', 'noimage.jpg', '소나무', '공개', 'NO', 120, 1, 0, '2026-03-12 11:21:36', '2026-03-12 11:21:36', 0),
	(6, 'kkc1234', 'f57f8aea55a0b2d20097bbf7a42c6b8fce46b3245ef5768520739a9437c66edf349648ac', '강장군', '강감찬', '남자', '2026-03-12 00:00:00', '010-2323-1111', '61738 /광주 남구 송하동 319 /100-1000 / ', '6vivace@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '강장군 만세', '공개', 'NO', 110, 1, 0, '2026-03-12 11:25:10', '2026-03-12 11:25:10', 0),
	(7, 'admin', 'ed62f6ceb45f9fad076370e00ecb70456800f9e6da72f3f1c4cf8fee61d236604da4f77a', '관리맨', '관리자', '여자', '2026-03-12 00:00:00', '010-6407-7363', '27875 /충북 진천군 덕산읍 대하로 87 /107-1703 /(영무예다음) ', '6vivace@naver.com', 'https://www.daum.net', '기타', '수영/독서/영화감상/기타', 'noimage.jpg', '관리자입니다.\r\n프로젝트에 에러가 있으면 방명록에 글을 남겨주세요.', '공개', 'NO', 160, 0, 0, '2026-03-12 11:45:32', '2026-03-17 12:32:18', 3),
	(8, 'kya1234', '4ec9d80a60b81e4cf8ee3c2328820e93d3f616baf2721e5451f63b7027e3d47d46dc6f5d', '피겨여왕', '김연아', '여자', '2026-03-12 00:00:00', '010-9876-5432', '39415 /경북 구미시 3공단로 89-39 /100 / (시미동) ', '6vivace@naver.com', 'https://', '기타', '수영/독서/기타', 'noimage.jpg', '', '공개', 'NO', 100, 1, 0, '2026-03-12 15:43:34', '2026-03-12 15:43:34', 0),
	(9, 'atom1234', '0a2c71d86af2b5689babf7009c0230f2e604ca7091794156e40825bbcad6f29d64a16915', '아톰맨', '아톰', '남자', '2026-03-12 00:00:00', '010-1234-8521', ' / / / ', '6vivace@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '공개', 'NO', 180, 2, 0, '2026-03-12 15:44:22', '2026-03-16 14:59:00', 8),
	(10, 'btom1234', '6b155a4faecd1ab67e12094e7cd08b39c80ae99b6274d28a17690487a789a651d68b16a5', '비톰맨', '비톰', '남자', '2026-03-12 00:00:00', '010-7854-5632', ' / / / ', '6vivace@nate.com', 'https://', '기타', '바둑/기타', 'noimage.jpg', '', '공개', 'NO', 140, 1, 0, '2026-03-12 15:45:11', '2026-03-16 14:59:51', 5),
	(11, 'dtom1234', 'de4a8a8a0ce5891d42a98e1453fd312a2a64f7c762f9caddc9b31e5de7fcae428e51c087', '디톰맨', '디톰', '남자', '2026-03-12 00:00:00', '010-2345-6789', ' / / / ', '6vivace@yahoo.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 140, 2, 0, '2026-03-12 16:39:23', '2026-03-13 17:21:41', 0),
	(12, 'ftom1234', '5d91d60faa24a987b51285827f2ad9ea9aeb2704dabfb3defe25e868e1b38b0e5d2ecad5', '에프톰맨', '에프톰', '남자', '2026-03-12 00:00:00', '010-4567-8912', ' / / / ', '6vivace@hotmail.com', 'https://', '기타', '영화감상/기타', 'noimage.jpg', '', '비공개', 'NO', 110, 2, 0, '2026-03-12 16:42:14', '2026-03-12 16:42:14', 0),
	(13, 'ztom1234', '0a2c71d86af2b5689babf7009c0230f2e604ca7091794156e40825bbcad6f29d64a16915', '젯톰맨', '제트톰', '남자', '2026-03-13 00:00:00', '010-2345-6789', '18439 /경기 화성시 동탄구 10용사2길 4 /100 / (반송동) ', '6vivace@naver.com', 'https://www.naver.com', '기타', '독서/기타', 'noimage.jpg', '자기', '공개', 'OK', 140, 99, 0, '2026-03-13 10:55:09', '2026-03-13 12:18:19', 0);

-- 테이블 springgreen.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `bookid` int NOT NULL,
  `saleprice` int DEFAULT '0',
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.orders:~20 rows (대략적) 내보내기
DELETE FROM `orders`;
INSERT INTO `orders` (`orderid`, `custid`, `bookid`, `saleprice`, `orderdate`) VALUES
	(1, 1, 1, 6000, '2019-08-01 00:00:00'),
	(2, 1, 3, 21000, '2018-09-03 00:00:00'),
	(3, 2, 5, 8000, '2022-11-03 00:00:00'),
	(4, 3, 6, 6000, '2020-06-04 00:00:00'),
	(5, 4, 7, 19000, '2019-11-05 00:00:00'),
	(6, 1, 2, 12000, '2021-09-07 00:00:00'),
	(7, 4, 8, 11000, '2019-03-07 00:00:00'),
	(8, 3, 10, 12000, '2021-07-08 00:00:00'),
	(9, 2, 10, 9000, '2017-05-09 00:00:00'),
	(10, 3, 18, 13000, '2023-10-11 00:00:00'),
	(11, 7, 15, 15000, '2023-06-17 00:00:00'),
	(12, 7, 20, 16000, '2023-12-19 00:00:00'),
	(13, 3, 19, 23000, '2023-06-30 00:00:00'),
	(14, 1, 16, 17000, '2023-11-21 00:00:00'),
	(15, 4, 15, 13000, '2023-05-12 00:00:00'),
	(16, 7, 10, 13000, '2025-09-24 00:00:00'),
	(17, 1, 12, 23000, '2025-02-26 00:00:00'),
	(18, 2, 11, 13000, '2025-09-16 00:00:00'),
	(19, 4, 20, 13000, '2026-03-20 00:00:00'),
	(20, 4, 15, 20000, '2026-04-26 00:00:00');

-- 테이블 springgreen.panme2 구조 내보내기
CREATE TABLE IF NOT EXISTS `panme2` (
  `nalja` datetime NOT NULL,
  `jikwon` varchar(10) NOT NULL,
  `mechul` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.panme2:~6 rows (대략적) 내보내기
DELETE FROM `panme2`;
INSERT INTO `panme2` (`nalja`, `jikwon`, `mechul`) VALUES
	('2026-03-01 00:00:00', '홍길동', 100),
	('2026-03-02 00:00:00', '홍길동', 200),
	('2026-03-03 00:00:00', '홍길동', 150),
	('2026-03-01 00:00:00', '김말숙', 300),
	('2026-03-02 00:00:00', '김말숙', 350),
	('2026-03-01 00:00:00', '이기자', 250);

-- 테이블 springgreen.products 구조 내보내기
CREATE TABLE IF NOT EXISTS `products` (
  `productName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.products:~8 rows (대략적) 내보내기
DELETE FROM `products`;
INSERT INTO `products` (`productName`, `price`) VALUES
	('진라면', 1300),
	('새우탕면', 1100),
	('너구리', 1800),
	('틈새라면', 1200),
	('비빔면', 1500),
	('안성탕면', 1000),
	('라면시대', 1900),
	('신_라면', 2200);

-- 테이블 springgreen.salary 구조 내보내기
CREATE TABLE IF NOT EXISTS `salary` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `position` varchar(10) NOT NULL,
  `overtime` int DEFAULT '0',
  `netpay` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.salary:~0 rows (대략적) 내보내기
DELETE FROM `salary`;

-- 테이블 springgreen.sawon 구조 내보내기
CREATE TABLE IF NOT EXISTS `sawon` (
  `sabun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`sabun`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `sawon_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sawon:~5 rows (대략적) 내보내기
DELETE FROM `sawon`;
INSERT INTO `sawon` (`sabun`, `name`, `pay`, `buseoId`) VALUES
	(101, '김사원', 5000, 10),
	(102, '김과장', 6000, 20),
	(103, '서대리', 4000, 10),
	(104, '이부장', 7000, 30),
	(105, '오과장', 6500, 30);

-- 테이블 springgreen.students 구조 내보내기
CREATE TABLE IF NOT EXISTS `students` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `age` int DEFAULT '20',
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students:~8 rows (대략적) 내보내기
DELETE FROM `students`;
INSERT INTO `students` (`hakbun`, `name`, `age`, `score`) VALUES
	(101, '홍길동', 20, 85),
	(102, '이순신', 21, 73),
	(103, '임꺽정', 20, 59),
	(104, '장보고', 21, 92),
	(105, '홍길동', 20, 63),
	(106, '김연아', 23, 88),
	(107, '오하늘', 23, 81),
	(108, '강감찬', 24, 95);

-- 테이블 springgreen.students2 구조 내보내기
CREATE TABLE IF NOT EXISTS `students2` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `kwamokId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students2:~4 rows (대략적) 내보내기
DELETE FROM `students2`;
INSERT INTO `students2` (`hakbun`, `name`, `kwamokId`) VALUES
	(101, '홍길동', 1),
	(102, '이순신', 2),
	(103, '임꺽정', NULL),
	(103, '이기자', 2);

-- 테이블 springgreen.students3 구조 내보내기
CREATE TABLE IF NOT EXISTS `students3` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students3:~3 rows (대략적) 내보내기
DELETE FROM `students3`;
INSERT INTO `students3` (`name`, `hakbun`, `major`) VALUES
	('홍길동', 21, '컴퓨터'),
	('김말숙', 22, '경영'),
	('이기자', 24, '물리');

-- 테이블 springgreen.students4 구조 내보내기
CREATE TABLE IF NOT EXISTS `students4` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students4:~3 rows (대략적) 내보내기
DELETE FROM `students4`;
INSERT INTO `students4` (`name`, `hakbun`, `major`) VALUES
	('강감찬', 21, '물리'),
	('김말숙', 22, '경영'),
	('김연아', 23, '교육');

-- 테이블 springgreen.sungjuks 구조 내보내기
CREATE TABLE IF NOT EXISTS `sungjuks` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `jumsu` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sungjuks:~7 rows (대략적) 내보내기
DELETE FROM `sungjuks`;
INSERT INTO `sungjuks` (`idx`, `name`, `jumsu`) VALUES
	(1, '길동', 90),
	(2, '말숙', 80),
	(3, '철수', 90),
	(4, '영희', 60),
	(5, '민수', 60),
	(6, '수민', 50),
	(7, '수지', 70);

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~7 rows (대략적) 내보내기
DELETE FROM `test`;
INSERT INTO `test` (`name`, `age`, `gender`, `ipsail`, `address`) VALUES
	('강감찬', 50, '남자', '2026-01-15 18:02:12', '제주'),
	('가나다', 20, '남자', '2000-10-01 00:00:00', '광주'),
	('소나무', 34, '남자', '2023-06-25 00:00:00', '울산'),
	('이순순', 42, '남자', '2024-09-09 00:00:00', '서울'),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:07:57', '제주'),
	('강감찬', 50, '남자', '2026-01-16 09:28:00', '제주');

-- 테이블 springgreen.test2 구조 내보내기
CREATE TABLE IF NOT EXISTS `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test2:~12 rows (대략적) 내보내기
DELETE FROM `test2`;
INSERT INTO `test2` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 20, '남자', NULL),
	(2, '', 20, '남자', NULL),
	(3, '김말숙', 20, '여자', ''),
	(5, '김연아', 29, '남자', '서울'),
	(6, '소나무', 55, '남자', '청주'),
	(7, '오하늘', 39, '여자', '서울'),
	(8, '가나다', 39, '여자', '제주'),
	(9, '고인돌', 39, '남자', '광주'),
	(10, '아톰', 19, '여자', '청주'),
	(11, '비톰', 44, '남자', '제주'),
	(14, '씨톰', 46, '여자', '서울'),
	(15, '연습맨', 20, '남자', NULL);

-- 테이블 springgreen.test3 구조 내보내기
CREATE TABLE IF NOT EXISTS `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test3:~3 rows (대략적) 내보내기
DELETE FROM `test3`;
INSERT INTO `test3` (`idx`, `mid`, `name`, `age`) VALUES
	(1, 'hkd1234', '홍길동', 25),
	(2, 'hks1234', '홍길순', 22),
	(3, 'lkj1234', '이기자', 12);

-- 테이블 springgreen.test4 구조 내보내기
CREATE TABLE IF NOT EXISTS `test4` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `test3` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test4:~2 rows (대략적) 내보내기
DELETE FROM `test4`;
INSERT INTO `test4` (`idx`, `mid`, `bookName`, `price`) VALUES
	(1, 'lkj1234', '노인과바다', 10000),
	(2, 'hkd1234', '노을저편', 25000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
