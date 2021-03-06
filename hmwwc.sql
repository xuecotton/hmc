

-- 创建数据库hmc
set names utf8;
DROP DATABASE IF EXISTS hmc;
create database hmc charset=utf8;
USE 'hmc';

DROP TABLE IF EXISTS user;

-- 创建用户信息表
create table user(
  id INT NOT NULL AUTO_INCREMENT COMMENT '用户id，主键自增',
  username varchar(32) NOT NULL UNIQUE COMMENT '用户名，登录凭证不能为空',
  password varchar(32) NOT NULL COMMENT '密码，MD5',
  nickname varchar(30)  DEFAULT NULL  COMMENT '昵称，用户自己设置',
  avatar varchar(64) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  realname varchar(16) NOT NULL DEFAULT 'viewer'  COMMENT '用户真实姓名',
  phone bigint DEFAULT NULL COMMENT '手机号，预定房间要用',

  PRIMARY KEY (`id`));

INSERT INTO `user` (`id`,`username`,`password`,`nickname`,`phone`) VALUES(001,'zhanglangeba','123456789','蟑螂恶霸',15789512648);
INSERT INTO `user` (`id`,`username`,`password`,`nickname`,`phone`) VALUES(002,'shayulajiao','123456789','鲨鱼辣椒',15518145698);
INSERT INTO `user` (`id`,`username`,`password`,`nickname`,`phone`) VALUES(003,'zhizhuzhentan','123456789','蜘蛛侦探',13615489456);
INSERT INTO `user` (`id`,`username`,`password`,`nickname`,`phone`) VALUES(004,'xiezilailai','123456789','蝎子莱莱',15299461587);
INSERT INTO `user` (`id`,`username`,`password`,`nickname`,`phone`) VALUES(005,'fengjian','123456789','风间',15778945612);

DROP TABLE IF EXISTS oorder;
--创建订单表
create table oorder(
  ooid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ordernum varchar(32) NOT NULL,
  oprice float(5,2) NOT NULL,
  username varchar(30)  NOT NULL,
  productId INT NOT NULL,
  productPic varchar(50) NOT NULL  DEFAULT 'productpic.jpg',
  productName varchar(150) NOT NULL,
  address varchar(16) NOT NULL ,
  dateStart DATETIME NOT NULL,
  dateEnd DATETIME DEFAULT NULL  ,
  days INT DEFAULT NULL ,
  isPay BOOLEAN NOT NULL)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';;

--输入订单信息

INSERT INTO oorder VALUES(6001,"1547805724",258.99,"zhanglangeba",9001,"productpic.jpg","泰莲庭藏幽山水境民宿","北京","2019-01-18 18:02:04","2019-01-19 18:02:04",1,TRUE);
INSERT INTO oorder VALUES(6002,"1572775325",325,"xiezilailai",9002,"productpic.jpg","怀柔青龙峡|ins风","北京","2019-11-03 18:02:05","2019-11-04 18:02:05",1,TRUE);
INSERT INTO oorder VALUES(6003,"1572861726",319,"zhizhuzhentan",9003,"productpic.jpg","园里十八台","北京","2019-11-04 18:02:06","2019-11-05 18:02:06",1,TRUE);
INSERT INTO oorder VALUES(6004,"1547892127",260,"shayulajiao",9004,"productpic.jpg","近政法石油MissHOME日式禅意大床房","北京","2019-01-19 18:02:07","2019-01-20 18:02:07",1,TRUE);
INSERT INTO oorder VALUES(6005,"1572948128",189,"fengjian",9005,"productpic.jpg","故宫天海门后海","北京","2019-11-05 18:02:08","2019-11-06 18:02:08",1,TRUE);
INSERT INTO oorder VALUES(6006,"1573034529",196,"zhanglangeba",9006,"productpic.jpg","慕田峪|三卅精品民宿","北京","2019-11-06 18:02:09","2019-11-07 18:02:09",1,TRUE);
INSERT INTO oorder VALUES(6007,"1547978530",145,"xiezilailai",9007,"productpic.jpg","仙女屋•精致少女/婚纱复式","北京","2019-01-20 18:02:10","2019-01-21 18:02:10",1,TRUE);
INSERT INTO oorder VALUES(6008,"1573120931",260,"zhizhuzhentan",9008,"productpic.jpg","南京路步行街","上海","2019-11-07 18:02:11","2019-11-08 18:02:11",1,TRUE);
INSERT INTO oorder VALUES(6009,"1573207332",330,"shayulajiao",9009,"productpic.jpg","温馨鱼塘","上海","2019-11-08 18:02:12","2019-11-09 18:02:12",1,TRUE);
INSERT INTO oorder VALUES(6010,"1548064933",450,"fengjian",9010,"productpic.jpg","北欧风南京路步行街","上海","2019-01-21 18:02:13","2019-01-22 18:02:13",1,TRUE);
INSERT INTO oorder VALUES(6011,"1573293734",460,"zhanglangeba",9011,"productpic.jpg","步行外滩南京东路","上海","2019-11-09 18:02:14","2019-11-10 18:02:14",1,FALSE);
INSERT INTO oorder VALUES(6012,"1573380135",456,"xiezilailai",9012,"productpic.jpg","上海浦东新区合舍民宿","上海","2019-11-10 18:02:15","2019-11-11 18:02:15",1,FALSE);
INSERT INTO oorder VALUES(6013,"1548151336",125,"zhizhuzhentan",9013,"productpic.jpg","艺术客栈——体验艺术家生活","上海","2019-01-22 18:02:16","2019-01-23 18:02:16",1,FALSE);
INSERT INTO oorder VALUES(6014,"1573466537",160,"shayulajiao",9014,"productpic.jpg","横沙岛 岛上1121民宿","上海","2019-11-11 18:02:17","2019-11-12 18:02:17",1,TRUE);
INSERT INTO oorder VALUES(6015,"1573552938",190,"fengjian",9015,"productpic.jpg","zoe的微栈","上海","2019-11-12 18:02:18","2019-11-13 18:02:18",1,TRUE);
INSERT INTO oorder VALUES(6016,"1548237739",188,"zhanglangeba",9016,"productpic.jpg","知谷1984","上海","2019-01-23 18:02:19","2019-01-24 18:02:19",1,TRUE);
INSERT INTO oorder VALUES(6017,"1573639340",299,"xiezilailai",9017,"productpic.jpg","City Centre陆家嘴","上海","2019-11-13 18:02:20","2019-11-14 18:02:20",1,TRUE);
INSERT INTO oorder VALUES(6018,"1573725741",260,"zhizhuzhentan",9018,"productpic.jpg","向荣花里","成都","2019-11-14 18:02:21","2019-11-15 18:02:21",1,TRUE);
INSERT INTO oorder VALUES(6019,"1548324142",310,"shayulajiao",9019,"productpic.jpg","sun gold holiday","成都","2019-01-24 18:02:22","2019-01-25 18:02:22",1,FALSE);
INSERT INTO oorder VALUES(6020,"1573812143",600,"fengjian",9020,"productpic.jpg","春熙路太古里宽窄巷子","成都","2019-11-15 18:02:23","2019-11-17 18:02:23",2,FALSE);
INSERT INTO oorder VALUES(6021,"1573898544",480,"zhanglangeba",9021,"productpic.jpg","市中心小清新","成都","2019-11-16 18:02:24","2019-11-18 18:02:24",2,TRUE);
INSERT INTO oorder VALUES(6022,"1548410545",700,"xiezilailai",9022,"productpic.jpg","歌今•倦栖|春熙路特色投影Loft公寓","成都","2019-01-25 18:02:25","2019-01-27 18:02:25",2,TRUE);
INSERT INTO oorder VALUES(6023,"1573984946",650,"zhizhuzhentan",9009,"productpic.jpg","温馨鱼塘","上海","2019-11-17 18:02:26","2019-11-19 18:02:26",2,TRUE);
INSERT INTO oorder VALUES(6024,"1574071347",380,"shayulajiao",9014,"productpic.jpg","横沙岛 岛上1121民宿","上海","2019-11-18 18:02:27","2019-11-20 18:02:27",2,TRUE);
INSERT INTO oorder VALUES(6025,"1548496948",490,"fengjian",9004,"productpic.jpg","近政法石油MissHOME日式禅意大床房","北京","2019-01-26 18:02:28","2019-01-28 18:02:28",2,TRUE);


-- 创建商品表
DROP TABLE IF EXISTS home;
CREATE TABLE `home` (
  `hid` int NOT NULL PRIMARY KEY COMMENT '民宿的主键id',
  `htitle` varchar(255) NOT NULL COMMENT '民宿的标题',
  `hcity` char(30) NOT NULL COMMENT '市',
  `haddress` varchar(255) NOT NULL COMMENT '民宿的具体地址',
  `hphone` BIGINT NOT NULL COMMENT '民宿的联系方式',
  `htype` varchar(25) NOT NULL COMMENT '民宿的类型',
  `himg` text NOT NULL COMMENT '民宿的图片地址',
  `hdetail` text NOT NULL COMMENT '民宿相关描述',
  `hkeywords` varchar(50) NOT NULL COMMENT '搜索民宿用的关键字',
  `isOnseal` boolean,
  `roomnumber` INT NOT NULL COMMENT '房间数',
  `hprice` float(5,2) NOT NULL COMMENT '价格'
);





INSERT INTO home VALUES(9001,"泰莲庭藏幽山水境民宿","北京","建国门建华南路15号",13125316755,"复式","9001home01.jpg-9001home02.jpg-9001home03.jpg","悠然山居（精品民宿）位于密云捧河湾景区旁，背山面水，自然环境得天独厚。设计感极强的客房，贴近大自然的客人休闲区，亲子儿童区等等，民宿主人倾心为客人打造一种独特生活方式！\n山居占地100余亩，一期开发20余亩，由4栋别墅组成。1独栋（4间客房，超五星配置，整租价格2580元每晚），3联排（每栋8间客房，每间客房设计不同，整租价格1560元每晚）\n有山、有水、无雾霾！！是朋友聚会、家庭出游的最佳选择!密云捧河湾悠然山居北京密云区悠然山居精品民宿农园农园民宿","长租-约会-家庭",TRUE,23,258.99);
INSERT INTO home VALUES(9002,"怀柔青龙峡|ins风","北京","密云石城镇捧河湾景区旁",13178566987,"四合院","9002home01.jpg-9002home02.jpg-9002home03.jpg","我家的房子是loft复式两居室户型,楼下客厅和厨房,楼上是两个卧室和洗澡间,宜居4人(一个房间一张1.8X2m的豪华舒适的大双人床,另一房间是一张豪华舒适的1.5x2m的双人床),超舒适高级床垫,(如房客需加人入住,可住沙发床每位加50元最多加2人)品牌家具家电,纯棉高档床品(干净亲肤)｡\n液晶电视配网络电视盒､冰箱､洗衣机､空调､吹风机等电器,24小时热水,20M无线网络,厨房可做饭(做饭后各种餐具部件洗刷干净后放到原位),锅碗瓢盆及基本的餐具都齐备,食材及调味料需自备,有部分基本的调味料｡","长租-约会-家庭",TRUE,5,325);
INSERT INTO home VALUES(9003,"园里十八台","北京","朝阳区建国门建华南路15号",18769055510,"复式","9003home01.jpg-9003home02.jpg-9003home03.jpg","小院位于北京城腹恭王府旁边，步行2-3分钟即可到达恭王府或北海公园，穿过北海公园，便是故宫。选择人力车畅游北京胡同；步行7-8分钟即可到达后海（什刹海），夜幕降临时，可在后海享受徐来晚风及感受喧闹的酒吧氛围，小酒酣畅后，闲庭散步间即可回到小院；步行20分钟左右即可到达南锣鼓巷。距离小院2分钟脚程的北京地铁6号线可以方便换乘至北京主要地铁线路。在这里您可以感受多维的城市空间，老北京的四合院，个性酒吧。传统与时尚的完美结合。小院共三套房间，共享一个小院及露台，在喧嚣的现代生活节奏中独享一份宁静。每套房间装修风格不同，均为LOFT房型，每间有独立卫生间。De院北京西城区艺术文化艺术文化个性传统与时尚","长租-约会-家庭",TRUE,4,319);
INSERT INTO home VALUES(9004,"近政法石油MissHOME日式禅意大床房","北京","西城区龙头井胡同25号",13769876654,"公寓","9004home01.jpg-9004home02.jpg-9004home03.jpg","小院位于北京城腹恭王府旁边，步行2-3分钟即可到达恭王府或北海公园，穿过北海公园，便是故宫。选择人力车畅游北京胡同；步行7-8分钟即可到达后海（什刹海），夜幕降临时，可在后海享受徐来晚风及感受喧闹的酒吧氛围，小酒酣畅后，闲庭散步间即可回到小院；步行20分钟左右即可到达南锣鼓巷。距离小院2分钟脚程的北京地铁6号线可以方便换乘至北京主要地铁线路。在这里您可以感受多维的城市空间，老北京的四合院，个性酒吧。传统与时尚的完美结合。小院共三套房间，共享一个小院及露台，在喧嚣的现代生活节奏中独享一份宁静。每套房间装修风格不同，均为LOFT房型，每间有独立卫生间。De院北京西城区艺术文化艺术文化个性传统与时尚","长租-约会-家庭",TRUE,12,260);
INSERT INTO home VALUES(9005,"故宫天海门后海","北京","朝阳区建国门建华南路15号",13178569961,"四合院","9005home01.jpg-9005home02.jpg-9005home03.jpg","山里寒舍距离北京108公里，隐藏在京城东北部的密云北庄一座与自然共生的小山村里。天高云淡、山色葱葱，内敛低调、沉稳平静，来到这里，人们会不自觉的放慢脚步，平缓呼吸，放下一切的欲望与奢求，让自己融入这宁静、安详的山里之中。\n这个高端生态旅游项目于2013年4月开始兴建，当年8月一期建设基本完工并进入试营业阶段。仅仅用了几个月时间，通过将土地流转起来、资产经营起来、农民组织起来，就将北庄镇干峪沟这个昔日常住仅十几口人、逐渐破败的“空心村”，变身为一家乡村酒店。现可提供30套院落供居住，中餐厅、咖餐厅、泳池、庞巴迪等配套设施日趋完善。由于山里寒舍项目的开发，古老的干峪沟村焕发了新的活力，还被农业部评为2014年“中国最美休闲乡村","约会",TRUE,4,189);
INSERT INTO home VALUES(9006,"慕田峪|三卅精品民宿","北京","密云石城镇捧河湾景区旁",14613621997.1,"四合院","9006home01.jpg-9006home02.jpg-9006home03.jpg","山里寒舍距离北京108公里，隐藏在京城东北部的密云北庄一座与自然共生的小山村里。天高云淡、山色葱葱，内敛低调、沉稳平静，来到这里，人们会不自觉的放慢脚步，平缓呼吸，放下一切的欲望与奢求，让自己融入这宁静、安详的山里之中。\n这个高端生态旅游项目于2013年4月开始兴建，当年8月一期建设基本完工并进入试营业阶段。仅仅用了几个月时间，通过将土地流转起来、资产经营起来、农民组织起来，就将北庄镇干峪沟这个昔日常住仅十几口人、逐渐破败的“空心村”，变身为一家乡村酒店。现可提供30套院落供居住，中餐厅、咖餐厅、泳池、庞巴迪等配套设施日趋完善。由于山里寒舍项目的开发，古老的干峪沟村焕发了新的活力，还被农业部评为2014年“中国最美休闲乡村","约会",TRUE,5,196);
INSERT INTO home VALUES(9007,"仙女屋•精致少女/婚纱复式","北京","北庄镇干峪沟村山里寒舍",14683403605,"公寓","9007home01.jpg-9007home02.jpg-9007home03.jpg","我家的房子是loft复式两居室户型,楼下客厅和厨房,楼上是两个卧室和洗澡间,宜居4人(一个房间一张1.8X2m的豪华舒适的大双人床,另一房间是一张豪华舒适的1.5x2m的双人床),超舒适高级床垫,(如房客需加人入住,可住沙发床每位加50元最多加2人)品牌家具家电,纯棉高档床品(干净亲肤)｡\n液晶电视配网络电视盒､冰箱､洗衣机､空调､吹风机等电器,24小时热水,20M无线网络,厨房可做饭(做饭后各种餐具部件洗刷干净后放到原位),锅碗瓢盆及基本的餐具都齐备,食材及调味料需自备,有部分基本的调味料｡","约会",TRUE,8,145);
INSERT INTO home VALUES(9008,"南京路步行街","上海","浦东新区康桥镇秀沿路地铁站环桥路1137弄26号",14753185212.9,"复式","9008home01.jpg-9008home02.jpg-9008home03.jpg","地处上海浦东11号线秀沿路地铁站正对面，小区离秀沿路地铁站仅100M,是您游玩迪斯尼的理想之选！到迪斯尼仅2站8分钟即达住屋精心装修自住标准，三房两卫，房东自主经营，干净整洁：墙面选自正规商场百安居立邦高端金装五合一漆（1桶1000+！）；房间纯实木地板；每个房间带大窗户以及天窗；房间内床垫为宜家独立弹簧高级床垫两个卫生间toto马桶以及科勒马桶。因为自身也是二个宝宝的妈妈所以都选用了对自家宝贝安全的材料装修欢迎您带着孩子前来体验,zoe的微栈客栈上海浦东新区迪士尼","约会",TRUE,15,260);
INSERT INTO home VALUES(9009,"温馨鱼塘","上海","奉贤区海马路5702号",14822966820.8,"公寓","9009home01.jpg-9009home02.jpg-9009home03.jpg","合舍—一个感受温馨舒适的家位于上海浦东新区川沙新镇砖桥村，距迪斯尼乐园10分钟路程。离2号线地铁站约为5公里、离迪斯尼小镇、奕欧来购物中心、大型购物超市、野生动物园都很近。地理环境优越，交通便利。合舍为别墅单间类型，对于空气、饮水、客房用品的品质十分注重。客房配有星级酒店的床品，全新的电器设备和全套的科勒洁具、高速无线网络电视，大金中央空调，设备齐全的厨房，别具风格的咖吧；进出方便、独立院门、私密性佳。并有超大的停车场可供客人停用车辆，也可提供客人有偿的接送服务，免去客人自驾去迪斯尼后往返乐园与停车场之间走路带来的劳累，并在经济上相对来说也更加实惠。并提供客人烧烤、棋牌等公共娱乐区域、还有迪斯尼门票及周边各景点门票的预订服务、早餐以及订晚餐服务。不管你多么疲惫和劳累，只要你来到合舍，静静地喝上一杯咖啡，翻上几页喜欢的书，三两好友聊聊人生；安静地享受这世外桃源般的静溢时光，一下子能让你找到回家的感觉。在这里你不是客人、而是归人；合舍就是你的家，在这里等你回家。","家庭-长租",TRUE,5,330);
INSERT INTO home VALUES(9010,"北欧风南京路步行街","上海","浦东新区康桥镇秀沿路地铁站环桥路1137弄26号",14892748428.7,"公寓","9010home01.jpg-9010home02.jpg-9010home03.jpg","上海锦上云宿精品酒店地处上海市浦东新区核心商圈陆家嘴，浦东大道和东方路的黄金交界处。周边有众多餐饮、娱乐设施、医院、银行等基础设施，距离东方明珠不到两公里的距离，离黄浦江岸不到500米的距离，紧挨着地铁四号线以及即将开通的14号线，在及其便捷的交通条件依托下，无论办公、运动、娱乐均不误。\n上海锦上云宿精品酒店，以全浦东唯一仅存的民国老宅为载体，中西合并式的整体装修风格，再以中国传统手工艺为元素，为原本浓厚的历史背景下，使整个传统文化结合新时代得以永续流动，赋予新生命以灵魂。整个酒店公共区域占很大比重，餐厅、吧台、私人庭院、茶室、会议室、多功能书吧为举办各小型聚会，公司会议，宾客接待，私人派对留足空间，自由灵动和隐秘豪华是这些空间的当仁不让的骄傲，配上独有的管家服务，使一趟体验物超所值。\n酒店为此获得了金口碑颁发的社交之选称号。\n十年洋场的繁华，等你重新来揭开！","家庭-长租",TRUE,3,450);
INSERT INTO home VALUES(9011,"步行外滩南京东路","上海","奉贤区海马路5702号",14962530036.6,"复式","9011home01.jpg-9011home02.jpg-9011home03.jpg","合舍—一个感受温馨舒适的家位于上海浦东新区川沙新镇砖桥村，距迪斯尼乐园10分钟路程。离2号线地铁站约为5公里、离迪斯尼小镇、奕欧来购物中心、大型购物超市、野生动物园都很近。地理环境优越，交通便利。合舍为别墅单间类型，对于空气、饮水、客房用品的品质十分注重。客房配有星级酒店的床品，全新的电器设备和全套的科勒洁具、高速无线网络电视，大金中央空调，设备齐全的厨房，别具风格的咖吧；进出方便、独立院门、私密性佳。并有超大的停车场可供客人停用车辆，也可提供客人有偿的接送服务，免去客人自驾去迪斯尼后往返乐园与停车场之间走路带来的劳累，并在经济上相对来说也更加实惠。并提供客人烧烤、棋牌等公共娱乐区域、还有迪斯尼门票及周边各景点门票的预订服务、早餐以及订晚餐服务。不管你多么疲惫和劳累，只要你来到合舍，静静地喝上一杯咖啡，翻上几页喜欢的书，三两好友聊聊人生；安静地享受这世外桃源般的静溢时光，一下子能让你找到回家的感觉。在这里你不是客人、而是归人；合舍就是你的家，在这里等你回家。","家庭-长租",TRUE,7,460);
INSERT INTO home VALUES(9012,"上海浦东新区合舍民宿","上海","浦东新区东方路121-1号",15032311644.5,"公寓","9012home01.jpg-9012home02.jpg-9012home03.jpg","地处上海浦东11号线秀沿路地铁站正对面，小区离秀沿路地铁站仅100M,是您游玩迪斯尼的理想之选！到迪斯尼仅2站8分钟即达住屋精心装修自住标准，三房两卫，房东自主经营，干净整洁：墙面选自正规商场百安居立邦高端金装五合一漆（1桶1000+！）；房间纯实木地板；每个房间带大窗户以及天窗；房间内床垫为宜家独立弹簧高级床垫两个卫生间toto马桶以及科勒马桶。因为自身也是二个宝宝的妈妈所以都选用了对自家宝贝安全的材料装修欢迎您带着孩子前来体验,zoe的微栈客栈上海浦东新区迪士尼","家庭-长租",TRUE,6,456);
INSERT INTO home VALUES(9013,"艺术客栈——体验艺术家生活","上海","浦东新区南六公路",15102093252.4,"公寓","9013home01.jpg-9013home02.jpg-9013home03.jpg","欢迎您的到来！文艺客栈内部全部由知名艺术家原创艺术作品装点。家具以及装置艺术全部由知名艺术家设计打造。四周绿色系墙面的围绕仿似生活在森林里。住屋内设施完善：50兆光纤wifi，空调，电视，独立卫浴，茶桌，沙发等一应俱全。此外，房间内含有一组专业油画画架，充足的颜料，可以安静的在房间里完成一幅属于自己的油画作品。此外，客栈提供免费自行车租赁服务，可踩上一部脚踏车到海边，享受生活的惬意。客栈提供免费自行车租赁服务，可踩上一部脚踏车到海边，享受生活的惬意。\n客栈提供付费全上海城区接送服务，保证安心出行。\n公共交通：莘海线、海航线、海沈线、南桥9路、南靶线、自驾、自行车。\n自驾线路：①浦星公路-人民塘路-奉炮公路-海马路②S4海湾路出口下向南至海马路左转③虹梅路隧道-金海路-奉炮公路-海马路房源近海边旅游区内,海马路艺术风情街上,附近有碧海金沙、渔人码头、棕榈滩高尔夫、松声马术、东海观音寺等。这里有上海最清新的空气、最美的蓝天以及最有情怀的文艺派。还缺的，就是最有情怀的你。\n附近生活配套设施齐全：超市、农行、海鲜大排档、海湾医院等信步可达","家庭-长租",TRUE,8,125);
INSERT INTO home VALUES(9014,"横沙岛岛上1121民宿","上海","浦东新区东方路121-1号",15171874860.3,"复式","9014home01.jpg-9014home02.jpg-9014home03.jpg","合舍—一个感受温馨舒适的家位于上海浦东新区川沙新镇砖桥村，距迪斯尼乐园10分钟路程。离2号线地铁站约为5公里、离迪斯尼小镇、奕欧来购物中心、大型购物超市、野生动物园都很近。地理环境优越，交通便利。合舍为别墅单间类型，对于空气、饮水、客房用品的品质十分注重。客房配有星级酒店的床品，全新的电器设备和全套的科勒洁具、高速无线网络电视，大金中央空调，设备齐全的厨房，别具风格的咖吧；进出方便、独立院门、私密性佳。并有超大的停车场可供客人停用车辆，也可提供客人有偿的接送服务，免去客人自驾去迪斯尼后往返乐园与停车场之间走路带来的劳累，并在经济上相对来说也更加实惠。并提供客人烧烤、棋牌等公共娱乐区域、还有迪斯尼门票及周边各景点门票的预订服务、早餐以及订晚餐服务。不管你多么疲惫和劳累，只要你来到合舍，静静地喝上一杯咖啡，翻上几页喜欢的书，三两好友聊聊人生；安静地享受这世外桃源般的静溢时光，一下子能让你找到回家的感觉。在这里你不是客人、而是归人；合舍就是你的家，在这里等你回家。","家庭-长租",TRUE,7,160);
INSERT INTO home VALUES(9015,"zoe的微栈","上海","浦东新区东方路121-1号",15241656468.2,"公寓","9015home01.jpg-9015home02.jpg-9015home03.jpg","上海锦上云宿精品酒店地处上海市浦东新区核心商圈陆家嘴，浦东大道和东方路的黄金交界处。周边有众多餐饮、娱乐设施、医院、银行等基础设施，距离东方明珠不到两公里的距离，离黄浦江岸不到500米的距离，紧挨着地铁四号线以及即将开通的14号线，在及其便捷的交通条件依托下，无论办公、运动、娱乐均不误。\n上海锦上云宿精品酒店，以全浦东唯一仅存的民国老宅为载体，中西合并式的整体装修风格，再以中国传统手工艺为元素，为原本浓厚的历史背景下，使整个传统文化结合新时代得以永续流动，赋予新生命以灵魂。整个酒店公共区域占很大比重，餐厅、吧台、私人庭院、茶室、会议室、多功能书吧为举办各小型聚会，公司会议，宾客接待，私人派对留足空间，自由灵动和隐秘豪华是这些空间的当仁不让的骄傲，配上独有的管家服务，使一趟体验物超所值。\n酒店为此获得了金口碑颁发的社交之选称号。\n十年洋场的繁华，等你重新来揭开！","家庭-长租",TRUE,5,190);
INSERT INTO home VALUES(9016,"知谷1984","上海","奉贤区海马路5702号",15311438076.1,"公寓","9016home01.jpg-9016home02.jpg-9016home03.jpg","地处上海浦东11号线秀沿路地铁站正对面，小区离秀沿路地铁站仅100M,是您游玩迪斯尼的理想之选！到迪斯尼仅2站8分钟即达住屋精心装修自住标准，三房两卫，房东自主经营，干净整洁：墙面选自正规商场百安居立邦高端金装五合一漆（1桶1000+！）；房间纯实木地板；每个房间带大窗户以及天窗；房间内床垫为宜家独立弹簧高级床垫两个卫生间toto马桶以及科勒马桶。因为自身也是二个宝宝的妈妈所以都选用了对自家宝贝安全的材料装修欢迎您带着孩子前来体验,zoe的微栈客栈上海浦东新区迪士尼","家庭-长租",TRUE,4,188);
INSERT INTO home VALUES(9017,"CityCentre陆家嘴","上海","浦东新区东方路121-1号",15381219684,"复式","9017home01.jpg-9017home02.jpg-9017home03.jpg","欢迎您的到来！文艺客栈内部全部由知名艺术家原创艺术作品装点。家具以及装置艺术全部由知名艺术家设计打造。四周绿色系墙面的围绕仿似生活在森林里。住屋内设施完善：50兆光纤wifi，空调，电视，独立卫浴，茶桌，沙发等一应俱全。此外，房间内含有一组专业油画画架，充足的颜料，可以安静的在房间里完成一幅属于自己的油画作品。此外，客栈提供免费自行车租赁服务，可踩上一部脚踏车到海边，享受生活的惬意。客栈提供免费自行车租赁服务，可踩上一部脚踏车到海边，享受生活的惬意。\n客栈提供付费全上海城区接送服务，保证安心出行。\n公共交通：莘海线、海航线、海沈线、南桥9路、南靶线、自驾、自行车。\n自驾线路：①浦星公路-人民塘路-奉炮公路-海马路②S4海湾路出口下向南至海马路左转③虹梅路隧道-金海路-奉炮公路-海马路房源近海边旅游区内,海马路艺术风情街上,附近有碧海金沙、渔人码头、棕榈滩高尔夫、松声马术、东海观音寺等。这里有上海最清新的空气、最美的蓝天以及最有情怀的文艺派。还缺的，就是最有情怀的你。\n附近生活配套设施齐全：超市、农行、海鲜大排档、海湾医院等信步可达","家庭-长租",TRUE,7,299);
INSERT INTO home VALUES(9018,"向荣花里","成都","天马镇向荣村向荣花里",15451001291.9,"公寓","9018home01.jpg-9018home02.jpg-9018home03.jpg","向荣花里，位于都江堰市天马镇向荣村二组柏条河畔。一个集亲子农耕体验、自然农村民宿生活、原生态食品生产配送以及户外休闲运动于一体的基地，目前有特色民宿、定制餐饮、蔬菜配送、亲子活动、户外拓展等等单纯而丰富。\n“曲径通幽处，禅房花木深”，通过一条蜿蜒的小径，便能寻到“向荣花里”这一幽处，花香在露珠的翻滚中迎面而来，身在此处，心瞬间就平静许多，浮躁随着喧嚣一并消失。院里风光旖旎，充满田园气息，青藤沿着木质住屋盘旋而上，茶具、棋盘、琴台……在后院的各个角落等待着“主人”的到来。再来看看房间，古色古香，大床房、Wifi、天窗、吊灯，古今融合，温馨舒适。这里的美食，精致的简直让人舍不得动箸。在向荣花里不仅可以赏荷塘看夜色，还可以垂钓体验生态农耕区，过一把农民味的生活，体验一次真真正的乡村之人。","家庭-长租",TRUE,5,260);
INSERT INTO home VALUES(9019,"sungoldholiday","成都","锦江区大慈寺路3号",15520782899.8,"公寓","9019home01.jpg-9019home02.jpg-9019home03.jpg","向荣花里，位于都江堰市天马镇向荣村二组柏条河畔。一个集亲子农耕体验、自然农村民宿生活、原生态食品生产配送以及户外休闲运动于一体的基地，目前有特色民宿、定制餐饮、蔬菜配送、亲子活动、户外拓展等等单纯而丰富。\n“曲径通幽处，禅房花木深”，通过一条蜿蜒的小径，便能寻到“向荣花里”这一幽处，花香在露珠的翻滚中迎面而来，身在此处，心瞬间就平静许多，浮躁随着喧嚣一并消失。院里风光旖旎，充满田园气息，青藤沿着木质住屋盘旋而上，茶具、棋盘、琴台……在后院的各个角落等待着“主人”的到来。再来看看房间，古色古香，大床房、Wifi、天窗、吊灯，古今融合，温馨舒适。这里的美食，精致的简直让人舍不得动箸。在向荣花里不仅可以赏荷塘看夜色，还可以垂钓体验生态农耕区，过一把农民味的生活，体验一次真真正的乡村之人。","家庭-长租",TRUE,9,310);
INSERT INTO home VALUES(9020,"春熙路太古里宽窄巷子","成都","锦江区大慈寺路3号",15590564507.7,"复式","9020home01.jpg-9020home02.jpg-9020home03.jpg","位于成都的市中心春熙路、大慈寺太古里旁边的51层现代时尚的大厦，房间均为90平米套房户型，城市全景玻璃大飘窗，一览天际线。公寓装修考究，室内设施均为国际顶尖品牌。整洁的厨房可供大展厨艺。\n\n享有完美的位置，毗邻豪华的远洋太古里和IFS，距离热闹的春熙路只有5分钟的步行路程。自助式住所提供免费无线网络连接。\n\n步行至地铁2号线春熙路站或东门大桥站仅需不行10分钟。距离天府广场和四川地方特色的宽窄巷子有10分钟的出租车车程，距离锦里古街和武侯祠只有15分钟的出租车车程，距离成都双流国际机场有40分钟车程。\n\n无须繁琐的入住手续，凭密码进入房间。房间装修风格各异，有典雅的欧式，干练的美式，全实木的日式和简洁的现代风。这里就是您的家。","家庭",TRUE,8,600);
INSERT INTO home VALUES(9021,"市中心小清新","成都","锦江区大慈寺路3号",15660346115.6,"公寓","9021home01.jpg-9021home02.jpg-9021home03.jpg","位于成都的市中心春熙路、大慈寺太古里旁边的51层现代时尚的大厦，房间均为90平米套房户型，城市全景玻璃大飘窗，一览天际线。公寓装修考究，室内设施均为国际顶尖品牌。整洁的厨房可供大展厨艺。\n\n享有完美的位置，毗邻豪华的远洋太古里和IFS，距离热闹的春熙路只有5分钟的步行路程。自助式住所提供免费无线网络连接。\n\n步行至地铁2号线春熙路站或东门大桥站仅需不行10分钟。距离天府广场和四川地方特色的宽窄巷子有10分钟的出租车车程，距离锦里古街和武侯祠只有15分钟的出租车车程，距离成都双流国际机场有40分钟车程。\n\n无须繁琐的入住手续，凭密码进入房间。房间装修风格各异，有典雅的欧式，干练的美式，全实木的日式和简洁的现代风。这里就是您的家","家庭",TRUE,7,480);
INSERT INTO home VALUES(9022,"歌今•倦栖|春熙路特色投影Loft公寓","成都","成都市锦江区大慈寺路3号",15730127723.5,"公寓","9022home01.jpg-9022home02.jpg-9022home03.jpg","位于成都的市中心春熙路、大慈寺太古里旁边的51层现代时尚的大厦，房间均为90平米套房户型，城市全景玻璃大飘窗，一览天际线。公寓装修考究，室内设施均为国际顶尖品牌。整洁的厨房可供大展厨艺。\n\n享有完美的位置，毗邻豪华的远洋太古里和IFS，距离热闹的春熙路只有5分钟的步行路程。自助式住所提供免费无线网络连接。\n\n步行至地铁2号线春熙路站或东门大桥站仅需不行10分钟。距离天府广场和四川地方特色的宽窄巷子有10分钟的出租车车程，距离锦里古街和武侯祠只有15分钟的出租车车程，距离成都双流国际机场有40分钟车程。\n\n无须繁琐的入住手续，凭密码进入房间。房间装修风格各异，有典雅的欧式，干练的美式，全实木的日式和简洁的现代风。这里就是您的家。","家庭",TRUE,8,700);

