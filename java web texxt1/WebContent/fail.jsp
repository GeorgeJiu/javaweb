<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>失败界面</title>
<script type="text/javascript">
    var sec = 3;
    function jump(){
        sec--;
        if(sec > 0){
            document.getElementById('remainSeconds').innerHTML = sec;
            setTimeout(this.jump,1000);
        }else{
            window.location.href = 'login.jsp';
        }
    }
    setTimeout(jump,1000);
</script>
</head>
<style type="text/css">
 .div1{
            width: 1500px;
            height: 700px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;     
        }
 </style>
<body>
<body  background = "img/jy.jpg">
 <div class="div1"> <h1><font color=red>用户名或密码输入错误</font ></h1>
<span id="remainSeconds">3</span>秒后返回登录界面
</div></body>
</html>
