<%-- 
    Document   : course_review1
    Created on : Jul 24, 2014, 5:27:45 PM
    Author     : Prasanta
--%>

<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html >
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
            var login = document.getElementById('login').value;
            var password_id = document.getElementById('password_id').value;
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            var course_id = document.getElementById('course_id').value;
            var user_id = document.getElementById('user_id').value;

            if(login!="cetiitkgp" && password_id!="Pedapogy_cetiitkgp")
            {

                window.location="login_id.jsp?LOGIN="+login+"&PASSWORD_ID="+password_id+"&USER_ID="+user_id;
            }
            else
            {
                window.location="assign_pedareviewer.jsp?USER_ID="+user_id+"&PASSWORD_ID="+password_id+"&LOGIN="+login;

            }
        }
    </script>
    <body>

        <div id="header" class="noprint">
            <div id="main-heading">
                <h1>
                    National Mission Project on Education through ICT
                </h1>
                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>
            </div>
            <%
                        String email = request.getParameter("EMAIL_ID");
                        String password = request.getParameter("PASSWORD");
                        String user_id = request.getParameter("USER_ID");
                        String coursename = request.getParameter("COURSE_NAME");
                        String login = request.getParameter("LOGIN");
                        String password_id = request.getParameter("PASSWORD_ID");
                        String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                        Connection connection = null;
                        PreparedStatement pstatement = null;
                        ResultSet rs = null;
                        String course_id = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                        String resultString = "select * from course WHERE USER_ID='" + user_id + "'  ";
                        pstatement = connection.prepareStatement(resultString);

                        rs = pstatement.executeQuery();
                        while (rs.next()) {
                            course_id = rs.getString(1);
                        }
                        rs.close();
                        connection.close();
            %>
            <div id="tabs">
                <ul>
                    <li style="float: left">
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Discipline</a>
                    </li>

                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password_id)) {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Submit For Review</a>
                    </li>
                    <li style="float: right">
                        <a href="register_course.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Register Your Course</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <%} else {
                    %>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>"class="current">Pedagogical Review</a>
                    </li>
                     <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Domain Review</a>
                    </li>
                    <li style="float: right;background-color: #FF0000;color: #FF0000">
                        <a href="admin.jsp"  style="color: #FF0000;font-weight: 900">Administrator</a>
                    </li>

                    <%}%>
                    <li style="float: left">
                        <a href="status.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Status</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head">Course : <%=coursename%></h2>
                <div id="screen" style="min-height:800px">
                    <input type="hidden" name="login" id="login" value="<%=login%>"/>
                    <input type="hidden" name="password_id" id="password_id" value="<%=password_id%>"/>
                    <input type="hidden" name="email" id="email" value="<%=email%>"/>
                    <input type="hidden" name="password" id="password" value="<%=password%>"/>
                    <input type="hidden" name="course_id" id="course_id" value="<%=course_id%>"/>
                    <input type="hidden" name="user_id" id="user_id" value="<%=user_id%>"/>
                    <div style="margin-top:2px; float:right;" class="buttons">
                        <a class="button" href="javascript:void(0)" onclick="check ();">Assign Reviewer</a>
                    </div>
                    <div class="dashboard-heading" style="border:none;color: #FF0000;height:30px">Assign Reviewer:-</div>
                    <div class="clear">&nbsp;</div>
                    <table border="1" align="center" cellpadding="0" cellspacing="0" class="contenttable" width="100%" style="table-layout: fixed">
                        <thead>
                            <tr>
                                <th width="28%" style="white-space:nowrap;">Course Name</th>
                                <th width="6%" style="white-space:nowrap;">Status</th>
                                <th width="17%" style="white-space:nowrap;">Principal Developer Name</th>
                                <th width="16%" style="white-space:nowrap;">Co Developer1 Name</th>
                                <th width="16%" style="white-space:nowrap;">Co Developer2 Name</th>
                                <th width="17%" style="white-space:nowrap;">Co-Ordinator Name</th>
                            </tr>
                        </thead>

                        <tbody>
                            <%

                                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                        Connection connection2 = null;
                                        PreparedStatement pstatement2 = null;
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        //ArrayList<String> result = new ArrayList<String>();

                                        ResultSet rs2 = null;


                                        try {
                                            connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                            String queryString2 = "SELECT * FROM register_user WHERE USER_ID='" + user_id + "'";
                                            pstatement2 = connection2.prepareStatement(queryString2);

                                            rs2 = pstatement2.executeQuery();
                                            while (rs2.next()) {

                            %>
                            <tr>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(2)%></a></td>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(17)%></a></td>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(5)%></a></td>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(11)%></a></td>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(12)%></a></td>
                                <td style="white-space:nowrap;overflow: hidden;"><a href="#"><%=rs2.getString(13)%></a></td>

                            </tr>

                            <%   }
                                        } catch (Exception ex) {
                                            out.println("Unable to connect to Database." + ex.getMessage());

                                        } finally {
                                            // close all the connections.
                                            pstatement2.close();
                                            connection2.close();
                                        }
                            %>
                        </tbody>
                    </table>

                </div>
            </div>

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>

