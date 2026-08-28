-- ===========================
--  1. Suppression / création de la base
-- ===========================

DROP DATABASE IF EXISTS bdAssoCult;
CREATE DATABASE bdAssoCult CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE bdAssoCult;

DROP USER IF EXISTS 'assoUser'@'localhost';

CREATE USER 'assoUser'@'localhost' IDENTIFIED BY 'assoMdp';

GRANT ALL PRIVILEGES ON bdAssoCult.* TO 'assoUser'@'localhost';
FLUSH PRIVILEGES;





USE `bdAssoCult`;