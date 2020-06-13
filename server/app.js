 //模块引入
//引入express模块
const express = require('express');
//加载cors模块
const cors = require("cors");
// 加载bodyparser
const bodyParser=require('body-parser');
// 引入md5模块
const md5=require('md5');
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
//使用cors
server.use(cors({
  origin:['http://localhost:8080','http://192.168.1.33:8080','http://127.0.0.1:8080']
}));

// 使用body-parser组件
server.use(bodyParser.urlencoded({
  extended:false
}))


//设置路由
//测试路由

server.get('/a',(req,res)=>{
  res.send({
    message:'查询成功',code:200
  })
});

//用户注册API
server.post('/registers',(req,res)=>{
  //获取用户注册的信息
  var username=req.body.username;
  var password=req.body.password;

  // 先查询用户名是否存在，如果不存在就写入数据，否则返回错误给客户端。
  var sql="SELECT COUNT(id) AS count FROM user WHERE username=?";
   
  pool.query(sql,[username],(err,results)=>{
    if(err) throw err;
    if(results[0].count == 1){
      res.send({message:'注册失败',code:201})
    }else{
      sql='INSERT user(username,password) VALUES (?,?)';
      pool.query(sql,[username,password],(err,results)=>{
        if(err) throw err;
        res.send({message:'注册成功',code:200})
      })
    }
  })


  

})

// 登录路由
server.post('/login',(req,res)=>{
  // 获取用户输入的信息
  var username = req.body.username;
  var password = req.body.password;
  // slq语句
  var sql="SELECT id, username,nickname,avatar, realname,phone  FROM user WHERE username=? AND password=?";
  pool.query(sql,[username,password],(err,results)=>{
    if(err) throw err;
    if(results.length == 0){
      res.send({message:'登陆失败',code:202})
    }else{
      res.send({message:'登入成功',code:200,info:results[0]})
    }
    // console.log(results)
  })
})


  //创建监听端口
server.listen(3000);