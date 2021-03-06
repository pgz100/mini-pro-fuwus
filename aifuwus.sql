-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: aifuwus
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `introduce` text,
  `email` varchar(128) DEFAULT '0',
  `work_time` varchar(128) DEFAULT '0',
  `mobile` varchar(60) DEFAULT NULL,
  `hotline_text` varchar(60) DEFAULT NULL,
  `hotline` varchar(60) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'璁AI鏈嶅姟甯傚満鎴愮珛浜?018骞?鏈?8鏃ワ紝鏄澶ц椋炴棗涓嬪浗鍐呴涓汉宸ユ櫤鑳藉叏浜т笟閾剧患鍚堟湇鍔″钩鍙帮紝渚濇墭璁寮€鏀惧钩鍙帮紝鑷村姏浜庢暣鍚圓I浜т笟涓婁笅娓搁摼璺紝鏋勫缓浠ヤ汉宸ユ櫤鑳戒负鏍稿績鐨勪骇涓氱敓鎬佸湀銆?,'aifuwus@iflytek.com','鍛ㄤ竴鑷冲懆浜?9:00 - 18:00','13800008888','4000-199-199','4000199199','http://www.aifuwus.com/cstentor/11a6be9ae91da4ce16caca310e6234d1.svg');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,1,1,'鏈嶅姟鍟嗚祴鑳藉ぇ绀煎寘','/pages/news/news?id=283','/static/images/1.jpg','鏈嶅姟鍟嗚祴鑳藉ぇ绀煎寘',0,0),(2,1,1,'闃垮皵娉曞ぇ铔?,'/pages/category/category?id=1005001','http://mall.xunfei.cn/themes/web/xunfei/180907/image/Recommen_2.jpg','闃垮皵娉曞ぇ铔?,0,1);
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_position`
--

DROP TABLE IF EXISTS `ad_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_position` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_position`
--

LOCK TABLES `ad_position` WRITE;
/*!40000 ALTER TABLE `ad_position` DISABLE KEYS */;
INSERT INTO `ad_position` VALUES (1,'绉诲姩绔椤佃疆鎾箍鍛?,750,200,'');
/*!40000 ALTER TABLE `ad_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '''''',
  `password` varchar(255) NOT NULL DEFAULT '''''',
  `password_salt` varchar(255) NOT NULL DEFAULT '''''',
  `last_login_ip` varchar(60) NOT NULL DEFAULT '''''',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '''''',
  `admin_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','bb87bf23d14b27de74530dec20e234f3','ABCDEF','::ffff:127.0.0.1',1505484711,0,0,'\'\'',0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `detail_pic_url` varchar(255) NOT NULL,
  `simple_desc` varchar(255) NOT NULL,
  `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001005 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1001001,'鏅鸿兘瀹㈡湇','http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg','http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png','鍩轰簬璇煶璇嗗埆銆佽嚜鐒惰瑷€鐞嗚В绛堿I鎶€鏈紝鎻愪緵鏅鸿兘澶栧懠銆佸叏娓犻亾鏅鸿兘瀹㈡湇鏈哄櫒浜恒€佹櫤鑳借川妫€銆佹櫤鑳藉潗甯瓑浜у搧锛屽叏闈㈡彁鍗囧鏈嶅伐浣滄晥鐜囷紝鑺傜害浼佷笟鎴愭湰銆?,1),(1001002,'鏅烘収鍩庡競','http://yanxuan.nosdn.127.net/b5cd73d3b310bad02539412f064d4ea1.jpg','http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png','閫氳繃鐗╄仈缃戙€佷簯璁＄畻銆佸ぇ鏁版嵁鍒嗘瀽绛夋妧鏈娇鐢紝涓哄煄甯傛彁渚涚粺涓€绠＄悊銆佸簲鎬ラ儴缃层€佷簰鍔ㄥ睍绀虹瓑鏈夋晥绠＄悊鍜岀郴缁熼泦鎴愩€?,2),(1001003,'鏅鸿兘瀹跺眳','http://yanxuan.nosdn.127.net/abcfa79205679db51198adc19c184dd1.jpg','http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png','鎵撻€犲叏瀹呮櫤鑳芥帶鍒剁郴缁燂紝閫氳繃鏅鸿兘璇煶瀹炵幇鏅鸿兘鐓ф槑銆佹櫤鑳藉畨闃层€佹櫤鑳芥帶鍒躲€佸奖闊冲ū涔愬洓澶х郴缁熷強鍚勭璁惧鐨勬櫤鑳戒簰鑱斻€?,3),(1001004,'鏅烘収闆跺敭','http://yanxuan.nosdn.127.net/76638fb8e6990aadf837ce761c3b7399.jpg','http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png','鍩轰簬璁璇煶璇嗗埆銆佸浘鍍忚瘑鍒€佸ぇ鏁版嵁鍒嗘瀽绛夋牳蹇傾I鎶€鏈兘鍔涳紝璧嬭兘绾夸笅闂ㄥ簵銆佸晢瓒呫€丮ALL銆佸搧鐗屽晢鍚勭被闆跺敭涓氭€侊紝鍔╁姏浼氬憳绠＄悊銆佸娴佸垎鏋愩€佸晢鍝佺粨绠椼€佽揣鍝侀檲鍒楃ń鏌ョ瓑涓氬姟鍦烘櫙鍗囩骇锛屾彁鍗囧晢涓氭晥鐜囥€?,4);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `front_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `show_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `banner_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `wap_banner_url` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `front_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032003 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1005000,'鏅鸿兘闆跺敭','','鍥炲锛屾斁鏉捐韩蹇?,0,2,1,1,'http://yanxuan.nosdn.127.net/92357337378cce650797444bc107b0f7.jpg','http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png','//nos.netease.com/yanxuan/f0d0e1a542e2095861b42bf789d948ce.jpg','http://yanxuan.nosdn.127.net/e8bf0cf08cf7eda21606ab191762e35c.png','L1',0,'瀹跺眳鏅鸿兘锛屾櫤鎱х墿鑱?),(1005001,'鏅鸿兘鏍″洯','','鍘ㄦ埧',0,3,2,1,'http://yanxuan.nosdn.127.net/f4ff8b3d5b0767d4e578575c1fd6b921.jpg','http://yanxuan.nosdn.127.net/ad8b00d084cb7d0958998edb5fee9c0a.png','//nos.netease.com/yanxuan/88855173a0cfcfd889ee6394a3259c4f.jpg','http://yanxuan.nosdn.127.net/3708dbcb35ad5abf9e001500f73db615.png','L1',0,'椁愰ギ鏇村畨鍏紝鏇翠究鎹?),(1005002,'鍦颁骇鐗╀笟','','濂藉悆锛岄珮棰滃€肩編椋?,0,9,8,1,'http://yanxuan.nosdn.127.net/dd6cc8a7e996936768db5634f12447ed.jpg','http://yanxuan.nosdn.127.net/c9280327a3fd2374c000f6bf52dff6eb.png','//nos.netease.com/yanxuan/9a29ef4f41c305a12e1459f12abd290f.jpg','http://yanxuan.nosdn.127.net/fb670ff3511182833e5b035275e4ac09.png','L1',0,'浜哄伐鏅鸿兘鍏ㄧ璇婄枟'),(1005007,'鏍″洯瀹夐槻','','涓崕閾搁搧銆佺簿閫変笉閿堥挗銆佽繘鍙ｇ彁鐞?,1005001,1,1,1,'http://yanxuan.nosdn.127.net/4aab4598017b5749e3b63309d25e9f6b.png','','','http://yanxuan.nosdn.127.net/d2db0d1d0622c621a8aa5a7c06b0fc6d.png','L2',0,'涓€鍙ｅソ閿咃紝鐐栫叜鐢熸椿涓€鏃ヤ笁椁?),(1005008,'鑰冨嫟绠＄悊','','鐨囧閬撳皵椤裤€佹棩鏈琄EYUCA鍒堕€犲晢鍑哄搧',1005001,4,4,1,'http://yanxuan.nosdn.127.net/f109afbb7e7a00c243c1da29991a5aa3.png','','','http://yanxuan.nosdn.127.net/695ed861a63d8c0fc51a51f42a5a993b.png','L2',0,'椁愭涓婄殑鑸炶箞'),(1005009,'浜哄憳閫氳绠＄悊','','鐗规畩鏉愯川锛屽仛瀹跺姟鏇寸畝鍗?,1005001,9,9,1,'http://yanxuan.nosdn.127.net/e8b67fe8b8db2ecc2e126a0aa631def0.png','','','http://yanxuan.nosdn.127.net/3a40faaef0a52627357d98ceed7a3c45.png','L2',0,'鐜繚渚垮埄锛岃仾鏄庝箣閫?),(1005010,'浜哄憳閫氳绠＄悊','','绮鹃€夊師浜у湴锛岀編鍛冲姞钀ュ吇',1005002,5,5,1,'http://yanxuan.nosdn.127.net/6c43063003207168c1d8e83a923e8515.png','','','http://yanxuan.nosdn.127.net/3972963a4b6f9588262d2a667f4c1c73.png','L2',0,'绮鹃€夊師浜у湴锛岀編鍛冲姞钀ュ吇'),(1005011,'杞﹁締閫氳绠＄悊','','鍘熼椴滄潗锛屼互灏忛涔嬪懗锛屽甫鏉ュ懗钑炬儕鍠?,1005002,2,2,1,'http://yanxuan.nosdn.127.net/663f568475c994358bf31bcb67d122fe.png','','','http://yanxuan.nosdn.127.net/418f86049f957108a31ad55cec42c349.png','L2',0,'鍘熼椴滄潗锛屼互灏忛涔嬪懗锛屽甫鏉ュ懗钑炬儕鍠?),(1005012,'瀹夐槻甯冩帶','','澶╂椂銆佸湴鍒┿€佷汉鍜岋紝瀵绘壘杩欎釜鏃惰妭杩欎釜鍦扮偣鐨勫懗閬?,1005002,10,10,1,'http://yanxuan.nosdn.127.net/e050980992725b7932bb3645fe5aec08.png','','','http://yanxuan.nosdn.127.net/80db363e0687b1a65edc6e75c1b99726.png','L2',0,'澶╂椂鍦板埄浜哄拰锛屽鎵捐繖涓椂鑺傝繖涓湴鐐圭殑鍛抽亾'),(1005013,'渚挎皯鏈嶅姟','','浠ョ敤鏂欏ぉ鐒朵箣缇庯紝灏戒韩闂查泤涔嬫剰',1005002,6,6,1,'http://yanxuan.nosdn.127.net/2919b0d6eec79182cca31dc827f4d00a.png','','','http://yanxuan.nosdn.127.net/1e3d8f65c7c7811baccdfda6711cbfd5.png','L2',0,'浠ョ敤鏂欏ぉ鐒朵箣缇庯紝灏戒韩闂查泤涔嬫剰'),(1007000,'瀛︾敓鑷姪鏈嶅姟','','10Q鍝佽川鎺у埗绯荤粺',1005001,2,2,1,'http://yanxuan.nosdn.127.net/0b244d3575b737c8f0ed7e84c5c4abd2.png','','','http://yanxuan.nosdn.127.net/ec53828a3814171079178a59fb2593da.png','L2',0,'绮惧伐鐢熶骇鍒朵綔锛屽尃浜烘墜鑹?),(1008000,'浼佷笟鏈嶅姟','','閰嶈锛屼害鏄富瑙?,0,4,3,1,'http://yanxuan.nosdn.127.net/cad5aba2bc52d3b8adfd0232c9814de2.jpg','http://yanxuan.nosdn.127.net/11abb11c4cfdee59abfb6d16caca4c6a.png','//nos.netease.com/yanxuan/935f1ab7dcfeb4bbd4a5da9935161aaf.jpg','http://yanxuan.nosdn.127.net/02f9a44d05c05c0dd439a5eb674570a2.png','L1',0,'璁╁洯鍖烘洿瀹夊叏'),(1008001,'鏈嶅姟鏈哄櫒浜?,'','绮鹃€夐暱缁掓锛屽嚭鍙ｆ棩鏈搧璐ㄦ爣鍑?,1013001,1,1,1,'http://yanxuan.nosdn.127.net/44ad9a739380aa6b7cf956fb2a06e7a7.png','','','http://yanxuan.nosdn.127.net/c53d2dd5ba6b1cfb55bd42ea0783f051.png','L2',0,'鏃ユ湰鐨囧涓撲緵锛屽唴閲庡埗閫犲晢鍑哄搧'),(1008002,'浼氬憳璇嗗埆','','鎹釜杞锛屾崲涓',1005000,6,4,1,'http://yanxuan.nosdn.127.net/8bbcd7de60a678846664af998f57e71c.png','','','http://yanxuan.nosdn.127.net/2e2fb4f2856a021bbcd1b4c8400f2b06.png','L2',0,'鍚勭椋庢牸杞瑁呯偣浣犵殑瀹?),(1008003,'鏅鸿兘鐢佃瘽瀹㈡湇','','鐧炬惌閫犲瀷锛岃垝閫傝剼鎰燂紝涔呯┛涓嶇疮',1008000,4,4,1,'http://yanxuan.nosdn.127.net/4316c2d05745bc90d1f333e363e571bd.png','','','http://yanxuan.nosdn.127.net/85566d138ea55e6aaeda2cda02df66f8.png','L2',0,'涓€鍙屽ソ闉嬶紝鎵嶈兘甯︿綘鍒拌繙鏂?),(1008004,'鍐呭瀹℃牳','','浼橀€夐潰鏂欙紝绮剧粏鍋氬伐锛岃秺鏄粏鑺備箣鐗╋紝瓒婃樉鍝佽川涔嬪',1010000,4,4,1,'http://yanxuan.nosdn.127.net/f123c74f54d9acff0bd1546c60034814.png','','','http://yanxuan.nosdn.127.net/13f256bac02bb27d74e035ad25cbd375.png','L2',0,'鏂扮櫨浼︺€侀樋杩揪鏂瓑鍒堕€犲晢鍑哄搧'),(1008005,'鏅鸿兘闂瓟','','韪忛潚鍑烘父锛屼究鎼轰笉璇ソ蹇冩儏',1012000,7,8,1,'http://yanxuan.nosdn.127.net/83d22ca3d1c8f94ee23ca96de489864c.png','','','http://yanxuan.nosdn.127.net/833476fc3ecc30a7446279b787328775.png','L2',0,'MUJI銆丯ike绛夊埗閫犲晢鍑哄搧'),(1008006,'鏅烘収澶у巺','','鏉冨▉鏁版嵁璁よ瘉鏁堟灉锛岄槻闇炬湁搴曟皵',1012000,6,6,1,'http://yanxuan.nosdn.127.net/9b93e661ff59cbda6094e8b30a63724e.png','','','http://yanxuan.nosdn.127.net/11d9700da759f2c962c2f6d9412ac2a1.png','L2',0,'涓轰綘閬尅闆鹃溇'),(1008007,'鏅鸿兘璇煶璐ㄦ','','涓ラ€夊ソ鏉愭枡锛屼翰鑲ゆ煍杞紝闃查鎶楀瘨锛屾俯鏆栦笉澶遍搴?,1008000,7,6,1,'http://yanxuan.nosdn.127.net/3a8c7ae5b9dc5c1c4b7f2b656abb0279.png','','','http://yanxuan.nosdn.127.net/6beb3fd67106e42dc0f026b173373d16.png','L2',0,'鍥翠笂瀹冿紝浣犵殑閫犲瀷鎵嶅畬鏁?),(1008008,'瀹㈡祦鍒嗘瀽','','閫夌敤浼樿川鏉愭枡锛岀‘淇濆ソ鑺?,1005000,2,2,1,'http://yanxuan.nosdn.127.net/927bc33f7ae2895dd6c11cf91f5e3228.png','','','http://yanxuan.nosdn.127.net/b43ef7cececebe6292d2f7f590522e05.png','L2',0,'瀹堟姢浣犵殑鐫＄湢鏃跺厜'),(1008009,'鑷姪缁撶畻','','涓ユ牸鐢ㄦ枡锛屼翰鑲よ垝閫?,1005000,4,3,1,'http://yanxuan.nosdn.127.net/243e5bf327a87217ad1f54592f0176ec.png','','','http://yanxuan.nosdn.127.net/81f671bd36bce05d5f57827e5c88dd1b.png','L2',0,'MUJI绛夊搧鐗屽埗閫犲晢鍑哄搧'),(1008010,'鏅鸿兘鍗忓悓鍔炲叕','','浜轰綋宸ュ璁捐锛屾斁鏉惧弻鑴?,1008000,6,5,1,'http://yanxuan.nosdn.127.net/1121696544ed9b0c2a70e82f1088fa0e.png','','','http://yanxuan.nosdn.127.net/984ddb9671aab41651784ba55b2cbdcf.png','L2',0,'绌夸笂鎷栭瀷锛屽洖鍒拌嚜鎴?),(1008011,'鏅鸿兘杈呭姪鏁欏','','璁╁帹鎴挎暣娲佸張鏂伴矞锛岄槻灏橀槻娼?,1005001,6,6,1,'http://yanxuan.nosdn.127.net/dc4d6c35b9f4abb42d2eeaf345710589.png','','','http://yanxuan.nosdn.127.net/04cd632e1589adcc4345e40e8ad75d2b.png','L2',0,'鐪熺┖淇濋矞锛岀編鍛充笉闄愭椂'),(1008012,'璇惧爞涓撴敞搴﹀垎鏋?,'','鏃ユ棩浣跨敤鐨勭墿浠讹紝鍒朵綔绮捐壇鎵嶈兘鏇磋€愮敤',1005001,3,3,1,'http://yanxuan.nosdn.127.net/22db4ccbf52dc62c723ac83aa587812a.png','','','http://yanxuan.nosdn.127.net/5b94463017437467a93ae4af17c2ba4f.png','L2',0,'涓嬪帹鐪佸姏灏忓府鎵?),(1008014,'鏃犱汉浣滀笟杞?,'','浼橀€夊仴搴峰師鏂欙紝鐢滈涔熷悆寰楁斁蹇?,1005002,3,3,1,'http://yanxuan.nosdn.127.net/db48a1db4daab74233656caaea4a06f3.png','','','http://yanxuan.nosdn.127.net/c12cf29b574c7e9d1fcff6a57a12eea2.png','L2',0,'绯栧績铚滄剰锛岀敎鑰屼笉鑵?),(1008015,'鏅鸿兘瀹跺眳','','鏃犱汉宸ユ坊鍔犻绮俱€侀槻鑵愬墏',1005002,1,1,1,'http://yanxuan.nosdn.127.net/93168242df456b5f7bf3c89653b3db76.png','','','http://yanxuan.nosdn.127.net/66ea1d6ad602a8e441af7cada93bdc7a.png','L2',0,'鍥涘绯曠偣锛岀敤蹇冪儤鐒?),(1008016,'浜掑姩钀ラ攢','','鏋佺畝涓讳箟锛岃创杩戠敓娲荤殑璁捐',1005000,8,6,1,'http://yanxuan.nosdn.127.net/c48e0d9dcfac01499a437774a915842b.png','','','http://yanxuan.nosdn.127.net/f702dc399d14d4e1509d5ed6e57acd19.png','L2',0,'涓€鐩忕伅锛屾俯鏆栦竴涓'),(1008017,'杩滅▼璁よ瘉','','鏅烘収鏀剁撼锛屾姉鑿岄槻闇夛紝渚垮埄鎷嗗嵏锛屽皬绌洪棿鐨勫ぇ鏅烘収',1012000,2,2,1,'http://yanxuan.nosdn.127.net/fdc048e1bf4f04d1c20b32eda5d1dc6e.png','','','http://yanxuan.nosdn.127.net/2a62f6c53f4ff089fa6a210c7a0c2e63.png','L2',0,'閫夎嚜鍙ら┌绔规焺鍘熸枡渚涘簲鍟?),(1008018,'鏅鸿兘鍛樺伐鑰冨嫟','','鍖犲績鍒剁増锛岀珛浣撴湁鍨?,1008000,3,3,1,'http://yanxuan.nosdn.127.net/2f71c7710f0bf857e787e1adb449c8a2.png','','','http://yanxuan.nosdn.127.net/55f34f23ed31f31e1313ff33602f90cc.png','L2',0,'鍗曡偐瑁呬笂鎯剰蹇冩儏'),(1009000,'鏅鸿兘鍞崠鏈?,'','澶╃劧鏉愭枡锛屾俯鍜屽幓闄ゆ薄鍨?,1013001,6,6,1,'http://yanxuan.nosdn.127.net/e071686c212e93aa2fcafd0062a9c613.png','','','http://yanxuan.nosdn.127.net/729638bb13997f9c4c435b41ce6ed910.png','L2',0,'娲佸噣鎵嶈兘甯︽潵娓呯埥蹇冩儏'),(1010000,'淇℃伅鏈嶅姟','','璐磋韩鐨勶紝瑕佷翰鑲?,0,5,4,1,'http://yanxuan.nosdn.127.net/003e1d1289f4f290506ac2aedbd09d35.jpg','http://yanxuan.nosdn.127.net/28a685c96f91584e7e4876f1397767db.png','//nos.netease.com/yanxuan/135113d6a43536b717063413fa24d69a.jpg','http://yanxuan.nosdn.127.net/622c8d79292154017b0cbda97588a0d7.png','L1',0,'璁╂櫤鑳界粓绔敼鍙樼敓娲?),(1010001,'鍐呭绠＄悊','','鑷劧鏌撴枡锛屼翰鑲よ垝閫?,1010000,2,2,1,'http://yanxuan.nosdn.127.net/20279e1753e4eedc6e347857acda9681.png','','','http://yanxuan.nosdn.127.net/02fede55aba1bc6c9d7f7c01682f9e2d.png','L2',0,'缁欎綘璐磋韩鐨勫叧鎬€'),(1010002,'鍙ｇ鍒嗘瀽','','閫忔皵娲佸噣锛岀幆淇濇煋鍒?,1010000,1,1,1,'http://yanxuan.nosdn.127.net/364269344ed69adafe1b70ab7998fc50.png','','','http://yanxuan.nosdn.127.net/0a7fe0a08c195ca2cf55d12cd3c30f09.png','L2',0,'鏉ヨ嚜鏉庣淮鏂€佺埍鎱曠瓑鍒堕€犲晢'),(1010003,'閿€閲忛娴?,'','鎵嬪伐缂栫粐锛屾椂灏氱幆淇?,1005000,5,4,1,'http://yanxuan.nosdn.127.net/83d4c87f28c993af1aa8d3e4d30a2fa2.png','','','http://yanxuan.nosdn.127.net/1611ef6458e244d1909218becfe87c4d.png','L2',0,'瀹堕噷鐨勭鈥滀簲鈥濋潰澧?),(1010004,'鏅鸿兘绁ㄦ嵁璇嗗埆','','绮惧阀璁捐锛屼弗閫夊叏绋嬬洃鍒?,1008000,2,2,1,'http://yanxuan.nosdn.127.net/5197c44b610d786796f955334b55c7a5.png','','','http://yanxuan.nosdn.127.net/506d19510c967ba137283035a93738a1.png','L2',0,'鑳屼笂鐨勬椂楂?),(1011000,'鏅鸿兘宸ュ巶','','鐖憋紝浠庡績寮€濮?,0,7,6,1,'http://yanxuan.nosdn.127.net/7dc78383e44df530f543659a977740de.jpg','http://yanxuan.nosdn.127.net/1ba9967b8de1ac50fad21774a4494f5d.png','//nos.netease.com/yanxuan/8ab3c73fe90951a942e8b06d848f8743.jpg','http://yanxuan.nosdn.127.net/9cc0b3e0d5a4f4a22134c170f10b70f2.png','L1',0,'涓轰紒涓氶檷鏈鏁?),(1011001,'鍥尯鏃犱汉浣滀笟杞?,'','瀛曡偛鐢熷懡鐨勪綘鏇村€煎緱琚埍',1011000,2,2,1,'http://yanxuan.nosdn.127.net/720aebaa529df9391b95a078dfb2fd5c.png','','','http://yanxuan.nosdn.127.net/844e2f4dce94f71283840c141d4ca71b.png','L2',0,'鐘嵃銆丠arvest Hills鍒堕€犲晢'),(1011002,'鏅鸿兘妫€绱?,'','娴峰渚涘簲鍟嗙洿渚涳紝闆跺叧绋庛€侀浂椋庨櫓銆佸嵆鏃惰揪',1012000,5,5,1,'http://yanxuan.nosdn.127.net/da884ff3b9e9d5276986c99e85722461.png','','','http://yanxuan.nosdn.127.net/fd1de05d274222f1e56d057d2f2c20c6.png','L2',0,'鏉ヨ嚜娴峰鍒堕€犲晢鐨勫ソ鐗?),(1012000,'鏅鸿兘鏀垮姟','','瑙ｅ咖锛屾瘡涓儲鎭?,0,8,7,1,'http://yanxuan.nosdn.127.net/d233a1a9060a22e8eb0e2b326252eece.jpg','http://yanxuan.nosdn.127.net/c2a3d6349e72c35931fe3b5bcd0966be.png','//nos.netease.com/yanxuan/a0c91ae573079830743dec6ee08f5841.jpg','http://yanxuan.nosdn.127.net/547853361d29a37282f377b9a755dd37.png','L1',0,'璁╁涔犱笉鍐嶆灟鐕?),(1012002,'鏅鸿兘浼氳','','鐜荤拑绾ょ淮浼為锛岀ǔ瀹氭姉椋?,1012000,4,4,1,'http://yanxuan.nosdn.127.net/4e929a21baebdb1200361d8097e35e45.png','','','http://yanxuan.nosdn.127.net/589da0f02917b8393197a43175764381.png','L2',0,'WPC鍒朵綔鍟嗗嚭鍝?),(1012003,'鏀垮姟澶ф暟鎹?,'','鏋佺畝璁捐锛岀幆淇濇潗璐?,1012000,1,1,1,'http://yanxuan.nosdn.127.net/e1743239e41ca9af76875aedc73be7f0.png','','','http://yanxuan.nosdn.127.net/e074795f61a83292d0f20eb7d124e2ac.png','L2',0,'鎵惧洖涔﹀啓鐨勫姏閲?),(1013001,'鏅鸿兘纭欢','','浜茶偆涔嬬墿锛屼弗閫夊ぉ鐒?,0,6,5,1,'http://yanxuan.nosdn.127.net/ef8c49f8c92d1f86eb76dec0b5bc7cef.jpg','http://yanxuan.nosdn.127.net/9fe068776b6b1fca13053d68e9c0a83f.png','//nos.netease.com/yanxuan/14bb4a29498a0f93a1ea001f26fea1dd.jpg','http://yanxuan.nosdn.127.net/1526ab0f5982722adbc8726f9f2a338c.png','L1',0,'渚挎嵎鍑鸿锛屼粠鐜板湪寮€濮?),(1013002,'鏅鸿兘闂ㄧ','','绔瑰疂鍫傘€佽祫鐢熷爞绛夊埗閫犲晢鍑哄搧',1013001,3,3,1,'http://yanxuan.nosdn.127.net/aa49c088f74a1c318f1765cc2703495a.png','','','http://yanxuan.nosdn.127.net/d6a7b9a2eb6af92d709429798a4ca3ea.png','L2',0,'涓轰綘鐨勯潰瀹规坊鑹?),(1013003,'鏅鸿兘闂告満','','鎶ゅ彂瓒呮湁鏁堝皬绉樿瘈',1013001,5,5,1,'http://yanxuan.nosdn.127.net/672ddbed88d9762d2be789080880b16a.png','','','http://yanxuan.nosdn.127.net/398375d0e39574c6e87273d328316186.png','L2',0,'鍛垫姢绉€鍙戯紝鏌旈『涓嶅悓鍙戣川'),(1013004,'鏅鸿兘绌挎埓','','鎻愮偧绾噣锛屾竻闆呬笉鑵?,1013001,2,2,1,'http://yanxuan.nosdn.127.net/d43e7af0a6a9385d88be2ca1df679158.png','','','http://yanxuan.nosdn.127.net/fc7764ff8e12d18f6c5881a32318ed16.png','L2',0,'鐖遍┈浠曢泦鍥㈠埗閫犲晢鍑哄搧'),(1018000,'缃戠珯寤鸿','','婀栧崡鍗銆婂鏃ョ敎蹇冦€嬫巿鏉冿紝鐙鍙戝敭澶х尗鐔婂悓娆惧懆杈?,1019000,10,10,1,'http://yanxuan.nosdn.127.net/b5e9f174404ef81b8603d6ecc304c62e.png','','','http://yanxuan.nosdn.127.net/2b8497fe583d3c9759128b2d76f89dfd.png','L2',0,'婀栧崡鍗銆婂鏃ョ敎蹇冦€嬪懆杈?),(1019000,'琛屼笟閫氱敤','','琛屼笟閫氱敤',0,50,0,1,'http://yanxuan.nosdn.127.net/b5e9f174404ef81b8603d6ecc304c62e.png','http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png','//nos.netease.com/yanxuan/f0d0e1a542e2095861b42bf789d948ce.jpg','http://yanxuan.nosdn.127.net/e8bf0cf08cf7eda21606ab191762e35c.png','L1',0,'琛屼笟閫氱敤'),(1020001,'鏅鸿兘闊崇','','澶╃劧鎴愬垎锛屾棤鍖栧娣诲姞',1013001,4,4,1,'http://yanxuan.nosdn.127.net/f73df75f334126cf1f3823696ea0663c.png','','','http://yanxuan.nosdn.127.net/babf6573f8acd53f21205a7577ec03e1.png','L2',0,'娓╁拰鏃犲埡婵€鐨勫懙鎶?),(1020002,'鏅鸿兘鐜╁叿','','鐜繚鏉愭枡锛岃€愮敤涓嶅彂闇?,1013001,7,7,1,'http://yanxuan.nosdn.127.net/1a851b2b3c9e16bdfd020a5fc03e9140.png','','','http://yanxuan.nosdn.127.net/4e3aebbd7ffef5bb250d19f13cb85620.png','L2',0,'灏忓伐鍏锋垚灏辩編濂芥荡瀹?),(1020003,'浠撳偍鐗╂祦','','100%绾锛屾棤鑽у厜鍓傦紝涓ユ牸璐ㄦ',1011000,1,1,1,'http://yanxuan.nosdn.127.net/4e50f3c4e4d0a64cd0ad14cfc0b6bd17.png','','','http://yanxuan.nosdn.127.net/004f5f96df4aeb0645abbd70c0637239.png','L2',0,'钀屽疂绌挎惌锛屾煍杞垝閫傝Е鎰?),(1020004,'鐢熶骇绾胯川妫€','','缁欏瀛愭洿缇庡ソ鐨勭骞翠綋楠?,1011000,5,5,1,'http://yanxuan.nosdn.127.net/c55338691ebd46bee9ebf225f80363ce.png','','','http://yanxuan.nosdn.127.net/f2e301b189befff1d99adf917ba8ce20.png','L2',0,'澶╃劧锛屽懙鎶ゅ疂瀹濊倢鑲?),(1020005,'鍥尯瀹夐槻','','濮嬩簬鍒濆績锛屼负鐖卞垵鑹?,1011000,3,3,1,'http://yanxuan.nosdn.127.net/0f3c5ad63139096fd0760219e12149af.png','','','http://yanxuan.nosdn.127.net/476995896abea91d3f2e9ec20d56bd8d.png','L2',0,'鏃犺崸鍏夊墏锛屽┐骞煎効A绫绘爣鍑?),(1025000,'APP寮€鍙?,'','浼犻€掗珮鍝佽川鐢熸椿缇庡',1019000,11,11,1,'http://yanxuan.nosdn.127.net/bb9232716b2fc96d9bdbac4955360dfa.png','','','http://yanxuan.nosdn.127.net/1266f0767a3f67298a40574df0d177fb.png','L2',0,'閫佺ぜ銆佺鍒╅閫?),(1028001,'鐭ヨ瘑浜ф潈','','鐟為福闊充箰澶у笀鍖犲績鎵撻€?,1019000,8,8,1,'http://yanxuan.nosdn.127.net/71feb3efd3eaee01a74e8aa78430de9d.png','','','http://yanxuan.nosdn.127.net/3b69079ea27f90b4f539e8c3b76680f5.png','L2',0,'缁忓吀闊充箰锛岀敤蹇冨吀钘忥紝鐟為福闊充箰澶у笀鍖犲績鎵撻€?),(1032000,'灏忕▼搴忓紑鍙?,'','榄斿吔涓栫晫鍛ㄨ竟',1019000,1,1,1,'http://yanxuan.nosdn.127.net/336f0186a9920eb0f93a3912f3662ffe.png','','','http://yanxuan.nosdn.127.net/becfba90e8a5c95d403b8a6b9bb77825.png','L2',0,'鑹炬辰鎷夋柉鐨勫啋闄╋紝鎵嶅垰鍒氬紑濮?),(1032001,'ERP绯荤粺','','鐐夌煶浼犺鍛ㄨ竟',1019000,2,2,1,'http://yanxuan.nosdn.127.net/97937fcf2defb864d9e53d98a337d78a.png','','','http://yanxuan.nosdn.127.net/b5af3f6bfcbeb459d6c448ba87f8cc35.png','L2',0,'蹇繘鏉ュ潗涓嬪惂锛岀湅鐪嬮厭棣嗙殑鏂扮帺鎰?),(1032002,'浜哄姏璧勬簮澶栧寘','','瀹堟湜鍏堥攱鍛ㄨ竟',1019000,3,3,1,'http://yanxuan.nosdn.127.net/8cab7bf1225dc9893bd9de06fc51921d.png','','','http://yanxuan.nosdn.127.net/a562f05bf38f5ee478fefb81856aad3d.png','L2',0,'鐗╃編浠峰粔鐨勮ˉ缁欑');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `brand_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sp_id` int(11) NOT NULL,
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text,
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `list_pic_url` varchar(255) NOT NULL COMMENT '鍟嗗搧鍒楄〃鍥?,
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '闆跺敭浠锋牸',
  `sell_volume` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '閿€鍞噺',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1006001,'Yeta浜哄伐鏅鸿兘瀹㈡埛鑱旂粶涓撳',1001001,2001001,'閫氳繃璇煶绛堿I鎶€鏈紝瀹炵幇80%浠ヤ笂瀹㈡湇浜哄姏鎴愭湰闄嶄綆锛岃鎮ㄧ殑浼佷笟鍏呮弧绔炰簤鍔?,'<p><img src=\"http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1554343178000/Yeta%E4%BA%91%E5%B9%B3%E5%8F%B0%E4%BB%8B%E7%BB%8D.png\"</p>',23,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1554342967000/%E6%9C%AA%E6%A0%87%E9%A2%98-1.png',899.00,168,0),(1006002,'YUYI瀹炴椂鏅鸿兘璐ㄦ涓庢暟鎹礊瀵熷钩鍙?,1001001,2001005,'灏嗕紶缁熺殑閿€鍞粺璁℃暟鎹笌鐗规湁鐨勬枃鏈В鏋愭妧鏈紙鎯呯华瑙ｆ瀽銆佽鐐规彁鍙栥€佽剼鏈尮閰嶇瓑锛夌粨鍚堝埌涓€璧?,'<p><img src=\"http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1544515454000/%E8%AE%AF%E9%A3%9E%E6%9C%8D%E5%8A%A1%E5%B8%82%E5%9C%BA%E6%9D%90%E6%96%99%20V6%201210-1.jpg\"><img src=\"http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1544515459000/%E8%AE%AF%E9%A3%9E%E6%9C%8D%E5%8A%A1%E5%B8%82%E5%9C%BA%E6%9D%90%E6%96%99%20V6%201210-2.jpg\"><img src=\"http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1544515463000/%E8%AE%AF%E9%A3%9E%E6%9C%8D%E5%8A%A1%E5%B8%82%E5%9C%BA%E6%9D%90%E6%96%99%20V6%201210-3.jpg\"><img src=\"http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1544515467000/%E8%AE%AF%E9%A3%9E%E6%9C%8D%E5%8A%A1%E5%B8%82%E5%9C%BA%E6%9D%90%E6%96%99%20V6%201210-4.jpg\"></p>',15,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1530673779000/logo icon.png',1399.00,1949,0),(1007001,'鍚屾床鐢靛瓙鏅烘収绀惧尯缁煎悎瑙ｅ喅鏂规',1001002,2001002,'閫氳繃骞冲彴妯悜杩為€氳兘鍔涳紝鎵撻€氬崟涓櫤鎱хぞ鍖鸿繛鎺ラ€氶亾锛岃鍩庡競绠＄悊鑰呰兘浜嗚В绀惧尯鍏ㄥ眬淇℃伅','<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065795000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065807000/骞荤伅鐗?.PNG\" style=\"max-width: 100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065826000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065832000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065839000/骞荤伅鐗?.PNG\" style=\"max-width: 100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065850000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065857000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553065865000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p>鏁堟灉绀烘剰鍥惧涓嬶紝鍙牴鎹渶瑕佸畾鍒讹細</p>\r\n<p><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553066383000/绀惧尯鏁堟灉.png\" style=\"max-width:100%;\"><br></p>\r\n<p><br></p>\r\n<p><br></p>',17,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553063444000/%E6%99%BA%E6%85%A7%E7%A4%BE%E5%8C%BA%E8%A7%A3%E5%86%B3%E6%96%B9%E6%A1%88.png',459.00,1730,0),(1007002,'鍚屾床鐢靛瓙鏅烘収寤虹瓚缁煎悎瑙ｅ喅鏂规',1001002,2001002,'瀹炵幇寤虹瓚绁炵粡缃戠粶鐨勫叏闈㈣鐩栧叏闈㈡劅鐭ワ紝浠庣鐞嗐€佽繍钀ャ€佷綋楠屻€佺淮鎶ょ瓑澶氱淮瑙掑害鏉ュ崗鍚屾帹杩?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049624000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049641000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049666000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049677000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049687000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049694000/骞荤伅鐗?.PNG\" style=\"max-width:100%;\"><br></p>\r\n<p>瑙嗚椋庢牸濡備笅锛屽彲瀹氬埗锛?/p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553050021000/寤虹瓚.png\" style=\"max-width:100%;\"><br></p>',2,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553049939000/骞荤伅鐗?.PNG',59.00,4862,1),(1007003,'浜鸿劯璇嗗埆浠?,1001002,2001008,'涓€娆鹃€氳繃浜鸿劯鐗瑰緛璇嗗埆鐢ㄦ埛韬唤鐨勮澶囷紝鍙簲鐢ㄤ簬闂ㄧ銆侀亾闂搞€佽€冨嫟绠＄悊','<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533180725000/S801鑰冨嫟搴旂敤.png\" style=\"float:none;height: auto;width: 100%\">\r\n<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532828898000/S801鍔炲叕瀹ら棬绂佸簲鐢?png\" style=\"float:none;height: auto;width: 100%\">\r\n<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532917635000/S801瀹跺涵闂ㄧ搴旂敤.png\" style=\"float:none;height: auto;width: 100%\">\r\n<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553444434000/缇ゅ垱钃?.jpg\" style=\"max-width:100%;\">\r\n<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553444449000/瀵屽＋搴风孩.jpg\" style=\"max-width:100%;\">\r\n<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553444456000/鑽ｇ伩钃?jpg\" style=\"max-width:100%;\">',3,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532942874000/s801.png',99.00,2837,0),(1007004,'鏅烘収鍐滀笟鐩戞祴鍙婄郴缁熷钩鍙?,1001002,2001009,'涓哄啘涓氱敓浜ф彁渚涚簿鍑嗗寲绉嶆銆佸彲瑙嗗寲绠＄悊銆佹櫤鑳藉寲鍐崇瓥','<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485223000/骞荤伅鐗?.png\" style=\"max-width:100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485230000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485239000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485247000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485255000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485262000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485271000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485278000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485290000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485296000/骞荤伅鐗?0.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485305000/骞荤伅鐗?1.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485312000/骞荤伅鐗?2.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485319000/骞荤伅鐗?3.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485326000/骞荤伅鐗?4.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485334000/骞荤伅鐗?5.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485347000/骞荤伅鐗?6.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485359000/骞荤伅鐗?7.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485370000/骞荤伅鐗?8.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485414000/骞荤伅鐗?9.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485436000/骞荤伅鐗?0.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485445000/骞荤伅鐗?1.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485455000/骞荤伅鐗?2.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485465000/骞荤伅鐗?3.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553485474000/骞荤伅鐗?4.png\" style=\"max-width: 100%;\"><br></p>',1,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553484975000/178.jpg',599.00,2918,0),(1007005,'鐗╄仈缃戝姪鍔涘畨鍏ㄧ幆澧冪洃娴?,1001002,2001009,'鍋氬ソ闃叉不鐩戞祴锛屾妸鎺у畨鍏ㄧ幆澧?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482806000/骞荤伅鐗?.png\" style=\"max-width:100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482813000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482818000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482825000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482832000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482841000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482851000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482860000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482909000/骞荤伅鐗?.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482919000/骞荤伅鐗?0.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482928000/骞荤伅鐗?1.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482960000/骞荤伅鐗?2.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482969000/骞荤伅鐗?3.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482979000/骞荤伅鐗?4.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482987000/骞荤伅鐗?5.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482997000/骞荤伅鐗?6.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553483008000/骞荤伅鐗?7.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553483017000/骞荤伅鐗?8.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553483026000/骞荤伅鐗?9.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553483042000/骞荤伅鐗?0.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553483052000/骞荤伅鐗?1.png\" style=\"max-width: 100%;\"><br></p>',100,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553482062000/178.jpg',0.00,0,0),(1007006,'鍩庡競鏅烘収鎺掓按鏁翠綋瑙ｅ喅鏂规',1001002,2001009,'瀹炴椂鐩戞祴姘村惊鐜強闆ㄩ噺淇℃伅锛岃〃寰佸煄甯傚湴琛ㄦ按涓庨亾璺按鍐?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045277000/1.png\" style=\"max-width:100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045295000/2.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045301000/3.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045315000/4.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045322000/5.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045331000/6.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045339000/7.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045347000/8.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045354000/9.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045362000/10.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045370000/11.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045379000/12.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045388000/13.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045395000/14.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045403000/15.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045413000/16.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045423000/17.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045436000/18.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045446000/19.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045455000/20.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045464000/21.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045474000/22.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550045484000/23.png\" style=\"max-width: 100%;\"><br></p>',100,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553479321000/178.jpg',0.00,0,0),(1007007,'浣庡姛鑰楃墿鑱旂綉鐜姹℃煋棰勮涓庢函婧?,1001002,2001009,'鏍规嵁鍩庡競鐜闂锛屾湁閽堝鎬х殑娌荤悊涓庣洃娴嬶紝鎻愪緵浼樿川鐨勪骇鍝佸強瀹屽杽鐨勮繍缁存湇鍔?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047292000/1.png\" style=\"max-width:100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047298000/2.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047308000/3.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047315000/4.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047322000/5.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047331000/6.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047341000/7.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047350000/8.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047365000/9.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047435000/10.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047453000/11.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047461000/12.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047474000/13.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047481000/14.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047488000/15.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047499000/16.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047511000/17.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047520000/18.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047531000/19.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047540000/20.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047551000/21.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047560000/22.png\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1550047572000/23.png\" style=\"max-width: 100%;\"><br></p>',100,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553479158000/178x178.jpg',0.00,0,0),(1008001,'浜鸿劯璇嗗埆鍜屾帉闈欒剦璇嗗埆鏅鸿兘閿?,1001003,2001003,'瓒呬綆鍔熻€楋紝鍙汉鑴歌瘑鍒紑闂ㄣ€佹帉闈欒剦寮€闂ㄣ€佸瘑鐮佸紑闂ㄣ€佷紶缁熼挜鍖欏紑闂紝閰嶅甫2涓粦鐧藉瑙嗙孩澶栬瘑鍒?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532080370000/006娆炬寚绾归攣.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532080383000/006娆炬寚绾归攣01.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532080385000/006娆炬寚绾归攣02.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532080405000/006娆炬寚绾归攣03.jpg\"></p>',16,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532079793000/006%E6%AC%BE%E6%8C%87%E7%BA%B9%E9%94%81.jpg',659.00,3919,0),(1008002,'灏忛AI闊崇鈥㈡瀬瀹㈢増',1001003,2001006,'閫氳繃iFLYOS杩炴帴鍐呭鍜屾湇鍔★紝璧嬭兘鏅鸿兘纭欢锛屾嫢鏈変赴瀵岀殑鏅鸿兘鍦烘櫙鍜屽妯℃€佷氦浜掕兘鍔?,'<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843052000/璇︽儏椤?.jpg\" style=\"max-width:100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843433000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843442000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843445000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843447000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843450000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843453000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843456000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843459000/璇︽儏椤?.jpg\" style=\"max-width: 100%;\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1553843466000/璇︽儏10.jpg\" style=\"max-width: 100%;\"><br></p>',36,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1548233495000/%E5%B0%8F%E9%A3%9EAI%E9%9F%B3%E7%AE%B1%E6%9E%81%E5%AE%A2%E7%89%88-%E4%B8%BB%E5%9B%BE%E6%96%B9%E5%BD%A2.png',399.00,610,0),(1008003,'鏅鸿兘鍐扮浜烘満浜や簰妯″潡',1001003,2001007,'鍩轰簬Android绯荤粺鐢ㄤ簬鏅鸿兘鍐扮鐨勬櫤鑳芥樉绀哄拰鎺у埗璁惧','<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534123309000/浜у搧绠€浠嬪強鎶€鏈壒鐐?png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534123312000/鍐扮鍙傛暟.png\">',33,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533994199000/%E6%99%BA%E8%83%BD%E5%86%B0%E7%AE%B1%E4%BA%BA%E6%9C%BA%E4%BA%A4%E4%BA%92%E6%A8%A1%E5%9D%97.png',299.00,21,0),(1008004,'鏅鸿兘绌鸿皟浜烘満浜や簰妯″潡',1001003,2001007,'鍩轰簬Android绯荤粺鐢ㄤ簬鏅鸿兘绌鸿皟鐨勬櫤鑳芥樉绀哄拰鎺у埗璁惧','<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533995323000/绌鸿皟浜у搧绠€浠嬨€佹妧鏈壒鐐?png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533995325000/绌鸿皟浜у搧鎶€鏈壒鐐?png\">',2,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533995248000/%E6%99%BA%E8%83%BD%E7%A9%BA%E8%B0%83%E4%BA%BA%E6%9C%BA%E4%BA%A4%E4%BA%92%E6%A8%A1%E5%9D%972.png',199.00,1007,1),(1008005,'鏅鸿兘鐏厜寮€鍏?,1001003,2001008,'鍙€氳繃鏈哄櫒浜鸿繘琛岃闊虫帶鍒讹紝閫氳繃APP杩涜杩滅▼鎺у埗','<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532946093000/璇煶鎺у埗.png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532946104000/杩滅▼.png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532946116000/瀹氭椂.png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532946126000/鍦烘櫙.png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532946136000/鎰熷簲.png\">',4,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1532945030000/%E5%BE%AE%E7%82%B9%E4%B8%89%E5%8A%A0%E4%B8%80%E5%BC%80%E5%85%B3.png',59.00,133,0),(1009001,'鏃犱汉闆跺敭瑙ｅ喅鏂规',1001004,2001004,'閫氳繃鎵爜寮€闂紝鍙栫墿鍚庡叏鏅鸿兘鍟嗗搧鎰熷簲璇嗗埆锛屽湪绾胯嚜鍔╃粨绠楋紝鑷姩寮€闂?,'<img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815503000/4.png\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815513000/鎹曡幏.PNG\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815524000/鎹曡幏3.PNG\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815529000/鎹曡幏2.PNG\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815890000/鎹曡幏6.PNG\">',7,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534815112000/%E5%9B%BE%E7%89%871.jpg',699.00,841,1),(1009002,'鏂伴浂鍞汉鏈轰氦浜掓ā鍧?,1001004,2001007,'涓鸿嚜鍔ㄥ敭璐ф満鐨勫晢瀹舵彁渚涙櫤鑳藉寲銆佹爣鍑嗗寲鐨勮蒋纭欢瑙ｅ喅鏂规锛岃鑷姩鍞揣鏈鸿澶囨洿鏅鸿兘','<p>鏂伴浂鍞汉鏈轰氦浜掓ā鍧楁彁渚涘涓猆SB鍜屼覆鍙ｏ紝鍙互杩炴帴榧犳爣銆侀敭鐩樸€佹壂鎻忔灙锛屾墦鍗版満銆佷簩浠ｈ韩浠借瘉璇诲崱鍣ㄣ€佷氦閫氫竴鍗￠€氳鍗″櫒銆丳OS 鏈哄拰绾㈠瑙︽懜灞忕瓑澶氱澶栬銆傛敮鎸丄ndroid绯荤粺锛屾寜鐓у伐涓氱骇姘村噯璁捐锛屽叿澶囧娓╃壒鎬э紝閫氳繃鑴夊啿銆侀浄鍑诲拰娴秾绛夊椤瑰疄楠屻€?/p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533995914000/浜у搧鎶€鏈弬鏁?png\"></p>',9,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1533995707000/%E8%87%AA%E5%8A%A8%E5%94%AE%E8%B4%A7%E6%9C%BA%E4%BA%BA%E6%9C%BA%E4%BA%A4%E4%BA%92%E6%A8%A1%E5%9D%97.png',109.00,2961,0),(1009003,'鏅鸿兘榄旈暅瑙ｅ喅鏂规',1001004,2001004,'闀滈潰鏄剧ず锛堝叧鏈烘槸闀滃瓙銆佸紑鏈烘槸灞忓箷锛夐瓟闀滅粓绔В鍐虫柟妗堬紝搴旂敤浜庡箍鍛娿€佹柊闆跺敭銆佺編濡嗘暣褰㈤棬搴椼€佸仴韬埧绛?,'<p>鏈骇鍝佸熀浜庘€滄櫤鑳介暅闈㈡樉绀哄拰浜や簰鈥濇妧鏈€滀笁缁翠汉鑴歌瘑鍒笌閲嶆瀯鎶€鏈€濓紝浠ュ強浜哄伐鏅鸿兘璇煶浜や簰鎶€鏈紝瀹炵幇绉戝够鑸殑缁堢浜烘満浜や簰锛屽彉鑴告櫤鑳介瓟闀滀寒搴﹂珮銆佽壊褰╅矞鑹炽€佷繚鐪熻繕鍘熷害楂樸€佸甫璇煶鍞ら啋鍜屼氦浜掋€?/p>\r\n<p><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534488014000/4.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534488018000/5.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534488022000/6.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534488146000/20180417152527_2598.jpg\"><img src=\"//xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534488168000/20180426152134_6817.jpg\"></p>',10,'http://xfyun-market.ufile.ucloud.com.cn/CreativityFair/1534487787000/1.png',199.00,37,1);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100',
  `scheme _url` varchar(255) NOT NULL DEFAULT '' COMMENT '鍏抽敭璇嶇殑璺宠浆閾炬帴',
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='鐑椆鍏抽敭璇嶈〃';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (1,'yeta',1,0,1,1,'',0),(2,'闊崇',0,1,1,100,'',0),(3,'闆跺敭',0,0,1,100,'',0),(4,'鐗╄仈缃?,0,0,1,100,'',0),(5,'绀惧尯',0,0,0,5,'',0),(6,'寤虹瓚',0,0,0,100,'',0),(7,'瀹夐槻',0,0,0,8,'',0);
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `content` text,
  `date` varchar(255) NOT NULL,
  `item_pic_url` varchar(255) NOT NULL DEFAULT '',
  `read_count` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (283,'绂忓埄娲诲姩 | 鍙戝竷鏈嶅姟棰嗗彇璧嬭兘澶хぜ鍖?,'https://mp.weixin.qq.com/s/wGpTDMoCkDDvpfCAo8gVIA','2019-4-9','http://www.aifuwus.com/cstentor/img/banner-6eb41b29bca2b79a42fbfc84a50ebb9a.jpg','42.5k'),(286,'鍚屾床鐢靛瓙姝ｅ紡鍏ラ┗璁AI鏈嶅姟甯傚満锝淎I鏈嶅姟鍟嗛閲?,'https://mp.weixin.qq.com/s/rYibwycJJ5BVn8MzJ1M_xQ','2019-3-26','https://mmbiz.qpic.cn/mmbiz_png/alXGfoeCre2ldhqUIQ9ibm0h9RCCUUKZQIlPtNKdRNk71mm0SBZ2707qaePwzCnzdtUibYdHVjFqbyicT0sQCAHNg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','15.6k'),(287,'鐧剧憺璧㈣瘉鍒歌仈鎵嬭榧犵鎶€锛屾墦閫犲叏鏂版櫤鑳芥姇椤炬湇鍔?| AI鍚堜綔妗堜緥','https://mp.weixin.qq.com/s/HkMrM89J9xCT1WiUMAkQ8w','2019-3-18','https://mmbiz.qpic.cn/mmbiz_png/alXGfoeCre1gwkZicuGsNlS3DdgahdLajSM2iaGqVssLpiaKwTNZviaxcu4th9LhvFJsI1egWDgENHeJQlY9vZZTUg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','55.6k'),(289,'鏂板姛鑳戒笂绾?| 鈥滄湇鍔″晢棣栭〉鈥濆拰鈥滄垚鍔熸渚嬧€?,'https://mp.weixin.qq.com/s/xzMjJpvc9SluXkSGtDhGeA','2019-3-11','https://mmbiz.qpic.cn/mmbiz_png/alXGfoeCre35jNdXGRk0Dnhe8X87KxMZ15cQVAQFmlIGEIVkneE2jCdgW1UhFicrhXkcMNqb7H1t42vg2YaD6Uw/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','11.9k'),(291,'鈥淎.I. ENABLES鈥濊涓氭矙榫欏ぉ娲ョ珯锛孉I璧嬭兘浠庘€滆亰涓€鑱娾€濆惎绋?,'https://mp.weixin.qq.com/s/uxoR5sHzNrrj3e3z_NuuRQ','2018-12-14','https://mmbiz.qpic.cn/mmbiz_jpg/alXGfoeCre1uu1XiaXSq5suasO6fU6uftibJf5nvCBeibVfJhPl482MtC27C6KUicYlefImz9CM1s9v0gruibsOZBGw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','67.8k'),(294,'鏈嶅姟鍟嗘嫑鍕?| 鎴戜滑璇氶個浣犱竴璧凤紝鎼嚑搴ф湭鏉ュ煄甯?,'https://mp.weixin.qq.com/s/LeDd906pem89LaDUdmFTRw','2018-11-22','https://mmbiz.qpic.cn/mmbiz_jpg/alXGfoeCre3tRyAYibPkuc9Lsc5E9owX8FMHklS2ic9dtuibdvGmr91ib6OAjiaWDfEzk6VQv3SAhdgoxNQt1BT9QXQ/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','108.1k'),(295,'绉戝ぇ璁 | AI鏈嶅姟甯傚満閲嶇鍙戝竷','https://mp.weixin.qq.com/s/zTefLA28KXxEsg7JgyuXNQ','2018-6-28','https://mmbiz.qpic.cn/mmbiz_jpg/alXGfoeCre3UerbDrzJwkGAh9iciavUJMLFkAqJzCn92IkTvNFUKicpBDPwichhxqTs9I9pOXvPx9ib0ib6R6Tibibc9nw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','36.6k'),(299,'绉戝ぇ璁锛欰I鏈嶅姟甯傚満锛屼负鍏ㄨ涓欰I璧嬭兘锛?,'https://mp.weixin.qq.com/s/fwCLrmwLyNLj1suwjnr9RQ','2018-6-22','https://mmbiz.qpic.cn/mmbiz_jpg/alXGfoeCre0stFcsIUHSu5p9Hx29lZGJuyEjw62sjdqNmdTGfibyXTgMzltZgs5ZDrxib0ObwLfF2z4DxcPPZgCA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1','28.7k');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_provider`
--

DROP TABLE IF EXISTS `service_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_provider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sp_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_provider`
--

LOCK TABLES `service_provider` WRITE;
/*!40000 ALTER TABLE `service_provider` DISABLE KEYS */;
INSERT INTO `service_provider` VALUES (1,2001001,'鍏徃鍚嶇О','閲嶅簡绉戜紬鍢夎仈绉戞妧鏈夐檺鍏徃'),(2,2001001,'鎿呴暱棰嗗煙','鐢佃瘽瀹㈡湇銆佸湪绾垮鏈?),(3,2001002,'鍏徃鍚嶇О','娣卞湷甯傚悓娲茬數瀛愯偂浠芥湁闄愬叕鍙?),(4,2001002,'鎿呴暱棰嗗煙','鏅烘収妤煎畤銆佹櫤鎱хぞ鍖?),(5,2001003,'鍏徃鍚嶇О','娣卞湷甯傚ゥ鍦ｇ鎶€鍙戝睍鏈夐檺鍏徃'),(6,2001003,'鎿呴暱棰嗗煙','鏅鸿兘瀹跺眳銆佹櫤鑳介攣'),(7,2001004,'鍏徃鍚嶇О','鍚堣偉鍙樿劯鏈哄櫒瑙嗚鎶€鏈湁闄愬叕鍙?),(8,2001004,'鎿呴暱棰嗗煙','鏅烘収闆跺敭銆佹櫤鑳界‖浠?),(9,2001005,'鍏徃鍚嶇О','鏉窞璇繂绉戞妧鏈夐檺鍏徃'),(10,2001005,'鎿呴暱棰嗗煙','鏅鸿兘瀹㈡湇銆佽川妫€鍒嗘瀽'),(11,2001006,'鍏徃鍚嶇О','绉戝ぇ璁鑲′唤鏈夐檺鍏徃'),(12,2001006,'鎿呴暱棰嗗煙','浜哄伐鏅鸿兘銆佽闊虫妧鏈?),(13,2001007,'鍏徃鍚嶇О','鍗椾含鐐硅Е鏅鸿兘绉戞妧鏈夐檺鍏徃'),(14,2001007,'鎿呴暱棰嗗煙','鏈哄櫒浜恒€佺墿鑱旂綉銆佹柊闆跺敭'),(15,2001008,'鍏徃鍚嶇О','娣卞湷甯備腑闃抽€氳鏈夐檺鍏徃'),(16,2001008,'鎿呴暱棰嗗煙','鏅鸿兘瀹跺眳銆佹櫤鎱у畨闃?),(17,2001009,'鍏徃鍚嶇О','鍗椾含涓変竾鐗╄仈缃戠鎶€鏈夐檺鍏徃'),(18,2001009,'鎿呴暱棰嗗煙','鏅烘収鍐滀笟銆佹櫤鎱ф帓姘淬€佺幆澧冪洃娴?);
/*!40000 ALTER TABLE `service_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `union`
--

DROP TABLE IF EXISTS `union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `union` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `union`
--

LOCK TABLES `union` WRITE;
/*!40000 ALTER TABLE `union` DISABLE KEYS */;
INSERT INTO `union` VALUES (1,'http://www.aifuwus.com/activity/enterapply','2019-3-24');
/*!40000 ALTER TABLE `union` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `register_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(255) NOT NULL DEFAULT '',
  `user_level_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `register_ip` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `weixin_openid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level`
--

LOCK TABLES `user_level` WRITE;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
INSERT INTO `user_level` VALUES (1,'鏅€氱敤鎴?,'0'),(2,'vip','10000');
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 17:05:58
