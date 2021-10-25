<%--
  Created by IntelliJ IDEA.
  User: 孙思源
  Date: 2021/10/19
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.beans.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>中艺星源教育-中艺星源艺术学校</title>
    <link rel="stylesheet" type="text/css" href="homepage.css">
</head>
<body>
    <img class = "left-pic" src="images/left-pic.PNG">
    <img class = "right-pic" src="images/right-pic.PNG">
    <div class = "theme">
        <div class = "theme-title">一起决胜艺术高考</div>
        <div class = "theme-content">— 资深教育品牌助你展翅高飞 —</div>
    </div>
    <div class = "majors">
        <div class = "border">
            <div class = "label-title">— 热门专业 —</div>
            <div class = "label-content">POPULAR MAJOR</div>
        </div><hr>
        <div class = "majors-row">
            <img class = "major" src="images/pic_broadcast.PNG">
            <img class = "major" src="images/pic_direct.PNG">
            <img class = "major" src="images/pic_perform.PNG">
            <img class = "major" src="images/pic_music.PNG">
        </div>
        <div class = "majors-row">
            <img class = "major" src="images/pic_finearts.PNG">
            <img class = "major" src="images/pic_dance.PNG">
            <img class = "major" src="images/pic_calligraphy.PNG">
            <img class = "major" src="images/pic_airactress.PNG">
        </div>
    </div>
    <div class = "teachers">
        <div class = "border">
            <div class = "label-title">— 资深教师 —</div>
            <div class = "label-content">SENIOR TEACHER</div>
        </div>
        <img class = "teachers-suit" src="images/suit.png">
        <div class = "teachers-content">-金牌老师助力 | 精华串讲加方法汇总 | 艺考专题讲解-</div>
    </div>
    <div class = "environment">
        <div class = "border">
            <div class = "label-title">— 校园风景 —</div>
            <div class = "label-content">CAMPUS SCENERY</div>
        </div>
        <div class = "environment-main">
            <img class = "environment-main-pic" src="images/pic-environment-main.jpg">
            <div class = "environment-main-content">成都总校区</div>
        </div>
        <div class = "environment-branches">
            <div class = "environment-branch">
                <img class = "environment-branch-pic" src="images/pic_environment_branch1.jpg">
                <div class = "environment-branch-content">成都校区</div>
            </div>
            <div class = "environment-branch">
                <img class = "environment-branch-pic" src="images/pic_environment_branch2.jpg">
                <div class = "environment-branch-content">北京校区</div>
            </div>
            <div class = "environment-branch">
                <img class = "environment-branch-pic" src="images/pic_environment_branch3.jpg">
                <div class = "environment-branch-content">上海校区</div>
            </div>
            <div class = "environment-branch">
                <img class = "environment-branch-pic" src="images/pic_environment_branch4.jpg">
                <div class = "environment-branch-content">广州校区</div>
            </div>
        </div>
    </div>
    <%
        DAO dao = new DAO();
        ArrayList<Information> arrayList = dao.ShowInformation();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        int size = 5; if (arrayList.size() < 5) size = arrayList.size();
    %>
    <div class = "information">
        <div class = "border">
            <div class = "label-title">— 艺考资讯 —</div>
            <div class = "label-content">EXAM INFORMATION</div>
        </div><hr>
        <% for (int i = 0; i < size; i++) { %>
        <div class = "information-block">
            <p class = "information-p">|</p>
            <div class = "title-and-content">
                <div class = "information-title"><%=arrayList.get(i).getInformation_title()%></div>
                <div class = "information-content"><%=arrayList.get(i).getInformation_content()%></div>
            </div>
            <div class = "information-time"><%=formatter.format(arrayList.get(i).getInformation_time())%></div>
        </div>
        <% } %>
    </div>
    <div class = "order">
        <div class = "border">
            <div class = "label-title">— 免费预约 —</div>
            <div class = "label-content">ORDER FOR FREE</div>
        </div><hr>
        <div class = "order-form-list">
            <img class = "order-left-pic" src="images/left-pic.PNG">
            <form name="order-form" method = "post" action="com/servlets/OrderServlet">
                <div class = "order-form-frame"><div class = "order-form-content">&nbsp;您的姓名:</div><input class = "order-input" type="text" name="name"></div>
                <div class = "order-form-frame"><div class = "order-form-content">&nbsp;联系方式:</div><input class = "order-input" type="text" name="tel/wx"></div>
                <div class = "order-form-frame"><div class = "order-form-content">&nbsp;课程分类:</div><input class = "order-input" type="text" name="classify"></div>
                <div class = "order-form-frame"><div class = "order-form-content">&nbsp;问题描述:</div><input class = "order-input" type="text" name="question"></div>
            </form>
            <img class = "order-right-pic" src="images/right-pic.PNG">
        </div>
    </div>
</body>
</html>
