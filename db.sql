/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9czw2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9czw2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9czw2`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9czw2/upload/1609307621325.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm9czw2/upload/1609307630044.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm9czw2/upload/1609307638906.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/ssm9czw2/upload/1609308323391.jpg');

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308405166 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2020-12-30 13:45:26',1,1,'评论内容1','回复内容1');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (102,'2020-12-30 13:45:26',2,2,'评论内容2','回复内容2');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (103,'2020-12-30 13:45:26',3,3,'评论内容3','回复内容3');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (104,'2020-12-30 13:45:26',4,4,'评论内容4','回复内容4');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (105,'2020-12-30 13:45:26',5,5,'评论内容5','回复内容5');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (106,'2020-12-30 13:45:26',6,6,'评论内容6','回复内容6');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1609308090671,'2020-12-30 14:01:30',36,1609308058444,'很好的课程','多谢关注');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1609308405165,'2020-12-30 14:06:44',36,1609308375629,'很好',NULL);

/*Table structure for table `kechenggoumai` */

DROP TABLE IF EXISTS `kechenggoumai`;

CREATE TABLE `kechenggoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308429772 DEFAULT CHARSET=utf8 COMMENT='课程购买';

/*Data for the table `kechenggoumai` */

insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (41,'2020-12-30 13:45:26','订单编号1','课程编号1','课程名称1','课程类型1',1,1,'总金额1','2020-12-30','备注1','用户名1','姓名1','未支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (42,'2020-12-30 13:45:26','订单编号2','课程编号2','课程名称2','课程类型2',2,2,'总金额2','2020-12-30','备注2','用户名2','姓名2','未支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (43,'2020-12-30 13:45:26','订单编号3','课程编号3','课程名称3','课程类型3',3,3,'总金额3','2020-12-30','备注3','用户名3','姓名3','未支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (44,'2020-12-30 13:45:26','订单编号4','课程编号4','课程名称4','课程类型4',4,4,'总金额4','2020-12-30','备注4','用户名4','姓名4','未支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (45,'2020-12-30 13:45:26','订单编号5','课程编号5','课程名称5','课程类型5',5,5,'总金额5','2020-12-30','备注5','用户名5','姓名5','未支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (1609308416400,'2020-12-30 14:06:55','202012301464999024106','课程编号6','课程名称6','课程类型6',6,1,'6','2020-12-30','','1','陈一','已支付');
insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`beizhu`,`yonghuming`,`xingming`,`ispay`) values (1609308429771,'2020-12-30 14:07:09','20201230147420633220','1609308280222','scratch工具','Scratch',1500,1,'1500','2020-12-30','','1','陈一','已支付');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengleixing` (`kechengleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308275389 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (21,'2020-12-30 13:45:26','课程类型1');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (22,'2020-12-30 13:45:26','课程类型2');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (23,'2020-12-30 13:45:26','LOGO语言');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (24,'2020-12-30 13:45:26','Scratch');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (1609308275388,'2020-12-30 14:04:34','python');

/*Table structure for table `kechengpingjia` */

DROP TABLE IF EXISTS `kechengpingjia`;

CREATE TABLE `kechengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `yonghupingfen` varchar(200) DEFAULT NULL COMMENT '用户评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `shaitu` varchar(200) DEFAULT NULL COMMENT '晒图',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308502084 DEFAULT CHARSET=utf8 COMMENT='课程评价';

/*Data for the table `kechengpingjia` */

insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (61,'2020-12-30 13:45:26','订单编号1','课程编号1','课程名称1','1','评价内容1','http://localhost:8080/ssm9czw2/upload/1609307347763.jpg','2020-12-30','用户名1');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (62,'2020-12-30 13:45:26','订单编号2','课程编号2','课程名称2','1','评价内容2','http://localhost:8080/ssm9czw2/upload/1609307356074.jpg','2020-12-30','用户名2');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (63,'2020-12-30 13:45:26','订单编号3','课程编号3','课程名称3','1','评价内容3','http://localhost:8080/ssm9czw2/upload/1609307364329.jpg','2020-12-30','用户名3');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (64,'2020-12-30 13:45:26','订单编号4','课程编号4','课程名称4','1','评价内容4','http://localhost:8080/ssm9czw2/upload/1609307372697.jpg','2020-12-30','用户名4');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (65,'2020-12-30 13:45:26','订单编号5','课程编号5','课程名称5','1','评价内容5','http://localhost:8080/ssm9czw2/upload/1609307382138.jpg','2020-12-30','用户名5');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (66,'2020-12-30 13:45:26','订单编号6','课程编号6','课程名称6','1','评价内容6','http://localhost:8080/ssm9czw2/upload/1609307395367.jpg','2020-12-30','用户名6');
insert  into `kechengpingjia`(`id`,`addtime`,`dingdanbianhao`,`kechengbianhao`,`kechengmingcheng`,`yonghupingfen`,`pingjianeirong`,`shaitu`,`pingjiariqi`,`yonghuming`) values (1609308502083,'2020-12-30 14:08:21','20201230147420633220','1609308280222','scratch工具','5','很好的课程','http://localhost:8080/ssm9czw2/upload/1609308495753.jpg','2020-12-30','1');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `keshi` int(11) DEFAULT NULL COMMENT '课时',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308311506 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (31,'2020-12-30 13:45:26','课程编号1','课程名称1','课程类型1',1,'http://localhost:8080/ssm9czw2/upload/1609307288695.jpg',1,'<p>课程详情1</p>','2020-12-30 13:48:02',2);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (32,'2020-12-30 13:45:26','课程编号2','课程名称2','课程类型2',2,'http://localhost:8080/ssm9czw2/upload/1609307297908.jpg',2,'<p>课程详情2</p>','2020-12-30 13:48:12',3);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (33,'2020-12-30 13:45:26','课程编号3','课程名称3','课程类型3',3,'http://localhost:8080/ssm9czw2/upload/1609307308378.jpg',3,'<p>课程详情3</p>','2020-12-30 13:48:21',4);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (34,'2020-12-30 13:45:26','课程编号4','课程名称4','课程类型4',4,'http://localhost:8080/ssm9czw2/upload/1609307317846.jpg',4,'<p>课程详情4</p>','2020-12-30 13:48:32',5);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (35,'2020-12-30 13:45:26','课程编号5','课程名称5','课程类型5',5,'http://localhost:8080/ssm9czw2/upload/1609307327421.jpg',5,'<p>课程详情5</p>','2020-12-30 13:48:42',6);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (36,'2020-12-30 13:45:26','课程编号6','课程名称6','课程类型6',6,'http://localhost:8080/ssm9czw2/upload/1609307336887.jpg',6,'<p>课程详情6</p>','2020-12-30 14:09:44',13);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`tupian`,`jiage`,`kechengxiangqing`,`clicktime`,`clicknum`) values (1609308311505,'2020-12-30 14:05:10','1609308280222','scratch工具','Scratch',30,'http://localhost:8080/ssm9czw2/upload/1609308300453.jpg',1500,'<p>王夫人</p><p><img src=\"http://localhost:8080/ssm9czw2/upload/1609308309975.jpg\"></p>','2020-12-30 14:07:12',2);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609328295676 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2020-12-30 13:45:26',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2020-12-30 13:45:26',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2020-12-30 13:45:26',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2020-12-30 13:45:26',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2020-12-30 13:45:26',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2020-12-30 13:45:26',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1609308451226,'2020-12-30 14:07:30',1609308375629,'1','其他课程上线时间','快乐');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1609328295675,'2020-12-30 19:38:15',11,'用户1','订单的',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308350056 DEFAULT CHARSET=utf8 COMMENT='课程资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2020-12-30 13:45:26','标题1','http://localhost:8080/ssm9czw2/upload/1609307536873.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (82,'2020-12-30 13:45:26','标题2','http://localhost:8080/ssm9czw2/upload/1609307426171.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (83,'2020-12-30 13:45:26','标题3','http://localhost:8080/ssm9czw2/upload/1609307510851.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (84,'2020-12-30 13:45:26','标题4','http://localhost:8080/ssm9czw2/upload/1609307483402.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (85,'2020-12-30 13:45:26','标题5','http://localhost:8080/ssm9czw2/upload/1609307454263.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (86,'2020-12-30 13:45:26','标题6','http://localhost:8080/ssm9czw2/upload/1609307467038.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1609308350055,'2020-12-30 14:05:49','新课程上线','http://localhost:8080/ssm9czw2/upload/1609308339955.jpg','<p>新课程上线</p><p><img src=\"http://localhost:8080/ssm9czw2/upload/1609308348959.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308424247 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609308085049,'2020-12-30 14:01:24',1609308058444,36,'kechengxinxi','课程名称6','http://localhost:8080/ssm9czw2/upload/1609307336887.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609308099079,'2020-12-30 14:01:38',1609308058444,1609307987400,'kechengxinxi','scratch工具','http://localhost:8080/ssm9czw2/upload/1609307977332.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609308424246,'2020-12-30 14:07:03',1609308375629,1609308311505,'kechengxinxi','scratch工具','http://localhost:8080/ssm9czw2/upload/1609308300453.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','lfyd7soxj3or8n8z73c6a5thhf5u0eqz','2020-12-30 13:47:17','2020-12-30 20:38:32');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'用户1','yonghu','用户','404et5l0dzih5gz63eplw3ajiziytv8t','2020-12-30 13:57:22','2020-12-30 20:38:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1609308058444,'1','yonghu','用户','mygns6h9ikpi7m45981d4tzlu7y5jcgi','2020-12-30 14:01:04','2020-12-30 15:01:05');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1609308375629,'1','yonghu','用户','842sjfboxik19bnvf6sevsg2igl34lca','2020-12-30 14:06:22','2020-12-30 15:09:41');

/*Table structure for table `tuike` */

DROP TABLE IF EXISTS `tuike`;

CREATE TABLE `tuike` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tuikeriqi` date DEFAULT NULL COMMENT '退课日期',
  `tuikeshuoming` longtext COMMENT '退课说明',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308483698 DEFAULT CHARSET=utf8 COMMENT='退课';

/*Data for the table `tuike` */

insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (51,'2020-12-30 13:45:26','订单编号1','课程名称1','课程类型1','价格1','数量1','总金额1','2020-12-30','退课说明1','用户名1','姓名1','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (52,'2020-12-30 13:45:26','订单编号2','课程名称2','课程类型2','价格2','数量2','总金额2','2020-12-30','退课说明2','用户名2','姓名2','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (53,'2020-12-30 13:45:26','订单编号3','课程名称3','课程类型3','价格3','数量3','总金额3','2020-12-30','退课说明3','用户名3','姓名3','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (54,'2020-12-30 13:45:26','订单编号4','课程名称4','课程类型4','价格4','数量4','总金额4','2020-12-30','退课说明4','用户名4','姓名4','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (55,'2020-12-30 13:45:26','订单编号5','课程名称5','课程类型5','价格5','数量5','总金额5','2020-12-30','退课说明5','用户名5','姓名5','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (56,'2020-12-30 13:45:26','订单编号6','课程名称6','课程类型6','价格6','数量6','总金额6','2020-12-30','退课说明6','用户名6','姓名6','否','');
insert  into `tuike`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`jiage`,`shuliang`,`zongjine`,`tuikeriqi`,`tuikeshuoming`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (1609308483697,'2020-12-30 14:08:02','202012301464999024106','课程名称6','课程类型6','6','1','6','2020-12-30','不想学','1','陈一','是','ok');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2020-12-30 13:45:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1609308375630 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2020-12-30 13:45:26','用户1','123456','姓名1','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang1.jpg','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (12,'2020-12-30 13:45:26','用户2','123456','姓名2','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang2.jpg','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (13,'2020-12-30 13:45:26','用户3','123456','姓名3','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang3.jpg','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (14,'2020-12-30 13:45:26','用户4','123456','姓名4','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang4.jpg','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (15,'2020-12-30 13:45:26','用户5','123456','姓名5','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang5.jpg','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (16,'2020-12-30 13:45:26','用户6','123456','姓名6','男','http://localhost:8080/ssm9czw2/upload/yonghu_touxiang6.jpg','13823888886');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (1609308375629,'2020-12-30 14:06:15','1','2','陈一','女','http://localhost:8080/ssm9czw2/upload/1609308392547.jpg','12312312312');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
