<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="UTF-8" />

<title>注册</title>





<link

     href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"

     rel="stylesheet" />

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript">
    function reImg() {
        var img = document.getElementById("Img");
        img.src = "image.jsp?code=" + Math.random();
    }
</script>

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<script  type="text/javascript" src="../js/index.js"></script>

<style type="text/css">
/*设置整体*/

	*{
		
		padding: 0;

		margin: 0 auto;

		font-family: "微软雅黑";	

	}

	/*设置header的div区*/

	.header{

		height: 72px ;

    	background:transparent ;

	}

	/*设置logo的div区*/

	.header .logo{

		color: #fff ;

		font-size: 30px ;

		font-weight:500 ;

    	line-height: 72px ;

    	margin-left: 20px ;

    	display:inline-block ;

    	float: left ;/*左浮动*/

	}

	/*设置li标签里*/

	.header ul li{

		float: left ;

		color: #fff ;

    	display: inline-block ;

    	width: 112px ;

    	height: 72px ; 

    	text-align: center ;

    	line-height:72px ;

    	cursor: pointer ;/*光标显示成小手型*/

	}

	/*细节调整*/

	ul li{

		list-style: none ;/*li的小圆点去掉*/

	}

	.header ul li.first{

		margin-left: 30px ;/*设置“首页”与“原创文字”间距*/

    	background:transparent;/*“首页”设置默认背景*/

	}

	

	/*设置a链接标签*/

	a{

		color:black;

    	text-decoration: none ;

	}

	/*设置导航添加hover事件*/

	.header ul li:hover{

		 background:#74b0e2 ;

	}

	/*设置登录、注册按钮*/

	.header .login{

		float: right ; 

    	color: #fff ;

    	line-height: 72px ;

    	margin-right: 20px ;

	}
	.h3{
		display: inline-block; /* 把父元素转化为行内块状元素 */

	/*float: left; 把父元素转化为行内块状元素 */

	position: relative;

	left: 45%;
	 
	}

</style>


 

</head>

<div class="header">

		<div class='logo'>导航栏</div>

		<ul>

			<li class="first"><a href="javascript:void(0)">首页</a></li>

			<li><a href="javascript:void(0)">新番列表</a></li>

			<li><a  href="javascript:void(0)">番剧推荐</a></li>

		</ul>

		<div class="login">

		<span><a href="login.jsp">登陆</a></span>  

    	<span>|</span> 

    	<span><a href="register.jsp">注册</a></span>

		</div>

	</div>



	



<body background="img/wbq.jpg">

	
	
	
	
     <form id="form1" action="registerServlet" method="post" class="well"

          style="width: 30em; margin: auto; margin-top: 150px;">

       <span class="h3"> 注册 </span> 

          <div class=" input-group input-group-md">

              <span class="input-group-addon" id="sizing-addon1"><i

                   class="glyphicon glyphicon-user" ></i></span> 

                   <input  type="text"  name="username" class="form-control" placeholder="用户名" />

                   

          </div>

          <br />

          <div class="input-group input-group-md">

              <span class="input-group-addon" id="sizing-addon1"><i

                   class="glyphicon glyphicon-lock"></i></span>

                    <input type="password" name="password" class="form-control" placeholder="密码" />

          </div>
          
          <br/>
          
          <div class="input-group input-group-md">

              <span class="input-group-addon" id="sizing-addon1"><i

                   class="glyphicon glyphicon-lock"></i></span>

                    <input type="password"name="Cpassword" class="form-control" placeholder="确认密码" />
          
          
          </div>
          <br/>
          <div class="input-group input-group-md">

              <span class="input-group-addon" id="sizing-addon1"><i

                   class="glyphicon glyphicon-envelope"></i></span>

                    <input type="text"  name="mail"  class="form-control" placeholder="邮箱" />
          
          
          </div>
          <br>
          <div class="input-group input-group-md">

                    <input type="text" name="inputcode"  placeholder="验证码" />
                 	<img border=0 id="Img" src="image.jsp" alt="验证码">
        			<a  href="#" onclick="reImg();">看不清楚，换一个？</a>
          
          </div>
          
          
          <br/>

          <button type="submit" id="bn" class="btn btn-success btn-block">注册</button>

		  <a class="btn btn-sm btn-black btn-block" style="text-align: right;" href="login.jsp">已有账户？前往登录</a>

     </form>

  </body>			 			 

</html>
