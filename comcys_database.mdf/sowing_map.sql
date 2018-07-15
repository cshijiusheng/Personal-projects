SET NAMES UTF8;
DROP DATABASE IF EXISTS the_game;
CREATE DATABASE the_game CHARSET=UTF8;
USE the_game;

CREATE TABLE carousel_one(
    bid	INT PRIMARY KEY,
    href VARCHAR(128),
    pic VARCHAR(128),
    title VARCHAR(100)
);
INSERT INTO carousel_one VALUES
(11,'javascript::','img/subject/15246515587209.jpg','轮播图11'),
(12,'javascript::','img/subject/15246516251691.jpg','轮播图12'),
(13,'javascript::','img/subject/15247998044858.jpg','轮播图13'),
(14,'javascript::','img/subject/15248195516513.jpg','轮播图14'),
(15,'javascript::','img/subject/14660574907263.jpg','轮播图15'),
(16,'javascript::','img/subject/14737614421487.jpg','轮播图16'),
(17,'javascript::','img/subject/14708212103559.jpg','轮播图17');
CREATE TABLE carousel_two(
    nid	INT PRIMARY KEY,
    href VARCHAR(128),
    pic VARCHAR(128),
    title VARCHAR(100)
);
INSERT INTO carousel_two VALUES
(21,'javascript::','img/subject/17173.jpg','轮播图21'),
(22,'javascript::','img/subject/dw.jpg','轮播图22'),
(23,'javascript::','img/subject/xl.jpg','轮播图23'),
(24,'javascript::','img/subject/52pk.jpg','轮播图24');
CREATE TABLE carousel_three(
    mid	INT PRIMARY KEY,
    href VARCHAR(128),
    pic VARCHAR(128),
    title VARCHAR(100)
);
INSERT INTO carousel_three VALUES
(31,'javascript::','img/subject/14968216042788.jpg','轮播图31'),
(32,'javascript::','img/subject/14968223353773.jpg','轮播图32'),
(33,'javascript::','img/subject/14968226417109.jpg','轮播图33'),
(34,'javascript::','img/subject/14968226626259.jpg','轮播图34'),
(35,'javascript::','img/subject/14968226794480.jpg','轮播图35'),
(36,'javascript::','img/subject/14968227327068.jpg','轮播图36'),
(37,'javascript::','img/subject/15015601354357.jpg','轮播图37'),
(38,'javascript::','img/subject/14968227526109.jpg','轮播图38'),
(39,'javascript::','img/subject/14993111854416.jpg','轮播图39'),
(40,'javascript::','img/subject/14968238586709.jpg','轮播图40'),
(41,'javascript::','img/subject/14993110304336.jpg','轮播图41'),
(42,'javascript::','img/subject/14968240679011.jpg','轮播图42'),
(43,'javascript::','img/subject/14968240292940.jpg','轮播图43'),
(44,'javascript::','img/subject/14968239972806.jpg','轮播图44'),
(45,'javascript::','img/subject/14968239561617.jpg','轮播图45'),
(46,'javascript::','img/subject/14993234517600.jpg','轮播图46'),
(47,'javascript::','img/subject/14986356573281.jpg','轮播图47');

CREATE TABLE user(
	id INT  PRIMARY KEY not null AUTO_INCREMENT, 
	gamename VARCHAR(64),
	rootname VARCHAR(64) NOT  NULL,
	epwd VARCHAR(64)  NOT  NULL,
	ename VARCHAR(64)  NOT  NULL,
	idcard char(18)	
);
INSERT INTO user VALUES
('1','九重天','json','123456789','真实名','131022199702241815'),
('2','九重天','tom','123456789','真实名','131022199702241815'),
('3','九重天','王皓','123456789','真实名','131022199702241815'),
('4','九重天','tom','123456789','真实名','131022199702241815'),
('5','九重天','tom','123456789','真实名','131022199702241815');

CREATE TABLE whole(
	yid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO whole VALUES
('1','javascript::','img/subject/li-tb.png','九重天5.1维护公告','04-27'),
('2','javascript::','img/subject/li-tb.png','五一贺新服 返利齐分享','04-27'),
('3','javascript::','img/subject/li-tb.png','“廉云之眼”预创建预充值开启','04-25'),
('4','javascript::','img/subject/li-tb.png','新服“廉云之眼”5月3日开服公告','04-25'),
('5','javascript::','img/subject/li-tb.png','九重天4月24日维护公告','04-23'),
('6','javascript::','img/subject/li-tb.png','4月20日临时维护公告','04-20'),
('7','javascript::','img/subject/li-tb.png','九重天4.17例行维护公告','04-16'),
('8','javascript::','img/subject/li-tb.png','激情过五一 折扣提前享','04-16');
CREATE TABLE news(
	uid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO news VALUES
('1','javascript::','img/subject/li-tb.png','《九重天》决战冰牙洞 BOSS技能大揭秘','04-05'),
('2','javascript::','img/subject/li-tb.png','横刀披甲上马 《九重天》男神养成一步到位','03-31'),
('3','javascript::','img/subject/li-tb.png','《九重天》玄幻战场 风云再起','03-29'),
('4','javascript::','img/subject/li-tb.png','挑战最高极限《九重天》玩家协力斗智斗勇','03-28'),
('5','javascript::','img/subject/li-tb.png','《九重天》天赋系统，双重个性极致演绎','03-25'),
('6','javascript::','img/subject/li-tb.png','桃李芬芳念师恩《九重天》师徒修炼','03-25'),
('7','javascript::','img/subject/li-tb.png','修真界主旋律《九重天》PVE风潮风靡','03-18'),
('8','javascript::','img/subject/li-tb.png','萌宠降临《九重天》激萌宝宝成就修真新境界','03-13');
CREATE TABLE notice(                      
	iid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO notice VALUES
('1','javascript::','img/subject/li-tb.png','九重天5.1维护公告','04-27'),
('2','javascript::','img/subject/li-tb.png','“廉云之眼”预创建预充值开启','04-25'),
('3','javascript::','img/subject/li-tb.png','新服“廉云之眼”5月3日开服公告','04-25'),
('4','javascript::','img/subject/li-tb.png','九重天4月24日维护公告','04-23'),
('5','javascript::','img/subject/li-tb.png','4月20日临时维护公告','04-20'),
('6','javascript::','img/subject/li-tb.png','九重天4.17例行维护公告','04-16'),
('7','javascript::','img/subject/li-tb.png','“师德传承 亲密共赢”活动排名公布','04-10'),
('8','javascript::','img/subject/li-tb.png','4月12日服务器数据互通公告！','04-10');
CREATE TABLE activity(
	oid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO activity VALUES
('1','javascript::','img/subject/li-tb.png','五一贺新服 返利齐分享','04-27'),
('2','javascript::','img/subject/li-tb.png','激情过五一 折扣提前享','04-16'),
('3','javascript::','img/subject/li-tb.png','春暖四月天 美景在眼前','04-10'),
('4','javascript::','img/subject/li-tb.png','群英汇九重 齐聚“临沧渡” 全新活动开启','03-30'),
('5','javascript::','img/subject/li-tb.png','“群英汇九重 齐聚临沧渡”预创建预充值开启','03-30'),
('6','javascript::','img/subject/li-tb.png','好礼回馈 助升上神','03-28'),
('7','javascript::','img/subject/li-tb.png','三月春暖花开 新服持续狂欢','03-19'),
('8','javascript::','img/subject/li-tb.png','八大活动来献礼 丰厚奖励贺新服','03-09');
CREATE TABLE strategy(
	pid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO strategy VALUES
('1','javascript::','img/subject/li-tb.png','1~20级攻略','09-09'),
('2','javascript::','img/subject/li-tb.png','21-30级升级攻略','09-10'),
('3','javascript::','img/subject/li-tb.png','31~40级攻略','09-10'),
('4','javascript::','img/subject/li-tb.png','41~55升级攻略','09-12');


CREATE TABLE media(
	kid INT PRIMARY KEY,
	href VARCHAR(128),
	pic VARCHAR(128),
	text VARCHAR(64),
	em VARCHAR(32)	
);
INSERT INTO media VALUES
('1','javascript::','img/subject/li-tb.png','媒体礼包 专用领取通道','03-12'),
('2','javascript::','img/subject/li-tb.png','点击领取17173媒体礼包','05-31'),
('3','javascript::','img/subject/li-tb.png','点击领取多玩特权礼包','05-31'),
('4','javascript::','img/subject/li-tb.png','点击领取新浪独家礼包','05-31'),
('5','javascript::','img/subject/li-tb.png','新服“浮云巅”媒体礼包汇总','07-05'),
('6','javascript::','img/subject/li-tb.png','1688玩降魔礼包','03-17');

