CREATE DATABASE  IF NOT EXISTS `DBProject`;
USE `DBProject`;

create table if not exists `StateInfo`(
   `State` varchar(50) NOT NULL DEFAULT '',
   `Population` bigint(15) DEFAULT NULL,
   `Gun_Ownership` double(10,2) DEFAULT NULL,
   `Income_Level` int(12) DEFAULT NULL,
   `Poverty_Level` double(12,2) DEFAULT NULL,
   `Unemployment_Rate` double(20,2) DEFAULT NULL,
   `Mental_Health_Access` int(3) DEFAULT NULL,
   `2016_Presidential_Election` varchar(200) DEFAULT NULL,
   `Governor` varchar (200) DEFAULT NULL
   -- PRIMARY KEY (`name`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
load data local infile '~/DBProject/cs336Final/TempStateInfo.csv'
into table StateInfo
fields terminated by ','
optionally enclosed by '"'
lines terminated by '.'
-- ignore 1 lines
(State,Population,Gun_Ownership,Income_Level,Poverty_Level,Unemployment_Rate,Mental_Health_Access,2016_Presidential_Election, Governor);

-- create table if not exists 'Murders-By-State'(
--   `name` varchar(50) NOT NULL DEFAULT '',
--   `license` varchar(7) DEFAULT NULL,
--   `city` varchar(50) DEFAULT NULL,
--   `phone` varchar(12) DEFAULT NULL,
--   `addr` varchar(200) DEFAULT NULL,
--   PRIMARY KEY (`name`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- load data local infile '~/Murders-By-State.csv'
-- into table Murders-By-State
-- fields terminated by ','
-- optionally enclosed by '"'
-- lines terminated by '\n'
-- ignore 1 lines
-- (State,Total_murders,Murders_by_gun,Rifles,Shotguns,Firearms);

-- create table if not exists 'Gun-Control-Laws'(
--   `name` varchar(50) NOT NULL DEFAULT '',
--   `license` varchar(7) DEFAULT NULL,
--   `city` varchar(50) DEFAULT NULL,
--   `phone` varchar(12) DEFAULT NULL,
--   `addr` varchar(200) DEFAULT NULL,
--   PRIMARY KEY (`name`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- load data local infile '~/Gun-Control-Laws.csv'
-- into table Gun-Control-Laws
-- fields terminated by ','
-- optionally enclosed by '"'
-- lines terminated by '\n'
-- ignore 1 lines
-- (State,Gun_Law_Rank,Grade,Gun_Death_Rate_Rank,Background_Checks);

-- DROP TABLE IF EXISTS `bars`;

