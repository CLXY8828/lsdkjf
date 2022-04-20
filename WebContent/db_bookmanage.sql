/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.62-community : Database - db_bookmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bookmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_bookmanage`;

/*Table structure for table `tb_bbs` */

DROP TABLE IF EXISTS `tb_bbs`;

CREATE TABLE `tb_bbs` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `inTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bbs` */

LOCK TABLES `tb_bbs` WRITE;

insert  into `tb_bbs`(`id`,`content`,`inTime`) values (2,'在圣诞节来临之际，本书店为答解新老朋友的，特举办购物有奖活动！','12 15 2005 11:11AM');
insert  into `tb_bbs`(`id`,`content`,`inTime`) values (4,'购物有奖，快快行动吧！','12 15 2005  3:21PM');
insert  into `tb_bbs`(`id`,`content`,`inTime`) values (8,'333','333');

UNLOCK TABLES;

/*Table structure for table `tb_bookinfo` */

DROP TABLE IF EXISTS `tb_bookinfo`;

CREATE TABLE `tb_bookinfo` (
  `isbn` int(4) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `pdate` varchar(50) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `inTime` varchar(50) DEFAULT NULL,
  `newbook` varchar(50) DEFAULT NULL,
  `commend` varchar(50) DEFAULT NULL,
  `introduce` mediumtext,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bookinfo` */

LOCK TABLES `tb_bookinfo` WRITE;

insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (1,'Jsp测试','Jsp测试','Jsp测试','Jsp测试','34.00','Jsp测试','','02 15 2006 10:38AM','0','0','顶天');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (2,'Visual Basic数据库开发实例解析','Visual Basic系列丛书','机械工业出版社','刘志铭、高春艳、孙健鹏','48.00','2003年8月','VBsjkkfsljx.gif','12 15 2005  4:35PM','0','0','　软件开发是一项复杂细致的工作，尤其是开发商业管理软件，不但要求开发人员熟练掌握开发工具的语法知识，而且还要具有商业软件开发的丰富经验。本书以实用商业案例为基础，通过几个完整的商业系统案例，一步一步带领读者完成商业管理软件开发的各个目标。每个实例都突出实用性，不仅可以了解开发商业管理软件的专业知识，而且可以全面掌握整个商业系统的设计思路和开发技术。全书包含宾馆客房管理系统、钢材综合管理系统、餐饮管理系统、医药进销存管理系统、珠宝首饰进销存管理系统等五个案例，既有小型Access数据库，也有大型的SQL Server数据库，通过对不同数据库、不同行业的实例开发，使读者可以快速掌握利用Visual Basic 开发数据库管理软件的精髓。\n　　本书附有配套光盘。光盘提供了书中5个案例的全部源代码，全部源代码都经过精心调试，在Windows98下全部通过，保证能够正常运行。\n　　本书内容详实，案例完整，步骤详尽，具有很强的实用性。适合于各级软件开发人员学习使用，也可供大中专院校师生学习参考，是编程者不可多得的一本好书。\n　　本书的每个案例都可直接作为商业软件使用，在将本书案例直接用于商业行为时，请首先征得作者同意或授权。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (3,'Visual FoxPro数据库开发实例解析','Visual FoxPro系列丛书','机械工业出版社','王晶莹、王国辉、张雨','48.00','2003年9月','vfpsjkkfsljx.gif','12 15 2005  4:37PM','0','0','软件开发是一项复杂细致的工作，尤其是开发商业管理软件，不但要求开发人员熟练掌握开发工具的语法知识，而且还要具有商业软件开发的丰富经验。本书以实用商业案例为基础，通过几个完整的商业系统案例，一步一步带领读者完成商业管理软件开发的各个目标。每个实例都突出实用性，不仅可以了解开发商业管理软件的专业知识，而且可以全面掌握整个商业系统的设计思路和开发技术。全书包含医药管理、物业管理、汽配管理、客房管理、车辆管理等五个案例，通过对不同行业的实例开发，使读者可以快速掌握利用Visual Foxpro 开发数据库管理软件的精髓。\n　　本书附有配套光盘。光盘提供了书中5个案例的全部源代码，全部源代码都经过精心调试，在windows98下全部通过，保证能够正常运行。\n　　本书内容详实，案例完整，步骤详尽，具有很强的实用性。适合于各级软件开发人员学习使用，也可供大中专院校师生学习参考。是编程者不可多得的一本好书。\n　　本书的每个案例都可直接作为商业软件使用，在将本书案例直接用于商业行为时，请首先征得作者同意或授权。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (4,'Power Builder数据库开发实例解析','PowerBuilder系列丛书','机械工业出版社','华传铭、张振坤、吴晓英','43.00','2003年9月','PBsjkkfsljx.gif','12 15 2005  4:39PM','0','0','软件开发是一项复杂细致的工作，尤其是开发商业管理软件，不但要求开发人员熟练掌握开发工具的语法知识，而且还要具有商业软件开发的丰富经验。本书以实用商业案例为基础，通过几个完整的商业系统案例，一步一步带领读者完成商业管理软件开发的各个目标。每个实例都突出实用性，不仅可以了解开发商业管理软件的专业知识，而且可以全面掌握整个商业系统的设计思路和开发技术。全书包含医药管理、汽配管理、洗浴管理、客房管理、餐饮管理等五个案例，通过对不同行业的实例开发，使读者可以快速掌握利用Power　Builder 开发数据库管理软件的精髓。\n　　本书附有配套光盘。光盘提供了书中5个案例的全部源代码，全部源代码都经过精心调试，在windows98下全部通过，保证能够正常运行。\n　　本书内容详实，案例完整，步骤详尽，具有很强的实用性。适合于各级软件开发人员学习使用，也可供大中专院校师生学习参考。是编程者不可多得的一本好书。\n　　本书的每个案例都可直接作为商业软件使用，在将本书案例直接用于商业行为时，请首先征得作者同意或授权。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (5,'Delphi数据库开发实例解析','Delph系列丛书','机械工业出版社','赛奎春、郑骁鹏、郑齐心','49.00','2004年2月','delphisjkkfsljx.gif','12 15 2005  4:41PM','0','0','软件开发是一项复杂细致的工作，尤其是开发商业管理软件，不但要求开发人员熟练掌握开发工具的语法知识，而且还要具有商业软件开发的丰富经验。本书以实用商业案例为基础，通过几个完整的商业系统案例，一步一步带领读者完成商业管理软件开发的各个目标。每个实例都突出实用性，不仅可以了解开发商业管理软件的专业知识，而且可以全面掌握整个商业系统的设计思路和开发技术。全书包含餐饮管理系统、物业管理系统、校园管理系统、维修管理系统、汽配管理系统等五个案例，既有小型Access数据库，也有大型的SQL Server数据库，通过对不同数据库、不同行业的实例开发，使读者可以快速掌握利用Delphi开发数据库管理软件的精髓。\n　　本书附有配套光盘。光盘提供了书中5个案例的全部源代码，全部源代码都经过精心调试，在Windows98/Windows XP下全部通过，保证能够正常运行。\n　　本书内容详实，案例完整，步骤详尽，具有很强的实用性。适合于各级软件开发人员学习使用，也可供大中专院校师生学习参考，是编程者不可多得的一本好书。\n　　本书的每个案例都可直接作为商业软件使用，在将本书案例直接用于商业行为时，请首先征得作者同意或授权。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (6,'PowerBuilder 精彩编程200例','PowerBuilder系列丛书','机械工业出版社','张振坤、李文立、集虹等','39.00','2004年9月','PB200l.jpg','12 15 2005  4:43PM','0','0','本书通过大量实例，分门别类地对PowerBuilder的编程方法进行了全页深入的介绍。全书分为窗体、控件、类与菜单，数据库技术，多媒体与图形，文件与系统，网络与Internet五个部分，共200个实例。每个实例都突出实用性，其中大部分是程序开发者常见问题的解决方案。本书的配套光盘，提供了书中200个案例的全部源代码，这些源代码都已经过调试，并在windows98下全部通过。\n　　本书适用于广大计算机爱好者和编程人员学习开发使用，也可供大中专院校师生学习参考。可以满足不同消费者的需要。是编程者不可多得的一本好书。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (7,'Visual FoxPro 精彩编程200例','Visual FoxPro系列丛书','机械工业出版社','王国辉、董韶华、韩旭等','39.00','2004年9月','VFP200l.gif','12 15 2005  4:45PM','0','0','本书通过大量实例，详细介绍了Visual FoxPro编程的经验与技巧。全书分为界面、控件、类与表单，数据库技术，多媒体与图形，文件与系统，网络与Internet五个部分，共200个实例。每个实例都突出实用性，其中大部分是程序开发者常见问题的解决方案。本书的配套光盘，提供了书中200个案例的全部源代码，所有源代码都经过精心调试，在windows98下全部通过，保证能够正常运行。\n　　本书适用于广大计算机爱好者和编程人员学习开发使用，也可供大中专院校师生学习参考。可以满足不同消费者的需要。是编程者不可多得的一本好书。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (8,'ASP数据库开发实例解析','ASP系列丛书','机械工业出版社','李严、于亚芳、王国辉','36.00','2004年12月','ASPsjkkfsljx.gif','12 15 2005  4:47PM','0','0','本书以实用网络应用程序开发实例为基础，通过几个完整的商业实例，一步一步带领读者完成网络应用程序开发的各个目标。书中的每个实例都突出实用性，通过学习，读者不仅可以了解开发商业网络系统的专业知识，而且可以全面掌握整个网络系统的设计思路。书中包含：网上图书管理系统、网上商品交易系统、网上客户管理系统、网上企业办公自动化系统、企业网上交流平台等五个实例。所使用的数据库即有小型Access数据库，也有大型SQL Server数据库。通过对不同数据库、不同行业的实例开发，可使读者快速掌握利用ASP开发数据库管理软件的精髓。\n    本书内容详实，实例完整，步骤清晰，具有很强的实用性。适合各级网络开发人员学习使用，也可供大中专院校师生学习参考，是网络编程者不可多得的一本好书。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (9,'Delphi工程应用与项目实践','Delphi系列丛书','机械工业出版社','宋坤 赵智勇等','39.00','2005年1月','Delphigcyyysj.gif','12 15 2005  4:50PM','0','0','　本书从项目开发必备的知识和原则入手，全面系统地介绍了Delphi在工程开发中的编程知识、方法和技巧。全书在前10章节主要介绍Delphi程序设计的重点和难点技术，每章首先进行知识讲解，然后结合相关知识在工程开发中的应用实例深化理解，应用实例注重实用性、启发性，使读者能结合所学知识快速掌握ASP程序的开发方法和技巧。第11章、第12章主要以两个工程实例系统介绍项目开发的完整过程，使读者在掌握Delphi程序开发的精髓。\n　　全书注重所讲知识的工程应用。作者从多年开发工程项目的实践入手，将编程必备的知识与工程开发中的实际案例相结合，使读者在掌握Delphi软件的同时，快速掌握相关编程知识在工作实践中的使用方法和技巧，分享作者的开发经验。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (10,'Visual Basic工程应用与项目实践','Visual Basic系列丛书','机械工业出版社','高春艳、李俊民等','43.00','2005年1月','VBgcyyysj.gif','12 15 2005  4:52PM','0','0','本书从项目开发必备的知识和原则入手，全面系统地介绍了Visual Basic在工程开发中的编程知识、方法和技巧。全书在前12章主要介绍Visual Basic进行程序设计的重点和难点技术，每章首先进行知识讲解，然后结合相关知识在工程开发中的应用实例深化理解，应用实例注重实用性、启发性，使读者能结合所学知识快速掌握Visual Basic程序的开发方法和技巧。后两章通过物业和酒店管理系统两个完整实例循序渐进地介绍Visual Basic项目开发的完整过程，使读者在掌握Visual Basic基本开发方法和技巧后，能够快速掌握实用项目的开发思路和方法。从而领会Visual Basic的精髓。\n　　全书注重所讲知识的工程应用。作者从多年的开发工程项目的实践入手，将编程必备的知识与工程开发中的实际案例相结合，使读者在学习Visual Basic的同时，快速分享作者在开发中的经验。全书按照深入浅出的原则，根据不同的开发知识和不同的工程应用问题进行了详细的讲解。\n　　本书中的实例多来源于我们开发的实际项目，这些例子都具有实际应用的价值，为使读者能更好的使用本书，随书光盘包含了所有实例的源代码程序。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (11,'Visual C＋＋工程应用与项目实践','Visual C＋＋系列丛书','机械工业出版社','张雨、阮伟良、李贺等','41.00','2005年1月','VCgcyyysj.gif','12 15 2005  4:54PM','0','0','本书从项目开发必备的知识和原则入手，全面系统地介绍了MFC在工程开发中的编程知识、方法和技巧。全书前9章主要介绍MFC程序设计的重点和难点技术。每章首先进行知识讲解，然后结合相关知识在工程开发中的应用实例深化理解应用，实例注重实用性、启发性和典型性，使读者能结合所学知识快速掌握Visual C++程序的开发方法和技巧。第10章通过一个完整工程实例的开发过程，带领读者快掌握实用项目的开发思路和方法，从而领会MFC程序开发的精髓。\n　　全书分为10章，包括MFC编程基础、文件与文件系统在程序开发中的应用、图形与多媒体技术在开发中的应用、注册表、操作系统编程、输入输出技术、Visual C++高级应用、数据库程序设计、网络与INTERNET程序设计、物流综合管理系统。\n　　全书注重所讲知识的工程应用。作者从多年开发工程项目的实践入手，将编程必备的知识与工程开发中的实际案例相结合，使读者在学习Visual C++的同时，快速分享作者在开发中的开发经验。全书按照深入浅出的原则，根据不同的开发知识和不同的工程应用问题进行了详细讲解。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (12,'JSP工程应用与项目实践','JSP系列丛书','机械工业出版社','陈威、白伟明、李楠','38.00','2005年2月','JSPgcyyysj.gif','12 15 2005  4:55PM','1','1','本书从项目开发必备的知识和原则入手，全面系统地介绍了JSP在工程开发中的编程知识、方法和技巧。全书在前9章中主要介绍JSP开发Web应用程序的重点和难点技术，每章首先进行知识讲解，然后结合相关知识在工程开发中的应用实例深化理解，应用实例注重实用性、启发性，使读者能结合所学知识快速掌握JSP程序的开发方法和技巧。后3章通过社区、网上书店和办公自动化系统3个完整实例循序渐进地介绍JSP项目开发的完整过程，使读者在掌握JSP基本开发方法和技巧后，能够快掌握实用项目的开发思路和方法，从而领会JSP的精髓。\n　　全书注重所讲知识的工程应用。作者从多年开发工程项目的实践入手，将编程必备的知识与工程开发中的实际案例相结合，使读者在学习JSP的同时，快速分享作者的开发经验。全书按照深入浅出的原则，根据不同的开发知识和不同的工程应用问题进行了详细讲解。\n　　本书中的实例多来源于我们开发的实际项目，这些例子都具有实际应用的价值，为使读者能更好的使用本书，随书光盘包含了所有实例的源代码程序。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (13,'ASP工程应用与项目实践','ASP系列丛书','机械工业出版社','王国辉、牛强、李南南','42.00','2005年4月','ASPgcyyysj.gif','12 15 2005  4:56PM','0','1','　本书从项目开发必备的知识和原则入手，全面系统地介绍了ASP在工程开发中的编程知识、方法和技巧。全书在前10章主要介绍ASP在开发Web应用程序的重点和难点技术，每章首先进行知识讲解，然后结合相关知识在工程开发中的应用实例深化理解，应用实例注重实用性、启发性，使读者能结合所学知识快速掌握ASP程序的开发方法和技巧。后两章通过网上教学系统和网上商城两个完整实例循序渐进地介绍ASP项目开发的完整过程，使读者在掌握ASP基本开发方法和技巧后，能够快掌握实用项目的开发思路和方法，从而领会ASP的精髓。\n　　全书注重所讲知识的工程应用。作者从多年开发工程项目的实践入手，将编程必备的知识与工程开发中的实际案例相结合，使读者在学习ASP的同时，快速分享作者的开发经验。全书按照深入浅出的原则，根据不同的开发知识和不同的工程应用问题进行了详细讲解。\n　　本书中的实例多来源于我们开发的实际项目，这些例子都具有实际应用的价值，为使读者能更好的使用本书，随书光盘包含了所有实例的源代码程序。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (14,'Visual Basic 信息系统开发实例精选','Visual Basic系列丛书','机械工业出版社','高春艳、李俊民、张耀庭等','44.00','2005年7月','VBxxxtkfsljx.gif','12 15 2005  4:58PM','0','1','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (15,'ASP 信息系统开发实例精选','ASP系列丛书','机械工业出版社','王国辉、牛强、李南南等','45.00','2005年7月','ASPxxxtkfsljx.gif','12 15 2005  4:59PM','0','1','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (16,'Delphi 信息系统开发实例精选','Delphi系列丛书','机械工业出版社','宋坤、赵智勇、刘强等','44.00','2005年7月','Delphixxxtkfsljx.jpg','12 15 2005  5:00PM','0','0','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (17,'JSP信息系统开发实例精选','JSP系列丛书','机械工业出版社','白伟明、赵玉君、李南南','44.00','2006年1月','JSPxxxtkfsljx.gif','12 22 2005  5:22PM','1','0','本书精选了大学生就业求职网、物流信息平台、华奥汽车销售集团网站、佳美网络购物中心、科研成果申报管理系统、安瑞奥国际商务学院招生网、明日宽带影院、雄霸天下游戏网等8个综合的网络信息系统工程作为案例，深入剖析了实际的网络信息系统的开发思路、方法和技巧。帮助读者透彻掌握了JSP开发网络信息系统的方法和步骤，从而设计出具有实用价值和商业价值的信息系统。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (18,'Visual foxpro数据库开发关键技术与实例应用','Visual foxpro系列丛书','人民邮电出版社','周桓、张雨、王国辉等','40.00','2004年5月','delphisjkkfgjjsyslyy.jpg','12 15 2005  5:02PM','0','0','本书从Visual FoxPro用户经常遇到的问题入手，结合应用实例的讲解，帮助读者快速掌握使用Visual FoxPro开发数据库管理系统的关键技术、方法和技巧，从而开发出适合企业应用的数据库系统。\n   全书共分为13章，内容包括如何使用代码设计SQL Server数据库、如何连接数据库、数据集与数据访问组件应用技巧、数据输入输出技术、常用控制组件应用技术、SQL数据查询技术、设计报表和图表、软件与数据库安全、计算机外围硬件程序设计、数据库典型程序设计、多层结构程序开发设计、SQL Server 2000开发设计、使用InstallShield制作安装程序。\n   本书配套光盘中提供了书中应用实例的源程序代码，所有源程序均在Windows 98或Windows XP下调试通过，确保能够正常运行。本书内容精练、重点突出，适合Delphi程序开发人员阅读和参考，也可供大中专院校计算机相关专业的师生学习。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (19,'PoweBuilder数据库开发关键技术与实例应用','PoweBuilder系列丛书','人民邮电出版社','刘志铭 张振坤 冯文萃','36.00','2004年5月','pbsjkkfgjjsyslyy.jpg','12 15 2005  5:03PM','0','0','本书从Visual FoxPro用户开发数据库管理系统时遇到的问题入手，介绍了用Visual FoxPro开发数据库管理系统的关键技术与技巧。全书共分为13章，包括如何设计数据库、表和索引，如何在数据库中设计视图，如何对表单进行基本操作，常用的数据输入技巧，如何设计报表和标签，控件的开发技巧，程序主窗体、菜单、工具栏的设计，典型表单的设计，怎样访问其他数据库，如何在Visual FoxPro中使用Win32API，硬件接口程序设计、系统发布与运行等。书中配光盘中提供了所有案例的全部源代码，所有源代码均在Windwos 98下调试通过，确保能够正常运行。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (20,'Delphi数据库开发关键技术与实例应用','Delphi系列丛书','人民邮电出版社','赛奎春 陈紫鸿 宋昆','40.00','2004年5月','delphisjkkfgjjsyslyy.jpg','12 15 2005  5:04PM','0','0','本书从Delphi用户经常遇到的问题入手，结合应用实例的讲解，帮助读者快速掌握使用Delphi开发数据库管理系统的关键技术、方法和技巧，从而开发出适合企业应用的数据库系统。\n   全书共分为13章，内容包括如何使用代码设计SQL Server数据库、如何连接数据库、数据集与数据访问组件应用技巧、数据输入输出技术、常用控制组件应用技术、SQL数据查询技术、设计报表和图表、软件与数据库安全、计算机外围硬件程序设计、数据库典型程序设计、多层结构程序开发设计、SQL Server 2000开发设计、使用InstallShield制作安装程序。\n   本书配套光盘中提供了书中应用实例的源程序代码，所有源程序均在Windows 98或Windows XP下调试通过，确保能够正常运行。本书内容精练、重点突出，适合Delphi程序开发人员阅读和参考，也可供大中专院校计算机相关专业的师生学习。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (21,'Visual basic数据库开发关键技术与实例应用','Visual Basic系列丛书','人民邮电出版社','高春艳、李艳','40.00','2004年5月','Vbsjkkfgjjsyslyy.jpg','12 15 2005  5:06PM','0','0','本书从Visual Basic用户经常遇到的问题入手，结合应用实例的讲解，帮助读者快速掌握使用Delphi开发数据库管理系统的关键技术、方法和技巧，从而开发出适合企业应用的数据库系统。\n   全书共分为13章，内容包括如何使用代码设计SQL Server数据库、如何连接数据库、数据集与数据访问组件应用技巧、数据输入输出技术、常用控制组件应用技术、SQL数据查询技术、设计报表和图表、软件与数据库安全、计算机外围硬件程序设计、数据库典型程序设计、多层结构程序开发设计、SQL Server 2000开发设计、使用InstallShield制作安装程序。\n   本书配套光盘中提供了书中应用实例的源程序代码，所有源程序均在Windows 98或Windows XP下调试通过，确保能够正常运行。本书内容精练、重点突出，适合Delphi程序开发人员阅读和参考，也可供大中专院校计算机相关专业的师生学习。');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (22,'Visual C＋＋ 管理信息系统完整项目实例剖析','Visual C＋＋系列丛书','人民邮电出版社','明日科技','48.00','2005年7月','VCglxxxtwzxmslpx.jpg','12 15 2005  5:07PM','1','1','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (23,'Visual Basic 管理信息系统完整项目实例剖析','Visual Basic系列丛书','人民邮电出版社','明日科技','40.00','2005年7月','VBglxxxtwzxmslpx.jpg','12 15 2005  5:08PM','1','1','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (24,'PowerBuilder 管理信息系统完整项目实例剖析','PowerBuilder系列丛书','人民邮电出版社','明日科技','44.00','2005年7月','PBglxxxtwzxmslpx.jpg','12 15 2005  5:10PM','1','0','暂无');
insert  into `tb_bookinfo`(`isbn`,`bookName`,`type`,`publisher`,`writer`,`price`,`pdate`,`cover`,`inTime`,`newbook`,`commend`,`introduce`) values (25,'Visual FoxPro管理信息系统完整项目实例剖析','Visual FoxPro系列丛书','人民邮电出版社','明日科技','46.00','2005年7月','Visual FoxProglxxxtwzxmslpx.jpg','12 15 2005  5:11PM','1','0','暂无');

UNLOCK TABLES;

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `manager` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_manager` */

LOCK TABLES `tb_manager` WRITE;

insert  into `tb_manager`(`id`,`manager`,`password`) values (1,'mr','mingrisoft');
insert  into `tb_manager`(`id`,`manager`,`password`) values (2,'admin','111');

UNLOCK TABLES;

/*Table structure for table `tb_member` */

DROP TABLE IF EXISTS `tb_member`;

CREATE TABLE `tb_member` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `trueName` varchar(50) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `cardNO` varchar(50) DEFAULT NULL,
  `cardType` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `freeze` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_member` */

LOCK TABLES `tb_member` WRITE;

insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (1,'无语','吴语','111111','长春市','长春市朝阳区','130061','220121455441452','身份证','0','0.00','13614448007','wgh@sina.com','0');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (2,'blueStar','BLUE星梦','000000','长春市','长春市二道区','130031','220566686662345','身份证','0','0.00','13614449169','bluestar@sohu.com','0');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (3,'wind','封轻杨','000000','长春市','长春市二道区','130031','220666987102452','身份证','0','76.00','4972266','fqy777@sina.com','0');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (4,'wgh','王国辉','111','长春市','长春市朝阳区','136000','220578713212156','身份证','1','560.10','3642159','iceer@sohu.com','0');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (5,'icer','冰','111111','长春市','长春市','130031','220144555444757','身份证','0','0.00','13622445544755','icer@sohu.com','0');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (6,'sxp','孙蓝','111111','长春','东盛大街','130051','220524810905020','身份证','0','210.00','13844817613','sunxiaopeng666@163.com','1');
insert  into `tb_member`(`id`,`userName`,`trueName`,`passWord`,`city`,`address`,`postcode`,`cardNO`,`cardType`,`grade`,`amount`,`tel`,`email`,`freeze`) values (7,'gyl','顾问','111111','','','','220183198011103000','身份证','0','0.00','','yangjun1@sina.com','0');

UNLOCK TABLES;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

LOCK TABLES `tb_user` WRITE;

insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (1,'张飞','男','45','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (2,'关羽','男','34','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (3,'刘备','男','56','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (4,'马超','男','45','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (5,'黄忠','男','44','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (6,'赵云','男','67','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (7,'曹操','男','55','1234567890');
insert  into `tb_user`(`id`,`name`,`sex`,`age`,`tel`) values (8,'貂蝉','女','19','1234567890');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
