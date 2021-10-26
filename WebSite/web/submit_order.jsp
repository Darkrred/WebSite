<%@ page import="com.beans.DAO" %>
<%@ page import="com.beans.Visitor" %><%--
  Created by IntelliJ IDEA.
  User: 86130
  Date: 2021/10/26
  Time: 17:58
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
        String name = request.getParameter("name");
        String tel_or_wx = request.getParameter("tel_or_wx");
        String classify = request.getParameter("classify");
        String question = request.getParameter("question");
        DAO dao = new DAO();
        Visitor visitor = new Visitor();
        visitor.setName(name);
        visitor.setTel_or_wx(tel_or_wx);
        visitor.setClassify(classify);
        visitor.setQuestion(question);
        dao.InsertVisitInfo(visitor);
        response.sendRedirect("homepage.jsp");
    %>
</body>
</html>
