<%-- 
    Document   : log
    Created on : Dec 10, 2014, 11:06:25 AM
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


    </script>


    <script type="text/javascript">
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

    </script>
    <body>
        <%
            String course_id = null;
            String submit = null;
            submit = request.getParameter("submit");
            course_id = request.getParameter("Courses");
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
                    <li style="float: left">
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Discipline</a>
                    </li>
                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Submit For Review</a>
                    </li>
                    <li style="float: left">
                        <a href="log.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" class="current">Log</a>
                    </li>
                    <li style="float:right">
                        <a href="register_course.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Register Your Course</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <li style="float: right">
                        <a href="main.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Assign Reviewer</a>
                    </li>
                    <li style="float: right">
                        <a href="pedagogy_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" >Assign Pedagogy Reviewer</a>
                    </li>
                    <%} else {
                    %>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Domain Review</a>
                    </li>
                    <li style="float: right;background-color: #FF0000;color: #FF0000">
                        <a href="admin.jsp"  style="color: #FF0000;font-weight: 900">Administrator</a>
                    </li>
                    <%}%>
                    <li style="float: left">
                        <a href="status.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Course Status</a>
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
                <h2 class="head">Course Log </h2>
                <div id="screen" style="min-height:800px;width: 100%;" >
                    <br></br>
                    <div align="center" style="border:none;font-size: 14px;width: 100%;">
                        <form action="log.jsp" method="get" >
                            <b> Filter Courses by Name:</b>
                            <select name="Courses" id="Courses">
                                <option value="All">-------:All Courses:------</option>>
                                <%
                                    request.setCharacterEncoding("UTF-8");
                                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                    Connection connection1 = null;
                                    ResultSet rs1 = null;

                                    Statement statement1 = null;
                                    int i = 1;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                    try {
                                        String resultString = " SELECT * FROM course order by COURSE_NAME";
                                        statement1 = connection1.createStatement();
                                        rs1 = statement1.executeQuery(resultString);

                                        while (rs1.next()) {
                                            out.println("<option value='" + rs1.getString(1) + "'>" + rs1.getString(2) + "</option>");
                                        }
                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());
                                    } finally {
                                        rs1.close();
                                        statement1.close();
                                        connection1.close();
                                    }
                                %>
                            </select>
                            <input type="hidden" name="LOGIN" value="<%=login%>" />
                            <input type="hidden" name="PASSWORD_ID" value="<%=password%>" />
                            <input type="submit" name="submit" value="Search" />
                        </form>
                    </div>
                    <br></br>
                    <%if ("Search".equals(submit)) {%>
                    <%

                        Connection connection2 = null;
                        PreparedStatement pstatement2 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();
                        String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?zeroDateTimeBehavior=convertToNull";
                        ResultSet rs2 = null;

                        try {
                            connection2 = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                            String queryString2 = "SELECT * FROM course WHERE COURSE_ID='" + course_id + "'";
                            pstatement2 = connection2.prepareStatement(queryString2);

                            rs2 = pstatement2.executeQuery();
                            while (rs2.next()) {
                                System.out.println(rs2.getString(11));


                    %>
                    <div align="center">
                        <h2> Course Name :- <%=rs2.getString(2)%>  </h2>
                    </div>
                    <table align="center" cellpadding="2" cellspacing="2" class="contenttable" border="1" width="70%" style="table-layout: fixed;width: 60%;border: solid">
                        <tbody>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Submitted For Review on" width="30%">Submitted For Review on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(11)%>" width="70%"><%=rs2.getString(11)%></td>
                            </tr>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Submitted For Domain Review on">Submitted For Domain Review on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(12)%>"><%=rs2.getString(12)%></td>
                            </tr>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Review Completed on">Review Completed on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(13)%>"><%=rs2.getString(13)%></td>
                            </tr>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Back To The Developer on">Back To The Developer on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(14)%>"><%=rs2.getString(14)%></td>
                            </tr>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Final Submission on">Final Submission on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(15)%>"><%=rs2.getString(15)%></td>
                            </tr>
                            <tr>
                                <td style="white-space:nowrap; overflow: hidden;" title="Course Released on">Course Released on:-</td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(16)%>"><%=rs2.getString(16)%></td>
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
                    <%}%>
                </div>
            </div>
        </div>
        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>
    </body>
</html>
