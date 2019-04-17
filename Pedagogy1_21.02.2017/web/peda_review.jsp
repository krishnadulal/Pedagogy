<%--
    Document   : login_id
    Created on : Jul 3, 2013, 5:34:02 PM
    Author     : Prasanta
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>PEDAGOGY (MAIN PHASE)</title>
        <script type="text/javascript" src="JavaScript/abc.js" ></script>
        <script type="text/javascript" src="JavaScript/event.js"></script>
        <script type="text/javascript" src="JavaScript/treeview.js" ></script>
        <script type="text/javascript" src="JavaScript/jktreeview.js" ></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <script type="text/javascript">
        function check()
        {
            var name1=null;
            var login = document.course.LOGIN;
            var password_id = document.course.PASSWORD_ID;
            //var name = document.getElementById('name').value;
            var email = document.course.EMAIL_ID;
            var password = document.course.PASSWORD;
            var coursename = document.course.COURSE_NAME;
            var user_id = document.course.USER_ID;
            if (document.course.name[0].checked==true){
                name1=document.course.name[0].value;
            }
            else if (document.course.name[1].checked==true){
                name1=document.course.name[1].value;
            }
            if(name1=='yes')
            {
                window.location="peda_reviewer.jsp?LOGIN="+login.value+"&PASSWORD_ID="+password_id.value+"&USER_ID="+user_id.value+"&name="+name1.value+"&COURSE_NAME="+coursename.value+"&email="+email.value+"&password="+password.value;
            }
            else
            {
                window.location="course_details.jsp?email="+email.value+"&password="+password.value+"&USER_ID="+user_id.value+"&name="+name1.value+"&COURSE_NAME="+coursename.value+"&PASSWORD_ID="+password_id.value+"&LOGIN="+login.value;

            }
        }
      
    </script>
    <%
                String login = request.getParameter("LOGIN");
                String password_id = request.getParameter("PASSWORD_ID");

    %>
    <body>

        <div id="header" class="noprint">
            <div id="main-heading">
                <h1>
                    National Mission Project on Education through ICT
                </h1>
                <ul>
                    <li style="float: right">

                    </li>
                </ul>
                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>
            </div>

            <div id="tabs">
                <ul>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Courses</a>
                    </li>
                    <li style="float: right">
                        <a href="logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        <%
                    // String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = null;
                    email2 = request.getParameter("email2");
                    String id = request.getParameter("COURSE_ID");
                    String user_id = null;
                    String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    PreparedStatement pstatement2 = null;
                    ResultSet rs = null;
                    ResultSet rs2 = null;
                    String email = null;
                    String password = null;
                    String coursename = null;
                    String cstatus = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                    String resultString = "select * from course WHERE COURSE_ID='" + id + "'  ";
                    pstatement = connection.prepareStatement(resultString);
                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        user_id = rs.getString(7);
                    }
                    String resultString1 = "select * from register_user WHERE USER_ID='" + user_id + "'  ";
                    pstatement2 = connection.prepareStatement(resultString1);
                    rs2 = pstatement2.executeQuery();
                    while (rs2.next()) {
                        email = rs2.getString(6);
                        password = rs2.getString(9);
                        coursename = rs2.getString(2);
                        cstatus = rs2.getString("CNAME");
                    }

                    rs.close();
                    rs2.close();
                    pstatement.close();
                    pstatement2.close();
                    connection.close();

                    //String coursename = request.getParameter("COURSE_NAME");
%>
        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Course for Pedagogy review </h2>
                <div id="screen" style="min-height: 800px" align="center">
                    <br></br>
                    <%if ("con".equals(cstatus)) {%>
                    <h2> You already Submitted this course for Pedagogical Review </h2>
                    <h3 align="center" style="color: #9F1D20"> Do you want to submit this course for Final Submission? </h3>
                    <h3 align="center" >If Yes, then you press Confirm button otherwise press Back button </h3>
                    <a href="submission.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&COURSE_ID=<%=id%>&email1=<%=email1%>&email2=<%=email2%>&USER_ID=<%=user_id%>" style="font-size: large; font-weight: bold">Confirm</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="coursename.jsp?email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&COURSE_ID=<%=id%>" style="font-size: large; font-weight: bold"> Back</a>
                    <%} else {%>
                    <%
                        request.setCharacterEncoding("utf-8");
                        String status = null;
                        status = request.getParameter("status");
                        if ("Confirm".equals(status)) {
                            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                            Connection connection1 = null;

                            PreparedStatement pstatement1 = null;
                            PreparedStatement pstatement3 = null;
                            PreparedStatement pstatement4 = null;
                            ResultSet rs4 = null;
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            // int updateQuery = 0;
                            try {
                                connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

                                String queryString = "UPDATE register_user SET NAME = '" + status + "' WHERE USER_ID='" + user_id + "'";

                                pstatement1 = connection1.prepareStatement(queryString);
                                //pstatement1.setString(1, status);
                                pstatement1.executeUpdate();

                                String val = "SELECT COURSE_SUBMIT_TIME FROM course WHERE COURSE_ID=" + id + "";
                                pstatement4 = connection1.prepareStatement(val);
                                rs4 = pstatement4.executeQuery();
                                while (rs4.next()) {
                                    if (rs4.getString(1).equals("0000-00-00 00:00:00")) {
                                        String queryString3 = "UPDATE course SET COURSE_SUBMIT_TIME=DATE_FORMAT(NOW(),'%d %b %y %h:%i %p') WHERE COURSE_ID=" + id + "";
                                        pstatement3 = connection1.prepareStatement(queryString3);

                                    } else {

                                        String queryString3 = "UPDATE course SET COURSE_SUBMIT_TIME=CONCAT('"+rs4.getString(1)+"',',',DATE_FORMAT(NOW(),'%d %b %y %h:%i %p')) WHERE COURSE_ID=" + id + "";
                                        pstatement3 = connection1.prepareStatement(queryString3);
                                    }
                                    pstatement3.executeUpdate();
                                }
                            } catch (Exception ex) {
                                out.println("Unable to connect to Database." + ex.getMessage());
                            } finally {
                                rs4.close();
                                pstatement1.close();
                                pstatement3.close();
                                pstatement4.close();
                                connection1.close();
                            }

                    %>
                    <h2> Submitted Successfully</h2>
                    <h3><a href="peda_reviewer.jsp?email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&COURSE_ID=<%=id%>" style="font-size: large; font-weight: bold"> Back</a> </h3>
                    <%} else {%>
                    <h3 align="center" style="color: #9F1D20"> Do you want to submit this course for Pedagogical Review? </h3>
                    <h4 align="center" >If you press Confirm button, then you can not modify/update your course. Your user name and password will be deactivated. </h4>


                    <form action="peda_review.jsp" method="post">
                        <input type="hidden" name="EMAIL_ID" id="email" value="<%=email%>" />
                        <input type="hidden" name="PASSWORD" id="password" value="<%=password%>" />
                        <input type="hidden" name="USER_ID" id="user_id" value="<%=user_id%>" />
                        <input type="hidden" name="COURSE_ID" id="course_id" value="<%=id%>" />
                        <input type="hidden" name="LOGIN" id="login" value="<%=login%>" />
                        <input type="hidden" name="PASSWORD_ID" id="pasword_id" value="<%=password_id%>" />
                        <input type="hidden" name="COURSE_NAME" id="coursename" value="<%=coursename%>"/>
                        <input type="submit" name="status" value="Confirm" />
                    </form>
                    <a href="coursename.jsp?email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&COURSE_ID=<%=id%>" style="font-size: large; font-weight: bold"> Back</a>
                    <%}
                                }%>
                </div>
            </div>

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
