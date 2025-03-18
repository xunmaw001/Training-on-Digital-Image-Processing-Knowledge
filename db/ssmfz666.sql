-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmfz666
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suoshuzhuanye` varchar(200) DEFAULT NULL COMMENT '所属专业',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358137881 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (31,'2021-02-15 02:52:00','所属专业1','班级名称1'),(32,'2021-02-15 02:52:00','所属专业2','班级名称2'),(33,'2021-02-15 02:52:00','所属专业3','班级名称3'),(34,'2021-02-15 02:52:00','所属专业4','班级名称4'),(35,'2021-02-15 02:52:00','所属专业5','班级名称5'),(36,'2021-02-15 02:52:00','所属专业6','班级名称6'),(1613357888465,'2021-02-15 02:58:07','计算机专业','计算机1班'),(1613358137880,'2021-02-15 03:02:16','土木工程','土木1班');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmfz666/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmfz666/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmfz666/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358154679 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1613357678607,'2021-02-15 02:54:37','测试',90,1),(1613358154678,'2021-02-15 03:02:34','在线测试',90,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358311007 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1613357728638,'2021-02-15 02:55:28',1613357678607,'测试','1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'B','测试',0,1),(1613357800007,'2021-02-15 02:56:39',1613357678607,'测试','1+2=？','[{\"text\":\"A.3\",\"code\":\"A\"},{\"text\":\"B.5\",\"code\":\"B\"},{\"text\":\"C.9\",\"code\":\"C\"},{\"text\":\"D.6\",\"code\":\"D\"}]',20,'A,B','测试',1,2),(1613357823754,'2021-02-15 02:57:02',1613357678607,'测试','1+2=3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','测试',2,3),(1613357847508,'2021-02-15 02:57:26',1613357678607,'测试','1+2=','[]',20,'3','测试',3,4),(1613358210823,'2021-02-15 03:03:30',1613358154678,'在线测试','1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',25,'B','测试测试',0,1),(1613358266244,'2021-02-15 03:04:26',1613358154678,'在线测试','哪些为偶数？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',25,'B,D','测试测试',1,2),(1613358290010,'2021-02-15 03:04:49',1613358154678,'在线测试','1+2=3？','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',25,'A','测试测试',2,3),(1613358311006,'2021-02-15 03:05:10',1613358154678,'在线测试','1+2=？','[]',25,'3','测试测试',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358499973 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1613357991946,'2021-02-15 02:59:51',1613357929217,NULL,1613357678607,'测试',1613357728638,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'B','测试',10,'B'),(1613357997025,'2021-02-15 02:59:56',1613357929217,NULL,1613357678607,'测试',1613357800007,'1+2=？','[{\"text\":\"A.3\",\"code\":\"A\"},{\"text\":\"B.5\",\"code\":\"B\"},{\"text\":\"C.9\",\"code\":\"C\"},{\"text\":\"D.6\",\"code\":\"D\"}]',20,'A,B','测试',0,'A,C'),(1613358003490,'2021-02-15 03:00:02',1613357929217,NULL,1613357678607,'测试',1613357823754,'1+2=3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','测试',20,'A'),(1613358008733,'2021-02-15 03:00:08',1613357929217,NULL,1613357678607,'测试',1613357847508,'1+2=','[]',20,'3','测试',20,'3'),(1613358485783,'2021-02-15 03:08:05',1613358410779,NULL,1613358154678,'在线测试',1613358210823,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',25,'B','测试测试',25,'B'),(1613358491471,'2021-02-15 03:08:10',1613358410779,NULL,1613358154678,'在线测试',1613358266244,'哪些为偶数？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',25,'B,D','测试测试',0,'A,B'),(1613358496066,'2021-02-15 03:08:15',1613358410779,NULL,1613358154678,'在线测试',1613358290010,'1+2=3？','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',25,'A','测试测试',25,'A'),(1613358499972,'2021-02-15 03:08:19',1613358410779,NULL,1613358154678,'在线测试',1613358311006,'1+2=？','[]',25,'3','测试测试',25,'3');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358361026 DEFAULT CHARSET=utf8 COMMENT='网站公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-02-15 02:52:01','标题1','简介1','http://localhost:8080/ssmfz666/upload/news_picture1.jpg','内容1'),(72,'2021-02-15 02:52:01','标题2','简介2','http://localhost:8080/ssmfz666/upload/news_picture2.jpg','内容2'),(73,'2021-02-15 02:52:01','标题3','简介3','http://localhost:8080/ssmfz666/upload/news_picture3.jpg','内容3'),(74,'2021-02-15 02:52:01','标题4','简介4','http://localhost:8080/ssmfz666/upload/news_picture4.jpg','内容4'),(75,'2021-02-15 02:52:01','标题5','简介5','http://localhost:8080/ssmfz666/upload/news_picture5.jpg','内容5'),(76,'2021-02-15 02:52:01','标题6','简介6','http://localhost:8080/ssmfz666/upload/news_picture6.jpg','内容6'),(1613358361025,'2021-02-15 03:06:00','测试','测试测试','http://localhost:8080/ssmfz666/upload/1613358335747.jpg','<p>编辑器可上传文字和图片。<img src=\"http://localhost:8080/ssmfz666/upload/1613358358920.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jit08tb8imqhsdvhoyusve34wp1u3uwv','2021-02-15 02:54:13','2021-02-15 04:01:20'),(2,1613357929217,'001','xuesheng','学生','uhx76bg3tvz6ufv0x48cms8fcscyyq96','2021-02-15 02:59:00','2021-02-15 03:59:01'),(3,1613358410779,'002','xuesheng','学生','bh72p0zqn40pfpy8ml2tt8m2rmomwtnn','2021-02-15 03:07:01','2021-02-15 04:07:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-15 02:52:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358410780 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-15 02:52:00','学生1','123456','姓名1','男','专业1','班级1','13823888881','773890001@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian1.jpg'),(12,'2021-02-15 02:52:00','学生2','123456','姓名2','男','专业2','班级2','13823888882','773890002@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian2.jpg'),(13,'2021-02-15 02:52:00','学生3','123456','姓名3','男','专业3','班级3','13823888883','773890003@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian3.jpg'),(14,'2021-02-15 02:52:00','学生4','123456','姓名4','男','专业4','班级4','13823888884','773890004@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian4.jpg'),(15,'2021-02-15 02:52:00','学生5','123456','姓名5','男','专业5','班级5','13823888885','773890005@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian5.jpg'),(16,'2021-02-15 02:52:00','学生6','123456','姓名6','男','专业6','班级6','13823888886','773890006@qq.com','http://localhost:8080/ssmfz666/upload/xuesheng_zhaopian6.jpg'),(1613357929217,'2021-02-15 02:58:49','001','001','张三','男','计算机专业','计算机1班','13800000000','12345@qq.com','http://localhost:8080/ssmfz666/upload/1613357972763.jpg'),(1613358410779,'2021-02-15 03:06:50','002','002','李四','女','土木工程','土木1班','13800000000','12315345@qq.com','http://localhost:8080/ssmfz666/upload/1613358454876.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyexinxi`
--

DROP TABLE IF EXISTS `zhuanyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613358108467 DEFAULT CHARSET=utf8 COMMENT='专业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyexinxi`
--

LOCK TABLES `zhuanyexinxi` WRITE;
/*!40000 ALTER TABLE `zhuanyexinxi` DISABLE KEYS */;
INSERT INTO `zhuanyexinxi` VALUES (21,'2021-02-15 02:52:00','专业名称1'),(22,'2021-02-15 02:52:00','专业名称2'),(23,'2021-02-15 02:52:00','专业名称3'),(24,'2021-02-15 02:52:00','专业名称4'),(25,'2021-02-15 02:52:00','专业名称5'),(26,'2021-02-15 02:52:00','专业名称6'),(1613357866204,'2021-02-15 02:57:45','计算机专业'),(1613358108466,'2021-02-15 03:01:48','土木工程');
/*!40000 ALTER TABLE `zhuanyexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17  9:40:21
