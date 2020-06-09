        //ģ������
//����expressģ��
const express = require('express');
//����corsģ��
const cors = require("cors");
// ����bodyparser
const bodyParser=require('body-parser');
// ����md5ģ��
//const md5=require('md5');
//����mysqlģ��
const mysql=require('mysql');



	//����������
//����mysql���ӳ�
const pool=mysql.createPool({
      host:'127.0.0.1',
      port:'3306',
      user:'root',
      password:'',
      database:"hmc"
});
//����express
const server = express();

// ʹ��body-parser���
server.use(bodyParser.urlencoded({
  extended:false
}))

//ʹ��cors
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080','http://192.168.1.33:8080/']
}));

//����·��


  //���������˿�
server.listen(3000);