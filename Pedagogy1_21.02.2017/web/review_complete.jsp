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
    </head>
    <script type="text/javascript" language=JavaScript>
        var message = "Sorry, right-click has been disabled";
        function clickIE()
        {
            if (document.all)
            {
                (message);
                return false;
            }
        }
        function clickNS(e) {
            if (document.layers || (document.getElementById && !document.all))
            {
                if (e.which == 2 || e.which == 3)
                {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers)
        {
            document.captureEvents(Event.MOUSEDOWN);
            document.onmousedown = clickNS;
        }
        else {
            document.onmouseup = clickNS;
            document.oncontextmenu = clickIE;
        }
        document.oncontextmenu = new Function("return false")
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
            String user_id = request.getParameter("USER_ID");

            String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
            Connection connection = null;
            PreparedStatement pstatement = null;
            ResultSet rs = null;
            String email = null;
            String password = null;
            String coursename = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
            String resultString = "select * from register_user WHERE USER_ID='" + user_id + "'  ";
            pstatement = connection.prepareStatement(resultString);

            rs = pstatement.executeQuery();
            while (rs.next()) {
                email = rs.getString(6);
                password = rs.getString(9);
                coursename = rs.getString(2);

            }
            rs.close();
            connection.close();
        %>
        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Course for Domain review </h2>
                <div id="screen" style="min-height: 800px" align="center">
                    <br></br>
                    <%                        request.setCharacterEncoding("utf-8");
                        String cstatus = null;
                        String rate = null;
                        cstatus = request.getParameter("cstatus");
                        rate = request.getParameter("rate");
                        if ("Confirm".equals(cstatus)) {
                            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                            Connection connection1 = null;
                            PreparedStatement pstatement1 = null;
                            PreparedStatement pstatement3 = null;
                            PreparedStatement pstatement2 = null;
                            PreparedStatement pstatement4 = null;
                            PreparedStatement a = null;
                            ResultSet rs4 = null;

                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            // int updateQuery = 0;
                            try {
                                connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                String queryString = "UPDATE register_user SET CNAME = '" + cstatus + "' WHERE USER_ID='" + user_id + "'";
                                pstatement1 = connection1.prepareStatement(queryString);
                                pstatement1.executeUpdate();
                                String rating = "UPDATE register_user SET COURSE_RATING = '" + rate + "' WHERE USER_ID='" + user_id + "'";
                                a = connection1.prepareStatement(rating);
                                a.executeUpdate();
                                String queryString2 = "UPDATE register_user SET DNAME = 'NULL' WHERE USER_ID='" + user_id + "'";
                                pstatement2 = connection1.prepareStatement(queryString2);
                                pstatement2.executeUpdate();
                                String val = "SELECT REVIEW_COMPLETE_TIME FROM course WHERE USER_ID='" + user_id + "'";
                                pstatement4 = connection1.prepareStatement(val);
                                rs4 = pstatement4.executeQuery();
                                while (rs4.next()) {
                                    if (rs4.getString(1).equals("0000-00-00 00:00:00")) {
                                        String queryString4 = "UPDATE course SET REVIEW_COMPLETE_TIME=DATE_FORMAT(NOW(),'%d %b %y %h:%i %p') WHERE USER_ID='" + user_id + "'";
                                        pstatement3 = connection1.prepareStatement(queryString4);
                                    } else {
                                        String queryString4 = "UPDATE course SET REVIEW_COMPLETE_TIME=CONCAT('" + rs4.getString(1) + "',',',DATE_FORMAT(NOW(),'%d %b %y %h:%i %p')) WHERE USER_ID='" + user_id + "'";
                                        pstatement3 = connection1.prepareStatement(queryString4);
                                    }
                                    pstatement3.executeUpdate();
                                }
                            } catch (Exception ex) {
                                out.println("Unable to connect to Database." + ex.getMessage());
                            } finally {
                                rs4.close();
                                pstatement1.close();
                                pstatement2.close();
                                pstatement3.close();
                                pstatement4.close();
                                connection1.close();
                            }
                    %>
                    <h2> Submitted Successfully</h2>
                    <h3> <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: large; font-weight: bold"> Back</a></h3>
                    <%} else {%>
                    <h3 align="center" style="color: #9F1D20"> Is your course review complete? </h3>
                    <h4 align="center" >If you press Confirm button, then you can not modify/update your course. Your user name and password will be deactivated. </h4>
                    <form action="review_complete.jsp" method="post">
                        <input type="hidden" name="EMAIL_ID" id="email" value="<%=email%>" />
                        <input type="hidden" name="PASSWORD" id="password" value="<%=password%>" />
                        <input type="hidden" name="USER_ID" id="user_id" value="<%=user_id%>" />
                        <input type="hidden" name="LOGIN" id="login" value="<%=login%>" />
                        <input type="hidden" name="PASSWORD_ID" id="pasword_id" value="<%=password_id%>" />
                        <input type="hidden" name="COURSE_NAME" id="coursename" value="<%=coursename%>"/>
                        <b>  Please rate the course (out of 7)
                            <input type="radio" name="rate" value="1" > 1 &nbsp;&nbsp;
                                <input type="radio" name="rate" value="2"> 2 &nbsp;&nbsp;
                                    <input type="radio" name="rate" value="3"> 3 &nbsp;&nbsp;
                                        <input type="radio" name="rate" value="4"> 4 &nbsp;&nbsp;
                                            <input type="radio" name="rate" value="5"> 5 &nbsp;&nbsp;
                                                <input type="radio" name="rate" value="6"> 6 &nbsp;&nbsp;
                                                    <input type="radio" name="rate" value="7"> 7 &nbsp;&nbsp;</b>
                                                        <input type="submit" name="cstatus" value="Confirm" />
                                                        </form>
                                                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: large; font-weight: bold"> Back</a>
                                                        <%}%>
                                                        </div>
                                                        </div>
                                                        </div>
                                                        <div align="center" id="footer" style="background-color: #112635">
                                                            Copyright &copy; 2013 CET,IITKGP
                                                        </div>
                                                        </body>
                                                        </html>
