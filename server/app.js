        //模块引入
//引入express模块
const express = require('express');
//加载cors模块
const cors = require("cors");
// 加载bodyparser
const bodyParser=require('body-parser');
// 引入md5模块
//const md5=require('md5');
//加载mysql模块
const mysql=require('mysql');



	//创建服务器
//创建mysql连接池
const pool=mysql.createPool({
      host:'127.0.0.1',
      port:'3306',
      user:'root',
      password:'',
      database:"hmc"
});
//创建express
const server = express();

// 使用body-parser组件
server.use(bodyParser.urlencoded({
  extended:false
}))

//使用cors
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080','http://192.168.1.33:8080/']
}));

//设置路由


  //创建监听端口
server.listen(3000);