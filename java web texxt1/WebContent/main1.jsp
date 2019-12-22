<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>主界面</title>
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

		color:#FFF;

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

		color:white;

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


</style>

<style>
.c1{
    background-color: white;
    width: 1100px;
   	padding: 25px;
    margin-left: 200px;
	margin-bottom: 25px;
}
.c2{
    
    width: 800px;
    float:right;

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

 
<body background="img/bgrand.jpg">








<table  width="100%;">
<tr height="30%">
    <div class="c1">
    <img src="img/bg1.jpg"width="200" height="200" />
    <div class="c2"><a href="animation1.jsp"><b><font size="+2" color="#000000">【视觉绘】《咒术回战》新视觉绘公开</font></b></a>
    <br>《咒术回战》改编自芥见下下连载于《周刊少年Jump》上的同名漫画，漫画曾获“下一部漫画大赏”2018年第6名的成绩。2019年11月官方宣布了动...</div>
    
    </div>
    <div class="c1">
    <img src="img/bg3.jpg"width="200" height="200" />
    <div class="c2"><a href=""><b><font size="+2" color="#000000">【播出时间】《约定的梦幻岛 第二季》2020年十月播出</font></b></a>
    <br>《约定的梦幻岛》改编自白井カイウ著同名漫画，于2019年播出第一季动画，动画放送结束时宣布第二季动画的制作决定，并预定于2020年十月...
    
    </div>
    
    </div>
	<div class="c1">
    <img src="img/bg2.jpg"width="200" height="200" />
    <div class="c2"><a href=""><b><font size="+2" color="#000000">【PV】《辉夜大小姐想让我告白 第二季》PV公开 2020年四月播出</font></b></a>
    <br>《辉夜姬想让人告白~ 天才们的恋爱头脑战~》改编自赤坂アカ创作的同名恋爱喜剧类漫画。动画第一季于2019年一月播出，同年10月官方宣布动...</div>
    
    </div>
    <div class="c1">
    <img src="img/bg4.jpg"width="200" height="200" />
    <div class="c2"><a href=""><b><font size="+2" color="#000000">【PV】《排球少年 TO THE TOP》第四季 PV公开 2020年一月播出</font></b></a>
    <br>《排球少年》改编自日本漫画家古馆春一的同名漫画，该作在此前曾推出过三季动画。2019年8月官方宣布了第四季动画的制作决定，其标题为《...</div>
    
    </div>

    

</tr>
</table>







</body>
</html>
