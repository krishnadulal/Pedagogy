<%-- 
    Document   : coursename
    Created on : Jun 14, 2013, 7:02:52 PM
    Author     : Krishna
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
        <script type="text/javascript">

            function open_in_new_tab(url )
            {
                var win=window.open(url, '_blank');
                win.focus();
            }
        </script>
    </head>
    <script type="text/javascript" language=JavaScript>
        var message="Sorry, right-click has been disabled";      
        function clickIE() {if (document.all) {(message);return false;}}
        function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all))
            {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)
        {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
        else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
        document.oncontextmenu=new Function("return false")
    </script>

    <body>
        <%
                    String email1 = null;
                    email1 = request.getParameter("email1");
                    String email2 = null;
                    email2 = request.getParameter("email2");
                    String id = request.getParameter("COURSE_ID");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String login = request.getParameter("LOGIN");
        %>
        <div id="header" class="noprint">
            <div id="main-heading" >

                <h1>
                    National Mission Project on Education through ICT
                </h1>

                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>

            </div>
            <%
                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                        Connection connection3 = null;
                        PreparedStatement pstatement3 = null;
                        PreparedStatement pstatement2 = null;
                        Connection connection2 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();
                        String email = null;
                        ResultSet rs3 = null;
                        String course = null;
                        String user_id = null;
                        String status = null;
                        String dstatus = null;
                        String cstatus = null;


                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();

                        ResultSet rs2 = null;


                        try {
                            connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString2 = "SELECT * FROM course where COURSE_ID='" + id + "'";
                            pstatement2 = connection2.prepareStatement(queryString2);

                            rs2 = pstatement2.executeQuery();
                            while (rs2.next()) {
                                course = rs2.getString(2);
                                user_id = rs2.getString(7);
                            }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement2.close();
                            connection2.close();
                        }
                        try {
                            connection3 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString = "SELECT * FROM register_user WHERE USER_ID='" + user_id + "'";
                            pstatement3 = connection3.prepareStatement(queryString);

                            rs3 = pstatement3.executeQuery();
                            while (rs3.next()) {
                                email = rs3.getString(6);
                                status = rs3.getString("NAME");
                                dstatus = rs3.getString("DNAME");
                                cstatus = rs3.getString("CNAME");

                            }
            %>

            <div id="tabs">
                <ul>
                    <%
                                                if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password_id)) {%>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Courses</a>
                    </li>

                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <%}
                                               else if ("con".equals(cstatus)) {%>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Domain Review</a>
                    </li>
                    <li style="float: left">
                        <a href="submission.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&COURSE_ID=<%=id%>&email1=<%=email1%>&email2=<%=email2%>&USER_ID=<%=user_id%>">Final Submission</a>
                    </li>


                    <%} else if ("null".equals(email1) && "null".equals(email2)) {%>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="peda_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&email1=<%=email1%>&email2=<%=email2%>&COURSE_ID=<%=id%>">Submit for Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <%} else if((email1.equals("null"))&& "Confirm".equals(status)){%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help1.pdf">Reviewer Help</a>
                    </li>
                    <%} else {%>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Domain Review</a>
                    </li>
                    <li style="float: left">
                       <a href="review_complete.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&USER_ID=<%=user_id%>&email1=<%=email1%>&email2=<%=email2%>&COURSE_ID=<%=id%>">Review Completed</a>
                   </li>

                    <li style="float: left">
                        <a href="pdf/help1.pdf">Reviewer Help</a>
                    </li>
                    <%}%>

                    <li style="float: right">

                        <a href="#" onclick="open_in_new_tab('fullcourse.jsp?COURSE_ID=<%=id%>')" style="font-size: small;color:#FFFFFF">Full Course View</a>
                        <a href="chart1.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: small;color: #9F1D20">Analysis</a>&nbsp;&nbsp;
                        <a style="font-size: small"><%=email%></a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>

                    </li>
                        <%
                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());

                                    } finally {
                                        // close all the connections.
                                        pstatement3.close();
                                        connection3.close();
                                    }
                        %>

                    
                </ul>
            </div>
        </div>

        <div id="main">
            <%

            %>
            <div id="left-sidebar" class="noprint">
                <div class="head">
                    <%=course%>
                </div>
                <div class="yui-skin-sam">
                    <div id="tree2" class="menu">
                        <%
                                    //String email = request.getParameter("email");
                                    Connection connection = null;
                                    PreparedStatement pstatement = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    //ArrayList<String> result = new ArrayList<String>();
                                    ResultSet rs = null;
                                    try {
                                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        String queryString = "SELECT * FROM module WHERE COURSE_ID='" + id + "'";
                                        pstatement = connection.prepareStatement(queryString);
                                        rs = pstatement.executeQuery();

                        %>
                        <script type="text/javascript">
                            var oaktree=new jktreeview("tree2")
                            oaktree.addItem("Institute's Mission","", "mission.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            oaktree.addItem("Institute's Vision", "", "vision.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            oaktree.addItem("Program Educational Objectives", "", "po.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            var branch2=oaktree.addItem("Course: <%=course%>","", "coursename.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            oaktree.addItem("Course Overview", branch2, "course_overview.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            oaktree.addItem("Course Objectives", branch2, "course_objectives.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            var branch2_4=oaktree.addItem("Course modules", branch2, "course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            oaktree.addItem("Course Problems", branch2, "course_problem.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            <%while (rs.next()) {%>
                                var branch3=oaktree.addItem("Module:<%=rs.getString(2)%>", branch2_4, "modulename.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Module Overview", branch3, "module_overview.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Module Objectives", branch3, "module_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                var branch4=oaktree.addItem("Module Units", branch3, "JavaScript:window.location='module_unit.jsp?MODULE_ID=<%=rs.getString(1)%>&COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'");
                                oaktree.addItem("Module Level Problems", branch3, "module_problems.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Module's Learning Strategy", branch3, "module_strategy.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            <%
                                ResultSet rs1 = null;
                                connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                String queryString1 = "SELECT * FROM unit WHERE COURSE_ID='" + rs.getString(5) + "' AND MODULE_ID='" + rs.getString(1) + "'";
                                pstatement = connection.prepareStatement(queryString1);
                                rs1 = pstatement.executeQuery();
                                while (rs1.next()) {
                            %>
                                var branch5=oaktree.addItem("Unit: <%=rs1.getString(2)%>", branch4, "unitname.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Unit's Summary", branch5, "unit_summary.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Unit's Objectives", branch5, "unit_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                                oaktree.addItem("Unit Level Problems", branch5, "unit_problem.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>");
                            <%}
                                rs1.close();
                            %>
                            <%}%>
                                oaktree.treetop.draw(); //REQUIRED LINE: Initalize tree

                            <%} catch (Exception ex) {
                                            out.println("Unable to connect to Database." + ex.getMessage());

                                        } finally {
                                            // close all the connections.
                                            pstatement.close();
                                            connection.close();
                                        }
                            %>
                        </script>
                    </div>
                </div>
            </div>
            <div id="right-main">
                <h2 class="head">
                    <%=course%>
                </h2>

                <div id="screen">
                    <div class="boxc">
                        <%

                                    Connection connection1 = null;
                                    PreparedStatement pstatement1 = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    //ArrayList<String> result = new ArrayList<String>();

                                    ResultSet rs1 = null;


                                    try {
                                        connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        String queryString = "SELECT * FROM register_user WHERE USER_ID='" + user_id + "'";
                                        pstatement1 = connection1.prepareStatement(queryString);

                                        rs1 = pstatement1.executeQuery();
                                        while (rs1.next()) {

                        %>

                        <div id="members" class="info-box float-l">
                            <h3 class="icon22 icon22-users">Members</h3>
                            <p>
                                Principal Developer : <a title="<%=rs1.getString(5)%>" href="#"><%=rs1.getString(5)%></a> <br></br>
                                Co-Developer 1 : <a title="<%=rs1.getString(11)%>" href="#"><%=rs1.getString(11)%></a><br></br>
                                Co-Developer 2 : <a title="<%=rs1.getString(12)%>" href="#"><%=rs1.getString(12)%></a><br></br>
                            </p>
                        </div>
                        <div id="course-information" class="info-box float-l">
                            <h3 class="icon22 icon22-tracker">Course Information</h3>
                            <p>
                                Institute : <a href="#"><%=rs1.getString(3)%></a> <br></br>
                                Department : <a title="<%=rs1.getString(4)%>" href="#"><%=rs1.getString(4)%></a> <br></br>
                                Course Information/Applications: <a href="#"><%=rs1.getString(2)%></a> <br></br>
                            </p>
                        </div>
                        <%}
                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());

                                    } finally {
                                        rs1.close();
                                        // close all the connections.
                                        pstatement1.close();
                                        connection1.close();
                                    }
                        %>
                        <div class="clear">&nbsp;</div>
                        <div class="home-links">
                            <a href="mission.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Institute's Mission</a>
                            <a href="vision.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Institute's Vision</a>
                            <a href="po.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Program Educational Objectives</a>
                            <a href="course_overview.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Overview</a>
                            <a href="course_objectives.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Objectives</a>
                            <a href="course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Modules</a>
                            <a href="course_problem.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Level Problems</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>

        
    </body>
</html>
