DROP DATABASE IF EXISTS hmc;

-- 创建数据库hmc
CREATE DATABASE IF NOT EXISTS hmc DEFAULT CHARACTER SET 'utf8';

USE 'hmc';

DROP TABLE IF EXISTS user;

-- 创建用户信息表
create table user(
  id INT NOT NULL AUTO_INCREMENT COMMENT '用户id，主键自增',
  username varchar(32) NOT NULL COMMENT '用户名，登录凭证不能为空',
  password varchar(32) NOT NULL COMMENT '密码，MD5',
  nickname varchar(30)  DEFAULT NULL  COMMENT '昵称，用户自己设置',
  avatar mediumint(9) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  realname varchar(8) NOT NULL DEFAULT '游客' COMMENT '用户真实姓名',
  phone bigint DEFAULT NULL COMMENT '手机号，预定房间要用',

  PRIMARY KEY (`id`),
  UNIQUE KEY "username"
)

INSERT INTO "user" ("id",'username','password','nickname','phone') VALUES(001,'zhanglangeba','123456789','蟑螂恶霸',15789512648)
INSERT INTO "user" ("id",'username','password','nickname','phone') VALUES(002,'shayulajiao','123456789','鲨鱼辣椒',15518145698)
INSERT INTO "user" ("id",'username','password','nickname','phone') VALUES(003,'zhizhuzhentan','123456789','蜘蛛侦探',13615489456)
INSERT INTO "user" ("id",'username','password','nickname','phone') VALUES(004,'xiezilailai','123456789','蝎子莱莱',15299461587)
INSERT INTO "user" ("id",'username','password','nickname','phone') VALUES(005,'fengjian','123456789','风间',15778945612)


