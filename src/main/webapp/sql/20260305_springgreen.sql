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

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~5 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, 'null', 30, '남자', '청주'),
	(2, 'ㄱㄱㄱ', 30, '남자', '부산'),
	(3, 'ㅇㅇ', 50, '여자', '대전'),
	(4, '씨톰', 20, '여자', '서울');

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

-- 테이블 springgreen.jproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jproduct:~0 rows (대략적) 내보내기
DELETE FROM `jproduct`;

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

-- 테이블 데이터 springgreen.test2:~13 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.test3:~2 rows (대략적) 내보내기
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
