<%@ page import="com.beans.DAO" %><%--
  Created by IntelliJ IDEA.
  User: 孙思源
  Date: 2021/10/25
  Time: 10:25
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
        int delete_id = Integer.parseInt(request.getParameter("delete_id"));
        DAO dao = new DAO();
        dao.DeleteInformation(delete_id);
        response.sendRedirect("backstage.jsp");
    %>
</body>
</html>
