<%--
    Document   : main_page
    Created on : Jul 3, 2013, 11:29:46 AM
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
    </head>
    <script type="text/javascript" language=JavaScript>
        var message = "Sorry, right-click has been disabled";
        function clickIE() {
            if (document.all) {
                (message);
                return false;
            }
        }
        function clickNS(e) {
            if
                    (document.layers || (document.getElementById && !document.all)) {
                if (e.which == 2 || e.which == 3) {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers)
        {
            document.captureEvents(Event.MOUSEDOWN);
            document.onmousedown = clickNS;
        } else {
            document.onmouseup = clickNS;
            document.oncontextmenu = clickIE;
        }
        document.oncontextmenu = new Function("return false")
        function check(cb)
        {
            document.getElementById(cb).submit();
        }

        function chMd1()
        {
            var a = document.getElementById("Institutions").value;
            if (a == 'All')
            {
                return false;
            }
        }
        function change(db) {
            document.getElementById("complete").style.display = "none";
            document.getElementById("incomplete").style.display = "none";
            if (db == "com") {
                document.getElementById("complete").style.display = "block";
            } else {
                document.getElementById("incomplete").style.display = "block";
            }
        }
    </script>
    <body>
        <%
            String login = request.getParameter("LOGIN");
            String password = request.getParameter("PASSWORD_ID");

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
                    <li style="float: left;">
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left;">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" class="current">Courses</a>
                    </li>
                    <li style="float: left;">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Discipline</a>
                    </li>
                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) {%>
                    <li style="float: left;">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Submit For Review</a>
                    </li>
                    <li style="float: left;">
                        <a href="log.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Log</a>
                    </li>
                    <li style="float:right;">
                        <a href="register_course.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Register Your Course</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <li style="float: right;">
                        <a href="main.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Assign Reviewer</a>
                    </li>
                    <li style="float: right;">
                        <a href="pedagogy_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Assign Pedagogy Reviewer</a>
                    </li>
                    <%} else {
                    %>
                    <li style="float: left;">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left;">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Domain Review</a>
                    </li>
                    <li style="float: right;background-color: #FF0000;color: #FF0000;">
                        <a href="admin.jsp"  style="color: #FF0000;font-weight: 900;">Administrator</a>
                    </li>

                    <%}%>


                    <li style="float: left;">
                        <a href="status.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Course Status</a>
                    </li>
                    <li style="float: left;">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="main" style="min-height:800px;">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Approved Courses </h2>
                <div id="screen" style="min-height:800px;width: 100%;" >

                    <div style="border:none;font-size: 14px;width: 100%;">
                        <div style="float: left" class="buttons">
                            <a class="button" href="JavaScript:void(0);" onclick="change('com');">Completed Courses</a> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a class="button" href="JavaScript:void(0);" onclick="change('incom');" >Incomplete Courses</a>
                        </div>
                        <div style="float: next">

                            <form action="main_page1.jsp" method="post" >
                                <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filter Courses by Institute:</b>
                                <select name="Institutions" id="Institutions">
                                    <option value="All">-------:All Institutes:------</option>>
                                    <%
                                        request.setCharacterEncoding("UTF-8");
                                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                        Connection connection1 = null;
                                        ResultSet rs1 = null;
                                        ArrayList<String> places = new ArrayList<String>();
                                        Statement statement1 = null;
                                        int i = 1;
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        try {
                                            String resultString = " SELECT * FROM register_user group by INSTITUTE";
                                            statement1 = connection1.createStatement();
                                            rs1 = statement1.executeQuery(resultString);

                                            while (rs1.next()) {
                                                out.println("<option value='" + rs1.getString(3) + "'>" + rs1.getString(3) + "</option>");
                                                places.add(rs1.getString(4));
                                            }
                                        } catch (Exception ex) {
                                            out.println("Unable to connect to Database." + ex.getMessage());
                                        } finally {
                                           // rs1.close();
                                            statement1.close();
                                            connection1.close();
                                        }
                                    %>
                                </select>
                                <input type="hidden" name="LOGIN" value="<%=login%>" />
                                <input type="hidden" name="PASSWORD_ID" value="<%=password%>" />
                                <input onClick="return chMd1();" name="submit" type="submit" value="Search" />
                            </form>
                        </div>
                    </div>    
                    <br></br>
                    <div id="complete" name="complete" style=" display: block">
                        <table align="center" cellpadding="2" cellspacing="2" class="contenttable" border="2" width="100%" style="table-layout: fixed;">

                            <thead>
                                <tr>
                                    <th width="28%" style="white-space:nowrap; overflow: hidden;">Course Name</th>
                                    <th width="22%" style="white-space:nowrap; overflow: hidden;">Institute</th>
                                    <th width="18%" style="white-space:nowrap; overflow: hidden;">Discipline</th>
                                    <th width="15%" style="white-space:nowrap; overflow: hidden;">Principal Developer Name</th>
                     <th width="10%" style="white-space:nowrap; overflow: hidden;">Action verb Check</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    String coursename = null;
                                    String name = null;
                                    String cname = null;
                                    String dname = null;
                                    //String id = request.getParameter("COURSE_ID");
                                  //  String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                    Connection connection2 = null;
                                    PreparedStatement pstatement2 = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    //ArrayList<String> result = new ArrayList<String>();

                                    ResultSet rs2 = null;

                                    try {
                                        connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        String queryString2 = "SELECT * FROM register_user WHERE NAME IS NOT NULL OR DNAME IS NOT NULL OR CNAME IS NOT NULL ORDER BY COURSE_NAME";
                                        pstatement2 = connection2.prepareStatement(queryString2);

                                        rs2 = pstatement2.executeQuery();
                                        while (rs2.next()) {
                                            coursename = rs2.getString(2);
                                            name = rs2.getString("NAME");
                                            cname = rs2.getString("CNAME");
                                            dname = rs2.getString("DNAME");
                                %>

                                <tr>
                                    <form action="course_details.jsp" method="post" id="<%=rs2.getString(1)%>">
                                        <input type="hidden" name="EMAIL_ID" value="<%=rs2.getString(6)%>" />
                                        <input type="hidden" name="PASSWORD" value="<%=rs2.getString(9)%>" />
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="LOGIN" value="<%=login%>" />
                                        <input type="hidden" name="PASSWORD_ID" value="<%=password%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>

                                        <%if ("Confirm".equals(name) || "Confirm".equals(dname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Under Review)</sup></td></div>
                                                    <%} else if ("con".equals(cname) || "Confirm".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Review Completed)</sup></td></div>
                                                    <%} else if ("complete".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Course Released)</sup></td></div>
                                                    <%} else if ("Completed".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Course Completed)</sup></td></div>
                                                    <%} else {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a></td></div>
                                                <%}%>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(3)%>"><%=rs2.getString(3)%></td>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(4)%>"><%=rs2.getString(4)%></td>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(5)%>"><%=rs2.getString(5)%></td>
                                    </form>
                                    <form action="ReportPDF" method="get" id="report_<%=rs2.getString(1)%>">
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>
                                        <td align="center">
                                            <div style="margin-top:2px;" class="buttons">
                                                <a class="button" href="javascript:void(0)" onclick="document.getElementById('report_<%=rs2.getString(1)%>').submit();">Report</a>

                                            </div>
                                        </td>
                                    </form>
                                    <form action="ObjectivePDF" method="get" id="objective_<%=rs2.getString(1)%>">
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>
                                        <td align="center">
                                            <div style="margin-top:2px;" class="buttons">
                                                <a class="button" href="javascript:void(0)" onclick="document.getElementById('objective_<%=rs2.getString(1)%>').submit();">Check</a>

                                            </div>
                                        </td>
                                    </form>
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
                    <div id="incomplete" name="incomplete" style=" display: none">
                        <table align="center" cellpadding="2" cellspacing="2" class="contenttable" border="2" width="100%" style="table-layout: fixed;">

                            <thead>
                                <tr>
                                    <th width="28%" style="white-space:nowrap; overflow: hidden;">Course Name</th>
                                    <th width="22%" style="white-space:nowrap; overflow: hidden;">Institute</th>
                                    <th width="18%" style="white-space:nowrap; overflow: hidden;">Discipline</th>
                                    <th width="15%" style="white-space:nowrap; overflow: hidden;">Principal Developer Name</th>
                                    <th width="7%" style="white-space:nowrap; overflow: hidden;">Report Page</th>
                                    <th width="10%" style="white-space:nowrap; overflow: hidden;">Action verb Check</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    try {
                                        connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        String queryString2 = "SELECT * FROM register_user WHERE NAME IS NULL AND DNAME IS NULL AND CNAME IS NULL ORDER BY COURSE_NAME";
                                        pstatement2 = connection2.prepareStatement(queryString2);

                                        rs2 = pstatement2.executeQuery();
                                        while (rs2.next()) {
                                            coursename = rs2.getString(2);
                                            name = rs2.getString("NAME");
                                            cname = rs2.getString("CNAME");
                                            dname = rs2.getString("DNAME");
                                %>

                                <tr>
                                    <form action="course_details.jsp" method="post" id="<%=rs2.getString(1)%>">
                                        <input type="hidden" name="EMAIL_ID" value="<%=rs2.getString(6)%>" />
                                        <input type="hidden" name="PASSWORD" value="<%=rs2.getString(9)%>" />
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="LOGIN" value="<%=login%>" />
                                        <input type="hidden" name="PASSWORD_ID" value="<%=password%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>

                                        <%if ("Confirm".equals(name) || "Confirm".equals(dname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Under Review)</sup></td></div>
                                                    <%} else if ("con".equals(cname) || "Confirm".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Review Completed)</sup></td></div>
                                                    <%} else if ("complete".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Course Released)</sup></td></div>
                                                    <%} else if ("Completed".equals(cname)) {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a><sup style="color: #006000"> (Course Completed)</sup></td></div>
                                                    <%} else {%>
                                        <div><td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a></td></div>
                                                <%}%>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(3)%>"><%=rs2.getString(3)%></td>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(4)%>"><%=rs2.getString(4)%></td>
                                        <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(5)%>"><%=rs2.getString(5)%></td>
                                    </form>
                                    <form action="ReportPDF" method="get" id="report_<%=rs2.getString(1)%>">
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>
                                        <td align="center">
                                            <div style="margin-top:2px;" class="buttons">
                                                <a class="button" href="javascript:void(0)" onclick="document.getElementById('report_<%=rs2.getString(1)%>').submit();">Report</a>

                                            </div>
                                        </td>
                                    </form>
                                    <form action="ObjectivePDF" method="get" id="objective_<%=rs2.getString(1)%>">
                                        <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                        <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>
                                        <td align="center">
                                            <div style="margin-top:2px;" class="buttons">
                                                <a class="button" href="javascript:void(0)" onclick="document.getElementById('objective_<%=rs2.getString(1)%>').submit();">Check</a>

                                            </div>
                                        </td>
                                    </form>
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

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
