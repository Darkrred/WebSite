<%@ page import="com.beans.DAO" %>
<%@ page import="com.beans.Information" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 孙思源
  Date: 2021/10/24
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中艺星源教育-后台管理</title>
    <link rel="stylesheet" type="text/css" href="backstage.css">
</head>
<body>
    <div class = "background-frame">
        <div class = "backstage-title">中艺星源教育-后台管理系统</div>
        <div class = "info-change-frame">
            <div class = "sub-title1">资讯修改</div>
            <%
                DAO dao = new DAO();
                ArrayList<Information> arrayList = dao.ShowInformation();
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
                int size = 5; if (arrayList.size() < 5) size = arrayList.size();
                for (int i = 0; i < size; i++) {
            %>
            <div class = "information-block">
                <p class = "information-p">|</p>
                <div class = "title-and-content">
                    <div class = "information-title"><%=arrayList.get(i).getInformation_title()%></div>
                    <div class = "information-content"><%=arrayList.get(i).getInformation_content()%></div>
                </div>
                <div class = "information-time"><%=formatter.format(arrayList.get(i).getInformation_time())%></div>
                <div class="info-delete-frame">
                    <form method="post" action="delete_info.jsp"><input type="hidden" name="delete_id" value="<%=arrayList.get(i).getInformation_id()%>">
                    <input type="submit" class="info-delete" value="删除">
                    </form>
                </div>
            </div>
            <% } %>
            <div class = "sub-title1" style="margin-top: 40px ">添加资讯</div>
            <div class = "add-info-block">
                <form method="post" action="add_info.jsp" style="display: flex">
                    <div class = "info-title">资讯标题：</div><input type="text" name="add_title" class = "title-input">
                    <div class = "info-content">资讯内容：</div><input type="text" name="add_content" class = "content-input">
                    <input type="submit" class="info-submit" value="提交">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
