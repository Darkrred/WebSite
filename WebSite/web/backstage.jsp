<%@ page import="com.beans.DAO" %>
<%@ page import="com.beans.Information" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.beans.Visitor" %><%--
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
    <link rel="icon"       type="text/css" href="images/brand.png">
    <script type="text/javascript">
        function submit_success(){
            window.alert("提交成功!");
            return true;
        }
        function delete_success(){
            window.alert("删除成功!");
            return true;
        }
    </script>
</head>
<body>
    <div class = "background-frame">
        <div class = "backstage-title">中艺星源教育-后台管理系统</div>
        <div class = "info-change-frame">
            <div class = "sub-title1">资讯修改</div>
            <%
                DAO dao = new DAO();
                ArrayList<Information> arrayList_info = dao.ShowInformation();
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
                SimpleDateFormat DTformatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
                int info_size = arrayList_info.size();
                for (int i = 0; i < info_size; i++) {
            %>
            <div class = "block">
                <p class = "information-p">|</p>
                <div class = "title-and-content">
                    <div class = "information-title"><%=arrayList_info.get(i).getInformation_title()%></div>
                    <div class = "information-content" style="width:850px"><%=arrayList_info.get(i).getInformation_content()%></div>
                </div>
                <div class = "time"><%=formatter.format(arrayList_info.get(i).getInformation_time())%></div>
                <div class="info-delete-frame">
                    <form method="post" action="delete_info.jsp"><input type="hidden" name="delete_id" value="<%=arrayList_info.get(i).getInformation_id()%>">
                    <input type="submit" class="info-delete" value="删除" onclick="return delete_success()">
                    </form>
                </div>
            </div>
            <% } %>
            <div class = "sub-title1" style="margin-top: 40px ">添加资讯</div>
            <div class = "add-info-block">
                <form method="post" action="add_info.jsp" style="display: flex">
                    <div class = "info-title">资讯标题：</div><input type="text" name="add_title" id="add_title" class = "title-input">
                    <div class = "info-content">资讯内容：</div><input type="text" name="add_content" id="add_content" class = "content-input">
                    <input type="submit" class="info-submit" value="提交" onclick="return submit_success()">
                </form>
            </div>
        </div>
        <div class = order-change-frame>
            <div class = "sub-title1">预约修改</div>
            <%
                ArrayList<Visitor> arrayList_order = dao.ShowOrder();
                int order_size = arrayList_order.size();
                for (int i = 0; i < order_size; i++) {
            %>
            <div class = "order-block">
                <p class = "order-p">|</p>
                <div class = "order-infos">
                    <div class = "order-info">
                        <div class = "order-content" style="font-weight: bold;">姓名：</div><div class = "order-content"><%=arrayList_order.get(i).getName()%></div>
                        <div class = "order-content" style="font-weight: bold;margin-left: 30px;">联系方式：</div><div class = "order-content"><%=arrayList_order.get(i).getTel_or_wx()%></div>
                        <div class = "order-content" style="font-weight: bold;margin-left: 30px;">课程分类：</div><div class = "order-content"><%=arrayList_order.get(i).getClassify()%></div>
                    </div>
                    <div class = "order-info" style="margin-top: 5px">
                        <div class = "order-content" style="font-weight: bold;">问题描述：</div><div class = "order-content"><%=arrayList_order.get(i).getQuestion()%></div>
                    </div>
                </div>
                <div class = "time"><%=formatter.format(arrayList_order.get(i).getDate())%>&nbsp;<%=arrayList_order.get(i).getTime()%></div>
                <div class="info-delete-frame">
                    <form method="post" action="delete_order.jsp"><input type="hidden" name="delete_id" value="<%=arrayList_order.get(i).getVisitId()%>">
                        <input type="submit" class="info-delete" value="删除" onclick="return delete_success()">
                    </form>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
