<%-- 
    Document   : discipline1
    Created on : Nov 28, 2013, 12:59:13 PM
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
        function check(cb)
        {
            document.getElementById(cb).submit();
        }

        function chMd1(id)
        {
            document.getElementById(id).style.display="block";
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
                        String discp1 = request.getParameter("Disciplines");
                        String login = request.getParameter("LOGIN");
                        String password = request.getParameter("PASSWORD_ID");

            %>
            <div id="tabs">
                <ul>
                    <li style="float: left">
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" class="current">Discipline</a>
                    </li>


                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>">Submit For Review</a>
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
                <h2 class="head"> Approved Courses </h2>
                <div id="screen" style="min-height:800px">

                    <div align="left" style="border:none;font-size: 14px">
                        <form action="discipline1.jsp" method="post" >
                            <b> Filter Courses by Discipline:</b>
                            <select name="Disciplines" id="Disciplines">
                                <option value="All">-------:All Disciplines:------</option>>
                                <%
                                            request.setCharacterEncoding("UTF-8");
                                            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                            Connection connection1 = null;
                                            ResultSet rs1 = null;
                                            ArrayList<String> places = new ArrayList<String>();
                                            Statement statement1 = null;

                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                            try {
                                                String resultString = " SELECT * FROM register_user group by DISCIPLINE";
                                                statement1 = connection1.createStatement();
                                                rs1 = statement1.executeQuery(resultString);

                                                while (rs1.next()) {
                                                    out.println("<option value='" + rs1.getString(4) + "'>" + rs1.getString(4) + "</option>");
                                                    places.add(rs1.getString(4));
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
                            <input  onClick="chMd1('td2')" name="submit" type="submit" value="Search" />
                        </form>
                    </div>
                    <br></br>
                    <%if (discp1.equals("All")) {%>
                    <br></br>
                    <%} else {%>
                    <div align="center" style="font-size:x-large;background-color:#B9D9FF; color: #00C"><%=discp1%></div>
                    <%}%>
                    <table align="center" cellpadding="0" cellspacing="0" class="contenttable" border="1" width="100%">
                        <thead>
                            <tr>

                                <th  style="white-space:nowrap;  ">Sr. No.:-</th>
                                <th  style="white-space:nowrap;">Course Name</th>
                                <th  style="white-space:nowrap;"> Institute</th>

                            </tr>
                        </thead>

                        <tbody>
                            <%
                                        int i = 1;
                                        String coursename = null;
                                        //String id = request.getParameter("COURSE_ID");
                                        // String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                        Connection connection2 = null;
                                        PreparedStatement pstatement2 = null;
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        //ArrayList<String> result = new ArrayList<String>();
                                        String queryString2 = null;
                                        ResultSet rs2 = null;


                                        try {
                                            connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                            if (discp1.equals("All")) {
                                                queryString2 = "SELECT * FROM register_user ORDER BY COURSE_NAME";
                                            } else {
                                                queryString2 = "SELECT * FROM register_user where DISCIPLINE='" + discp1 + "' ORDER BY COURSE_NAME";
                                            }
                                            pstatement2 = connection2.prepareStatement(queryString2);

                                            rs2 = pstatement2.executeQuery();
                                            while (rs2.next()) {
                                                coursename = rs2.getString(2);
                            %>
                            <tr>
                                <form action="course_details.jsp" method="post" id="<%=rs2.getString(1)%>">
                                    <input type="hidden" name="EMAIL_ID" value="<%=rs2.getString(6)%>" />
                                    <input type="hidden" name="PASSWORD" value="<%=rs2.getString(9)%>" />
                                    <input type="hidden" name="USER_ID" value="<%=rs2.getString(1)%>" />
                                    <input type="hidden" name="LOGIN" value="<%=login%>" />
                                    <input type="hidden" name="PASSWORD_ID" value="<%=password%>" />
                                    <input type="hidden" name="COURSE_NAME" value="<%=coursename%>"/>
                                    <td style="white-space:nowrap;"><%=i++%></td>
                                    <td style="white-space:nowrap;"><a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();"><%=rs2.getString(2)%></a></td>
                                    <td style="white-space:nowrap;"><%=rs2.getString(3)%></td>


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

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
