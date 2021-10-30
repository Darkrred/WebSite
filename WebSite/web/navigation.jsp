<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2021/10/19
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>中艺星源</title>
  <link rel="stylesheet" type="text/css" href="navigation.css">
</head>
<body>
<a href="homepage.jsp"><div class="top-refresh" id="gotoTop" style="display: block;">^</div></a>
<%--网页导航栏区域--%>
<div id="homepage-nav">
  <div class="navstyle-top" style="margin-left: 270px">您好，欢迎进入<a href="homepage.jsp">中艺星源教育</a></div>
  <div class="navstyle-top" style="margin-left: 500px"><a href="homepage.jsp">中艺星源官网</a>︱</div>
  <div class="navstyle-top"><a href="">新浪微博</a>︱</div>
  <div class="navstyle-top"><a href="">设为首页</a>︱</div>
  <div class="navstyle-top"><a href="">加入收藏</a>︱</div>
  <div class="navstyle-top"><a href="">联系我们</a>︱</div>
  <div class="navstyle-top"><a href="">艺考院校</a>︱</div>
  <div class="navstyle-top"><a href="">艺考咨询</a></div>
</div>

<%--主题图片--%>
<div id="display_img">
  <div id="educate_img"><img src="images/educate.png"></div>
  <div id="contact_img"><img src="images/contact.png"></div>
</div>

<%--专业导航栏区域--%>
<div id="major-nav">
  <text class="navstyle-major "style="border-right: solid 2px gray;"><a href="major_broadcast.jsp">中艺播音</a></text>
  <text class="navstyle-major"><a href="major_direct.jsp">中艺编导</a></text>
  <text class="navstyle-major"><a href="major_perform.jsp">中艺表演</a></text>
  <text class="navstyle-major"><a href="major_music.jsp">中艺音乐</a></text>
  <text class="navstyle-major"><a href="major_art.jsp">中艺美术</a></text>
  <text class="navstyle-major"><a href="major_dance.jsp">中艺舞蹈</a></text>
  <text class="navstyle-major"><a href="major_calligraphy.jsp">中艺书法</a></text>
  <text class="navstyle-major"><a href="major_airhostess.jsp">中艺空乘</a></text>
</div>

<%--活动导航栏区域--%>
<div id="active-nav">
  <div class="navstyle-active"><a href="homepage.jsp">官方首页</a></div>
  <div class="navstyle-active"><a href="">艺考课程</a></div>
  <div class="navstyle-active"><a href="">教学环境</a></div>
  <div class="navstyle-active"><a href="">艺考成果</a></div>
  <div class="navstyle-active"><a href="">视频专区</a></div>
  <div class="navstyle-active"><a href="">艺考咨询</a></div>
  <div class="navstyle-active"><a href="">学校动态</a></div>
  <div class="navstyle-active"><a href="">关于我们</a></div>
</div>
</body>
</html>