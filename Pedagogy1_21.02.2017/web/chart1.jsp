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
        <link href="CSS/styles.css" rel="stylesheet" />
        <script type="text/javascript" src="JavaScript/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="JavaScript/dx.chartjs.js"></script>
        <script type="text/javascript">

            function open_in_new_tab(url)
            {
                var win = window.open(url, '_blank');
                win.focus();
            }
        </script>
    </head>     <script type="text/javascript" language=JavaScript>         var message = "Sorry, right-click has been disabled";            function clickIE() {
            if (document.all) {
                (message);
                return false;
            }
        }
        function clickNS(e) {
            if (document.layers || (document.getElementById && !document.all)) {
                if (e.which == 2 || e.which == 3) {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers) {
            document.captureEvents(Event.MOUSEDOWN);
            document.onmousedown = clickNS;
        } else {
            document.onmouseup = clickNS;
            document.oncontextmenu = clickIE;
        }
        document.oncontextmenu = new Function("return false")</script>

    <body>
        <%
            String id = request.getParameter("COURSE_ID");
            String email_id = request.getParameter("EMAIL_ID");
            String email1 = request.getParameter("email1");
            String email2 = request.getParameter("email2");
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
                    <%} else if (email1.equals("null")) {%>
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


                        %>
                        <a href="#" onclick="open_in_new_tab('fullcourse.jsp?COURSE_ID=<%=id%>')" style="font-size: small;color:#FFFFFF">Full Course View</a>
                        <a href="chart1.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: small;color: #9F1D20" class="current">Analysis</a>
                        &nbsp;&nbsp;<a style="font-size: small"><%=email%></a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                        <%}
                            } catch (Exception ex) {
                                out.println("Unable to connect to Database." + ex.getMessage());

                            } finally {
                                // close all the connections.
                                pstatement3.close();
                                connection3.close();
                            }
                        %>

                    </li>
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
                            var oaktree = new jktreeview("tree2")
                            oaktree.addItem("Institute's Mission", "", "mission.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Institute's Vision", "", "vision.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Program Educational Objectives", "", "po.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2 = oaktree.addItem("Course: <%=course%>", "", "coursename.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Overview", branch2, "course_overview.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Objectives", branch2, "course_objectives.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2_4 = oaktree.addItem("Course modules", branch2, "course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Problems", branch2, "course_problem.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%while (rs.next()) {%>
                            var branch3 = oaktree.addItem("Module:<%=rs.getString(2)%>", branch2_4, "modulename.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Module Overview", branch3, "module_overview.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Module Objectives", branch3, "module_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch4 = oaktree.addItem("Module Units", branch3, "JavaScript:window.location='module_unit.jsp?MODULE_ID=<%=rs.getString(1)%>&COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'")
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
                            var branch5 = oaktree.addItem("Unit: <%=rs1.getString(2)%>", branch4, "unitname.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
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
            <div id="right-main">
                <h2 class="head" >
                    <%=course%>
                </h2>

                <div id="screen">
                    <%
                        String[] temp, temp1, temp2 = null;
                        String level = null;
                        String level1 = null;
                        String level2 = null;
                        int k = 0, c = 0, ap = 0, an = 0, s = 0, e = 0, p = 0, k1 = 0, c1 = 0, ap1 = 0, an1 = 0, s1 = 0, e1 = 0;
                        int k_m = 0, c_m = 0, ap_m = 0, an_m = 0, s_m = 0, e_m = 0, p_m = 0, k1_m = 0, c1_m = 0, ap1_m = 0, an1_m = 0, s1_m = 0, e1_m = 0;
                        int k_u = 0, c_u = 0, ap_u = 0, an_u = 0, s_u = 0, e_u = 0, p_u = 0, k1_u = 0, c1_u = 0, ap1_u = 0, an1_u = 0, s1_u = 0, e1_u = 0;
                        Connection connection5 = null;
                        PreparedStatement pstatement5 = null;
                        Connection connection6 = null;
                        PreparedStatement pstatement6 = null;
                        Connection connection7 = null;
                        PreparedStatement pstatement7 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        ResultSet rs5 = null;
                        ResultSet rs6 = null;
                        ResultSet rs7 = null;
                        try {

                            connection5 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            connection6 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            connection7 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString1 = "SELECT * FROM courseobjective WHERE COURSE_ID='" + id + "'";
                            String queryString2 = "SELECT * FROM moduleobjective WHERE COURSE_ID='" + id + "'";
                            String queryString3 = "SELECT * FROM unitobjective WHERE COURSE_ID='" + id + "'";
                            pstatement5 = connection5.prepareStatement(queryString1);
                            pstatement6 = connection6.prepareStatement(queryString2);
                            pstatement7 = connection7.prepareStatement(queryString3);
                            rs5 = pstatement5.executeQuery();
                            rs6 = pstatement6.executeQuery();
                            rs7 = pstatement7.executeQuery();
                            while (rs5.next()) {
                                level = rs5.getString(4);
                                temp = level.split(":", 2);
                                if ("Knowledge".equals(temp[0])) {
                                    k++;
                                } else if ("Comprehension".equals(temp[0])) {
                                    c++;
                                } else if ("Application".equals(temp[0])) {
                                    ap++;
                                } else if ("Analysis".equals(temp[0])) {
                                    an++;
                                } else if ("Synthesis".equals(temp[0])) {
                                    s++;
                                } else if ("Evaluation".equals(temp[0])) {
                                    e++;
                                }

                            }
                            p = k + c + ap + an + s + e;
                            if (p == 0) {
                                k1 = 0;
                                ap1 = 0;
                                an1 = 0;
                                c1 = 0;
                                s1 = 0;
                                e1 = 0;
                            } else {
                                k1 = (k * 100) / p;
                                ap1 = (ap * 100) / p;
                                an1 = (an * 100) / p;
                                c1 = (c * 100) / p;
                                s1 = (s * 100) / p;
                                e1 = (e * 100) / p;
                            }
                            while (rs6.next()) {
                                level1 = rs6.getString(4);
                                temp1 = level1.split(":", 2);
                                if ("Knowledge".equals(temp1[0])) {
                                    k_m++;
                                } else if ("Comprehension".equals(temp1[0])) {
                                    c_m++;
                                } else if ("Application".equals(temp1[0])) {
                                    ap_m++;
                                } else if ("Analysis".equals(temp1[0])) {
                                    an_m++;
                                } else if ("Synthesis".equals(temp1[0])) {
                                    s_m++;
                                } else if ("Evaluation".equals(temp1[0])) {
                                    e_m++;
                                }
                            }
                            p_m = k_m + c_m + ap_m + an_m + s_m + e_m;
                            if (p_m == 0) {
                                k1_m = 0;
                                ap1_m = 0;
                                an1_m = 0;
                                c1_m = 0;
                                s1_m = 0;
                                e1_m = 0;
                            } else {
                                k1_m = (k_m * 100) / p_m;
                                ap1_m = (ap_m * 100) / p_m;
                                an1_m = (an_m * 100) / p_m;
                                c1_m = (c_m * 100) / p_m;
                                s1_m = (s_m * 100) / p_m;
                                e1_m = (e_m * 100) / p_m;
                            }
                            while (rs7.next()) {
                                level2 = rs7.getString(4);
                                temp2 = level2.split(":", 2);
                                if ("Knowledge".equals(temp2[0])) {
                                    k_u++;
                                } else if ("Comprehension".equals(temp2[0])) {
                                    c_u++;
                                } else if ("Application".equals(temp2[0])) {
                                    ap_u++;
                                } else if ("Analysis".equals(temp2[0])) {
                                    an_u++;
                                } else if ("Synthesis".equals(temp2[0])) {
                                    s_u++;
                                } else if ("Evaluation".equals(temp2[0])) {
                                    e_u++;
                                }
                            }
                            p_u = k_u + c_u + ap_u + an_u + s_u + e_u;
                            if (p_u == 0) {
                                k1_u = 0;
                                ap1_u = 0;
                                an1_u = 0;
                                c1_u = 0;
                                s1_u = 0;
                                e1_u = 0;
                            } else {
                                k1_u = (k_u * 100) / p_u;
                                ap1_u = (ap_u * 100) / p_u;
                                an1_u = (an_u * 100) / p_u;
                                c1_u = (c_u * 100) / p_u;
                                s1_u = (s_u * 100) / p_u;
                                e1_u = (e_u * 100) / p_u;
                            }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement5.close();
                            connection5.close();
                        }
                    %>
                    <script type="text/javascript">
                        $(function ()
                        {
                            $("#chartContainer").dxChart({
                                dataSource: [
                                    {percentage: "<i>Knowledge</i>", oranges: <%=k1%>},
                                    {percentage: "<i>Comprehension</i>", oranges: <%=c1%>},
                                    {percentage: "<i>Application</i>", oranges: <%=ap1%>},
                                    {percentage: "<i>Analysis</i>", oranges: <%=an1%>},
                                    {percentage: "<i>Synthesis</i>", oranges: <%=s1%>},
                                    {percentage: "<i>Evaluation</i>", oranges: <%=e1%>},
                                ],

                                series: {
                                    argumentField: "percentage",
                                    valueField: "oranges",
                                    name: "Course Objectives",
                                    type: "bar",
                                    color: "orange"
                                },
                                valueAxis: {
                                    title: {
                                        text: '<b>------>No. of Objectives ( in %)------><b>'
                                    }
                                },
                                argumentAxis: {
                                    title: {
                                        text: '<b>------>Cognitive Level------><b>'
                                    }
                                }
                            });

                            $("#chartContainer1").dxChart({
                                dataSource: [
                                    {percentage: "<i>Knowledge</i>", oranges: <%=k1_m%>},
                                    {percentage: "<i>Comprehension</i>", oranges: <%=c1_m%>},
                                    {percentage: "<i>Application</i>", oranges: <%=ap1_m%>},
                                    {percentage: "<i>Analysis</i>", oranges: <%=an1_m%>},
                                    {percentage: "<i>Synthesis</i>", oranges: <%=s1_m%>},
                                    {percentage: "<i>Evaluation</i>", oranges: <%=e1_m%>},
                                ],

                                series: {
                                    argumentField: "percentage",
                                    valueField: "oranges",
                                    name: "Module Objectives",
                                    type: "bar",
                                    color: "green"
                                },
                                valueAxis: {
                                    title: {
                                        text: '<b>------>No. of Objectives ( in %)------><b>'
                                    }
                                },
                                argumentAxis: {
                                    title: {
                                        text: '<b>------>Cognitive Level------></b>'
                                    }
                                }
                            });

                            $("#chartContainer2").dxChart({
                                dataSource: [
                                    {percentage: "<i>Knowledge</i>", oranges: <%=k1_u%>},
                                    {percentage: "<i>Comprehension</i>", oranges: <%=c1_u%>},
                                    {percentage: "<i>Application</i>", oranges: <%=ap1_u%>},
                                    {percentage: "<i>Analysis</i>", oranges: <%=an1_u%>},
                                    {percentage: "<i>Synthesis</i>", oranges: <%=s1_u%>},
                                    {percentage: "<i>Evaluation</i>", oranges: <%=e1_u%>},
                                ],

                                series: {
                                    argumentField: "percentage",
                                    valueField: "oranges",
                                    name: "Unit Objectives",
                                    type: "bar",
                                    color: "blue"
                                },
                                valueAxis: {
                                    title: {
                                        text: '<b>------>No. of Objectives ( in %)------></b>'
                                    }
                                },
                                argumentAxis: {
                                    title: {
                                        text: '<b>------>Cognitive Level------></b>'
                                    }
                                }
                            });
                        }


                        );
                    </script>

                    <div class="title">
                        <h2>Course Objectives:-</h2>
                    </div>
                    <br></br>
                    <div class="pane">

                        <div id="chartContainer" style="width: 100%; height: 340px;"></div>
                    </div>

                    <div class="title">
                        <h2>Module Objectives:-</h2>
                    </div>
                    <br></br>
                    <div class="pane">
                        <div id="chartContainer1" style="width: 100%; height: 340px;"></div>
                    </div>

                    <div class="title">
                        <h2>Unit Objectives:-</h2>
                    </div>
                    <br></br>
                    <div class="pane">
                        <div id="chartContainer2" style="width: 100%; height: 340px;"></div>
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
            } catch (err) {
            }</script>
    </body>
</html>
