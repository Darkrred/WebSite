<%@ page import="com.beans.DAO" %><%--
  Created by IntelliJ IDEA.
  User: 孙思源
  Date: 2021/10/25
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String add_title = request.getParameter("add_title");
        String add_content = request.getParameter("add_content");
        out.print(add_title);
        out.print(add_content);
        DAO dao = new DAO();
        response.sendRedirect("backstage.jsp");
    %>
</body>
</html>
