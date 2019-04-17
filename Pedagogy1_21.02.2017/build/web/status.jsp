<%--
    Document   : main_page
    Created on : Jul 3, 2013, 11:29:46 AM
    Author     : krishna
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
        var message="Sorry, right-click has been disabled";

        function clickIE() {if (document.all) {(message);return false;}}
        function clickNS(e) {if
            (document.layers||(document.getElementById&&!document.all)) {
                if (e.which==2||e.which==3) {(message);return false;}}}
        if (document.layers)
        {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
        else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
        document.oncontextmenu=new Function("return false")


    </script>


    <script type="text/javascript">
        function check(cb)
        {
            document.getElementById(cb).submit();
        }

        function chMd1()
        {
            var a=document.getElementById("Institutions").value;
            if(a=='All')
            {
                return false;
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
                        <a href="status.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password%>" class="current">Course Status</a>
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
                <h2 class="head">Course Status </h2>
                <div id="screen" style="min-height:800px;width: 100%;" >

                    <table align="center" cellpadding="2" cellspacing="2" class="contenttable" border="2" width="100%" style="table-layout: fixed">

                        <thead>
                            <tr>
                                <th  style="white-space:nowrap; overflow: hidden;">Course Name</th>
                                <th   style="white-space:nowrap; overflow: hidden;">Status</th>
                                <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) {%>
                                <th   style="white-space:nowrap; overflow: hidden;">Release</th>
                                <%}%>
                            </tr>
                        </thead>

                        <tbody>
                            <%
                                        String name = null;
                                        String cname = null;
                                        String dname = null;

                                        String status = null;
                                        //String id = request.getParameter("COURSE_ID");
                                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                        Connection connection2 = null;
                                        PreparedStatement pstatement2 = null;
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        //ArrayList<String> result = new ArrayList<String>();

                                        ResultSet rs2 = null;


                                        try {
                                            connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                            String queryString2 = "SELECT * FROM register_user WHERE NAME='Confirm' OR DNAME='Confirm' OR CNAME='Confirm' OR CNAME='complete' OR CNAME='con' OR CNAME='Completed' ORDER BY COURSE_NAME";
                                            pstatement2 = connection2.prepareStatement(queryString2);

                                            rs2 = pstatement2.executeQuery();
                                            while (rs2.next()) {
                                                name = rs2.getString("NAME");
                                                cname = rs2.getString("CNAME");
                                                dname = rs2.getString("DNAME");
                                                if (name.equals("Confirm")) {
                                                    status = "Under Review";
                                                } else if (dname.equals("Confirm")) {
                                                    status = "Under Review";
                                                } else if (cname.equals("Completed")) {
                                                    status = "Completed";
                                                } else if (cname.equals("Confirm")) {
                                                    status = "Review Completed";
                                                }else if (cname.equals("con")) {
                                                    status = "Review Completed/Final Modification going on";
                                                }
                                                else if (cname.equals("complete")) {
                                                    status = "Course Development Completed/Course Released";
                                                }


                            %>

                            <tr>

                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(2)%>"><%=rs2.getString(2)%></td>
                                <td style="white-space:nowrap; overflow: hidden;" title="<%=rs2.getString(3)%>"><%=status%></td>
                                <% if (("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) && ("Completed".equals(cname))) {%>
                                <td style="white-space:nowrap; overflow: hidden;" title=""> <a href="JavaScript:window.location='release_course.jsp?COURSE_NAME=<%=rs2.getString(2)%>&USER_ID=<%=rs2.getString(1)%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password%>'" class="hbox">Release Course</a></td>
                                <%} else if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password)) {%>
                                <td style="white-space:nowrap; overflow: hidden;" title=""> </td>
                                <%}%>



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
