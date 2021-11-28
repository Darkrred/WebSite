<%--
  Created by IntelliJ IDEA.
  User: 86130
  Date: 2021/11/28
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="sign_box.css" type="text/css" rel="stylesheet">
</head>
<body>
  <div class="sign_box" id="sign_up_box">
  <div class="sign">
    <div class="sign_title">在线报名</div>
    <div class="sign_information">
      <form method="post" action="submit_order.jsp">
        <input type="text" name="name" id="sign_name" placeholder="姓名">
        <input type="text" name="tel_or_wx" id="sign_contact" placeholder="联系方式：QQ/微信/电话">
        <select id="sign_info" name="classify" >
          <option value="default" selected disabled id="default">课程分类</option>
          <option value="播音艺考培训">播音艺考培训</option>
          <option value="编导艺考培训">编导艺考培训</option>
          <option value="表演艺考培训">表演艺考培训</option>
          <option value="音乐艺考培训">音乐艺考培训</option>
          <option value="美术艺考培训">美术艺考培训</option>
          <option value="舞蹈艺考培训">舞蹈艺考培训</option>
          <option value="书法艺考培训">书法艺考培训</option>
          <option value="空乘艺考培训">空乘艺考培训</option>
        </select>
        <input type="text" id="sign_question" placeholder="问题描述" name="question">
        <input type="submit" id="sign_in" value="提交" onclick="return submit_success()">
      </form>
    </div>
  </div>
</div>
</body>
</html>
