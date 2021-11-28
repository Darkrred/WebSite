<%@ page import="com.beans.DAO" %>
<%@ page import="com.beans.Information" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 86130
  Date: 2021/10/19
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中艺星源教育-播音艺考培训</title>
    <link href="major_broadcast.css" type="text/css" rel="stylesheet">
    <link rel="icon"       type="text/css" href="images/brand.png">
    <script type="text/javascript">
        function submit_success(){
            window.alert("提交成功!");
            return true;
        }
    </script>
</head>
<body>
<%@include file="navigation.jsp" %>
<%--主题栏--%>
<div id="profession_poster">
    <img src="images/theme_pic_broadcast.jpg">
    <div class="appointment_box">
        <div class="appointment_title">｜免费测评｜</div>
        <div class="appointment_title_res">请填写您的个人信息，<br>将由专业的老师为您免费测评</div>
        <div id="evaluation_appointment">
            <form method="post" action="submit_order.jsp">
                <input type="text" placeholder="&nbsp;姓名" name="name">
                <input type="text" placeholder="&nbsp;电话\QQ\微信" name="tel_or_wx">
                <select name="classify">
                    <option value="未选择" selected disabled>课程分类</option>
                    <option value="播音艺考培训">播音艺考培训</option>
                    <option value="编导艺考培训">编导艺考培训</option>
                    <option value="表演艺考培训">表演艺考培训</option>
                    <option value="音乐艺考培训">音乐艺考培训</option>
                    <option value="美术艺考培训">美术艺考培训</option>
                    <option value="舞蹈艺考培训">舞蹈艺考培训</option>
                    <option value="书法艺考培训">书法艺考培训</option>
                    <option value="空乘艺考培训">空乘艺考培训</option>
                </select>
                <input type="text" placeholder="&nbsp;问题描述" name="question">
                <input type="submit" id="button" value="立刻预约" onclick="return submit_success()">
            </form>
        </div>
    </div>
</div>
<%--高考优势栏--%>
<div class="box_style1" id="advantage_box">
    <div class="introduce_box">
        <div class="theme_title">播音高考有哪些优势</div>
        <div class="theme_title_EN">— ADVANTAGE —</div>
        <div class="detail">学生通过播音艺考，专业通过联考、校考后，以相对较低的高考分数被中国传媒大学、浙江传媒学院等重点大学录取，毕业后就业前景广阔。</div>
    </div>
    <div id="advDetail_box">
        <div class="advDet_box">
            <div class="triangle_top"></div>
            <div class="triangle_bottom"></div>
            <div class="res_box">
                <div class="res_img"><img src="images/icon-shield.png"></div>
                <div class="res">

                </div>
            </div>
        </div>
        <div class="advDet_box">
            <div class="triangle_top"></div>
            <div class="triangle_bottom"></div>
            <div class="res_box">
                <div class="res_img"><img src="images/icon-idea.png"></div>
                <div class="res">

                </div>
            </div>
        </div>
        <div class="advDet_box">
            <div class="triangle_top"></div>
            <div class="triangle_bottom"></div>
            <div class="res_box">
                <div class="res_img"><img src="images/icon-email.png"></div>
                <div class="res">

                </div>
            </div>
        </div>
        <div class="advDet_box">
            <div class="triangle_top"></div>
            <div class="triangle_bottom"></div>
            <div class="res_box">
                <div class="res_img"><img src="images/icon-telegram.png"></div>
                <div class="res">

                </div>
            </div>
        </div>
    </div>
</div>
<%--班型设计栏--%>
<div class="box_style2" id="class_define_box">
    <div class="introduce_box">
        <div class="theme_title">多种班型定制</div>
        <div class="theme_title_EN">— MULTIPLE CLASS TYPES —</div>
        <div class="detail">可根据学生的情况为学生推荐相应的班级，实现精准教学</div>
    </div>
    <div class="claDetail_box2">
        <div class="class_box">
            <div class="class_img"><img src="images/1-24x24-36018.png"></div>
            <div class="class_name">平行班</div>
            <div class="class_res">

            </div>
        </div>
        <div class="class_box">
            <div class="class_img"><img src="images/2-24x24-36019.png"></div>
            <div class="class_name">特长班</div>
            <div class="class_res">

            </div>
        </div>
        <div class="class_box">
            <div class="class_img"><img src="images/3-24x24-36021.png"></div>
            <div class="class_name">专业班</div>
            <div class="class_res">

            </div>
        </div>
        <div class="class_box">
            <div class="class_img"><img src="images/4-24x24-36017.png"></div>
            <div class="class_name">冲刺班</div>
            <div class="class_res">

            </div>
        </div>
    </div>
</div>
<%--量身定制栏--%>
<div class="box_style1" id="tailored_define_box">
    <div class="introduce_box">
        <div class="theme_title">量身定制</div>
        <div class="theme_title_EN">— TAILORED —</div>
        <div class="detail">入学前老师会与学生交流并进行小测试，综合学生自身的条件，兴趣爱好和报考学校意向、专业基础、性格等进行综合评估。为其量身定制专属学习规划书，让老师、家长共同督促孩子进步。</div>
    </div>
    <div class="tailored_box">
        <div class="tailored_box_img"><img src="images/teach_pic2.jpg"></div>
        <div class="tailored_bbox">
            <div class="tailored_lbox">
                <div class="tailored_sbox">
                    <div class="tailored_number"><img src="images/1-24x24-36018.png"></div>
                    <div class="tailored_img"><img src="images/basic_magnifier.png"></div>
                    <div class="tailored_en">特色1</div>
                    <div class="tailored_res">

                    </div>
                </div>
                <div class="tailored_sbox">
                    <div class="tailored_number"><img src="images/2-24x24-36019.png"></div>
                    <div class="tailored_img"><img src="images/basic_cloud.png"></div>
                    <div class="tailored_en">特色2</div>
                    <div class="tailored_res">

                    </div>
                </div>
            </div>
            <div class="tailored_lbox">
                <div class="tailored_sbox">
                    <div class="tailored_number"><img src="images/3-24x24-36021.png"></div>
                    <div class="tailored_img"><img src="images/basic_todolist_pencil.png"></div>
                    <div class="tailored_en">特色3</div>
                    <div class="tailored_res">

                    </div>
                </div>
                <div class="tailored_sbox">
                    <div class="tailored_number"><img src="images/4-24x24-36017.png"></div>
                    <div class="tailored_img"><img src="images/icon-form.png"></div>
                    <div class="tailored_en">特色4</div>
                    <div class="tailored_res">

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<%--报考大学栏--%>
<div class="box_style2" id="college_define_box">
    <div class="introduce_box">
        <div class="theme_title">播音生可以报考哪些大学</div>
        <div class="theme_title_EN">— UNIVERSITY —</div>
        <div class="detail">全国播音主持专业院校超过一百三十所，除以中国传媒大学、浙江传媒学院为代表的专业艺术院校外，全国985、211及普通本科综合性院校均开设有播音类专业，学生可根据自己兴趣特长、院校特色专业进行针对性报考。</div>
    </div>
    <div class="college_bbox">
        <div class="college_lbox">
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college2.png">
                    <div class="college_name">浙江财经大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college6.png">
                    <div class="college_name">重庆大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college3.png">
                    <div class="college_name">同济大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college9.png">
                    <div class="college_name">东北大学</div>
                </div>
            </div>
        </div>
        <div class="college_lbox">
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college1.png">
                    <div class="college_name">北京电影学院</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college10.png">
                    <div class="college_name">天津大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college4.png">
                    <div class="college_name">浙江传媒大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college11.png">
                    <div class="college_name">重庆大学</div>
                </div>
            </div>
        </div>
        <div class="college_lbox">
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college5.png">
                    <div class="college_name">中国传媒大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college7.png">
                    <div class="college_name">华中师范大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <img src="images/college8.png">
                    <div class="college_name">西南大学</div>
                </div>
            </div>
            <div class="hover_box">
                <div class="college_box">
                    <div class="college_more">更多高校,免费咨询</div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--特色区域栏--%>
<div class="box_style1" id="college_define_box">
    <div class="introduce_box">
        <div class="theme_title">培训特色</div>
        <div class="theme_title_EN">— CHARACTERISTIC —</div>
        <div class="detail">中艺星源艺术学校在23年办学过程中不断总结教学精髓，和各大知名出版社自研出版了数十套播音教学教案，内容涵盖历年考题、专业学习要点等，能帮助学生短时间内掌握学习方法，提高学习效率。</div>
    </div>
    <div class="claDetail_box">
        <div class="advDet_box2">
            <div class="claDetail_img"><img src="images/teach_pic1.png"></div>
            <div class="claDetail">内容1</div>
        </div>
        <div class="advDet_box2">
            <div class="claDetail">内容2</div>
            <div class="claDetail_img"><img src="images/teach_pic3.jpg"></div>
        </div>
        <div class="advDet_box2">
            <div class="claDetail_img"><img src="images/teach_pic4.jpg"></div>
            <div class="claDetail">内容3</div>
        </div>
        <div class="advDet_box2">
            <div class="claDetail">内容4</div>
            <div class="claDetail_img"><img src="images/teach_pic5.jpg"></div>
        </div>
    </div>
</div>
<%--艺考资讯区域栏--%>
<div class="box_style2" id="information_define_box">
    <%
        DAO dao = new DAO();
        ArrayList<Information> arrayList = dao.ShowInformation();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        int size = 5; if (arrayList.size() < 5) size = arrayList.size();
    %>
    <div class="sign_information">
        <div class="little_theme">
            <div class="theme_title">实时资讯紧跟艺考步伐</div>
            <div class="theme_title_EN">— TIME-INFORMATION —</div>
        </div>
        <% for (int i = 0; i < size; i++) { %>
        <a href="article.jsp?title=<%=arrayList.get(i).getInformation_title()%>"><div class = "information-block">
            <p class = "information-p">|</p>
            <div class = "title-and-content">
                <div class = "information-title"><%=arrayList.get(i).getInformation_title()%></div>
                <div class = "information-content" style="width: 750px;"><%=arrayList.get(i).getInformation_content()%></div>
            </div>
            <div class = "information-time"><%=formatter.format(arrayList.get(i).getInformation_time())%></div>
        </div></a>
        <% } %>
    </div>
</div>
<%--报名区域栏--%>
<%@include file="sign_box.jsp"%>
<%--联系方式栏--%>
<%@include file="address_and_copyright.jsp"%>
</body>
</html>
