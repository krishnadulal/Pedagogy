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
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>

    <body>
        <%
                    String id = request.getParameter("COURSE_ID");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String email_id = request.getParameter("EMAIL_ID");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String login = request.getParameter("LOGIN");
        %>
        <div id="header" class="noprint">
            <div id="main-heading">
                <h1>
                    National Mission Project on Education through ICT
                </h1>
                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>
            </div>

            <div id="tabs">
                <ul>
                    <%
                                 if (email1.equals("null") && email2.equals("null")) {%>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="peda_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&email1=<%=email1%>&email2=<%=email2%>&COURSE_ID=<%=id%>">Submit for Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <%} else if(email1.equals("null")){%>
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
                        <a href="pdf/help1.pdf">Reviewer Help</a>
                    </li>
                    <%}%>

                    <li style="float: right">

                        <a href="#" onclick="open_in_new_tab('fullcourse.jsp?COURSE_ID=<%=id%>')" style="font-size: small;color:#FFFFFF">Full Course View</a>
                        <a href="chart1.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: small;color: #9F1D20">Analysis</a>&nbsp;&nbsp;
                        <a style="font-size: small"><%=email%></a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>

                    </li>

                </ul>
            </div>
        </div>

        <div id="main">
            <%
                        String course = null;
                        String user = null;
                        String moduleid = request.getParameter("MODULE_ID");

                        String unitid = request.getParameter("UNIT_ID");
                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                        Connection connection4 = null;
                        PreparedStatement pstatement4 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();

                        ResultSet rs4 = null;


                        try {
                            connection4 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString4 = "SELECT * FROM course where COURSE_ID='" + id + "'";
                            pstatement4 = connection4.prepareStatement(queryString4);

                            rs4 = pstatement4.executeQuery();
                            while (rs4.next()) {
                                course = rs4.getString(2);
                                user = rs4.getString(7);
                            }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement4.close();
                            connection4.close();
                        }
            %>
            <div id="left-sidebar" class="noprint">
                <div class="head">
                    <%=course%>
                </div>
                <div class="yui-skin-sam">
                    <div id="tree2" class="menu">
                        <%

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
                            oaktree.addItem("Institute's Mission","", "mission.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Institute's Vision", "", "vision.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Program Educational Objectives", "", "po.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2=oaktree.addItem("Course: <%=course%>","", "coursename.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Overview", branch2, "course_overview.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Objectives", branch2, "course_objectives.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2_4=oaktree.addItem("Course modules", branch2, "course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Problems", branch2, "course_problem.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%while (rs.next()) {%>
                                var branch3=oaktree.addItem("Module:<%=rs.getString(2)%>", branch2_4, "modulename.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module Overview", branch3, "module_overview.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module Objectives", branch3, "module_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                var branch4=oaktree.addItem("Module Units", branch3, "JavaScript:window.location='module_unit.jsp?MODULE_ID=<%=rs.getString(1)%>&COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'")
                                oaktree.addItem("Module Level Problems", branch3, "module_problems.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module's Learning Strategy", branch3, "module_strategy.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%
                                ResultSet rs1 = null;
                                connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                String queryString1 = "SELECT * FROM unit WHERE COURSE_ID='" + rs.getString(5) + "' AND MODULE_ID='" + rs.getString(1) + "'";
                                pstatement = connection.prepareStatement(queryString1);
                                rs1 = pstatement.executeQuery();
                                while (rs1.next()) {
                            %>
                                var branch5=oaktree.addItem("Unit: <%=rs1.getString(2)%>", branch4, "unitname.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit's Summary", branch5, "unit_summary.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit's Objectives", branch5, "unit_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit Level Problems", branch5, "unit_problem.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
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
            <%
                        ResultSet rs5 = null;
                        ResultSet rs6 = null;
                        String modulename = null;
                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                        String queryString3 = "SELECT * FROM module WHERE COURSE_ID='" + id + "' AND MODULE_ID='" + moduleid + "' ";
                        pstatement = connection.prepareStatement(queryString3);
                        rs6 = pstatement.executeQuery();
                        rs6.next();
                        modulename = rs6.getString(2);
                        rs6.close();

                        try {
                            String queryString2 = "SELECT * FROM unit WHERE COURSE_ID='" + id + "' AND MODULE_ID='" + moduleid + "' AND UNIT_ID='" + unitid + "'";
                            pstatement = connection.prepareStatement(queryString2);

                            rs5 = pstatement.executeQuery();
                            rs5.next();
            %>
            <div id="right-main">
                <h2 class="head">
                    Course <%=course%> -> Module <%=modulename%> -> Unit <%=rs5.getString(2)%>
                </h2>
                <%} catch (Exception ex) {
                                out.println("Unable to connect to Database." + ex.getMessage());

                            } finally {
                                // close all the connections.
                                pstatement.close();
                                rs5.close();
                                connection.close();
                            }
                %>


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
                                        String queryString = "SELECT * FROM register_user WHERE USER_ID='" + user + "'";
                                        pstatement1 = connection1.prepareStatement(queryString);

                                        rs1 = pstatement1.executeQuery();
                                        while (rs1.next()) {

                        %>
                        <div id="members" class="info-box float-l">
                            <h3 class="icon22 icon22-users">Members</h3>


                            <p>

                                Principal Developer : <a title="" href=""><%=rs1.getString(5)%></a> <br></br>



                                Co-Developer 1 : <a title="" href=""><%=rs1.getString(11)%></a><br></br>



                                Co-Developer 2 : <a title="" href=""><%=rs1.getString(12)%></a><br></br>


                            </p>
                        </div>

                        <div id="course-information" class="info-box float-l">
                            <h3 class="icon22 icon22-tracker">Course Information</h3>
                            <p>
                                Institute : <a href=""><%=rs1.getString(3)%></a> <br></br>
                                Department : <a title="" href=""><%=rs1.getString(4)%></a> <br></br>
                                Course Information/Applications: <a href=""><%=rs1.getString(2)%></a> <br></br>
                            </p>
                        </div>
                        <div class="clear">&nbsp;</div>
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
                        <div class="home-links">


                            <a href="unit_summary.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&UNIT_ID=<%=unitid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Summary</a>
                            <a href="unit_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&UNIT_ID=<%=unitid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Objectives</a>
                            <a href="unit_problem.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&UNIT_ID=<%=unitid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Level Problems</a>


                        </div>
                    </div>
                </div>
            </div>

        </div>


        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>




        <script type="text/javascript">
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
            document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
            try {
                var pageTracker = _gat._getTracker("UA-12446669-2");
                pageTracker._trackPageview();
            } catch(err) {}</script>
    </body>
</html>
