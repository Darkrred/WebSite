<%@ page import="com.beans.DAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.beans.Information" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 86130
  Date: 2021/10/29
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=request.getParameter("title")%>-中艺星源教育</title>
    <link rel="stylesheet" type="text/css" href="article.css">
    <link rel="icon"       type="text/css" href="images/brand.png">
</head>
<body>
    <%@include file="navigation.jsp" %>
    <%
        DAO dao = new DAO();
        ArrayList<Information> arrayList = dao.ShowInformation();
        Information information = new Information();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i).getInformation_title().equals(request.getParameter("title"))){
                information = arrayList.get(i);
            }
        }
    %>
    <div class = "frame">
        <div style="display: flex;margin: auto;width:1190px">
            <div style="display: flex;flex-direction: column;width: 780px;">
                <div class = "left-frame">
                    <div class="article-title"><%=information.getInformation_title()%></div>
                    <div class="article-time">来源：成都中艺星源艺考培训学校&emsp;&emsp;时间：<%=information.getInformation_time()%></div>
                    <div class="article-content">&emsp;&emsp;&emsp;<%=information.getInformation_content().replace(" ","<br><br>&emsp;&emsp;&emsp;")%></div>
                </div>
                <img class = "article-pic" src="images/article_pic.PNG">
            </div>
            <div class = "right-frame">
                <div class = "major-title">中艺热门专业</div>
                <a href="major_broadcast.jsp"><div class = "major">中艺播音培训</div></a>
                <a href="major_direct.jsp"><div class = "major">中艺编导培训</div></a>
                <a href="major_perform.jsp"><div class = "major">中艺表演培训</div></a>
                <a href="major_music.jsp"><div class = "major">中艺音乐培训</div></a>
                <a href="major_art.jsp"><div class = "major">中艺美术培训</div></a>
                <a href="major_dance.jsp"><div class = "major">中艺舞蹈培训</div></a>
                <a href="major_calligraphy.jsp"><div class = "major">中艺书法培训</div></a>
                <a href="major_airhostess.jsp"><div class = "major">中艺空乘培训</div></a>
            </div>
        </div>
    </div>
    <%@include file="address_and_copyright.jsp" %>
</body>
</html>
