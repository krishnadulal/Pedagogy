<%--
    Document   : main_page
    Created on : Jul 3, 2013, 11:29:46 AM
    Author     : Prasanta
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Submit For Review</a>
                    </li>
                    <li style="float: right">
                        <a href="profile_edit.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&USER_ID=<%=user_id%>">Edit Profile</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <%} else {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Pedagogical Review</a>
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
                    <form action="peda_login.jsp" method="post" name="peda_review" id="peda_review">
                    <input type="hidden" name="LOGIN" id="LOGIN" value="<%=login%>"/>
                    <input type="hidden" name="PASSWORD_ID" id="PASSWORD_ID" value="<%=password_id%>"/>
                    <input type="hidden" name="EMAIL" id="EMAIL" value="<%=email%>"/>
                    <input type="hidden" name="PASSWORD" id="PASSWORD" value="<%=password%>"/>
                    <input type="hidden" name="COURSE_ID" id="COURSE_ID" value="<%=course_id%>"/>
                    <input type="hidden" name="USER_ID" id="USER_ID" value="<%=user_id%>"/>
                    <div style="margin-top:2px; float:right;" class="buttons">
                        <a class="button" href="javascript:void(0)" onclick="document.forms['peda_review'].submit();">Pedagogical Review Page</a>
                    </div>
                    <div class="dashboard-heading" style="border:none;color: #FF0000;height:30px">Course Review:-</div>
                    <div class="clear">&nbsp;</div>
                    <table border="1" align="center" cellpadding="0" cellspacing="0" class="contenttable" width="100%" style="table-layout: fixed">
                        <thead>
                            <tr>
                                <th width="28%" style="white-space:nowrap;overflow: hidden;">Course Name</th>
                                <th width="6%" style="white-space:nowrap;overflow: hidden;">Status</th>
                                <th width="17%" style="white-space:nowrap;overflow: hidden;">Principal Developer Name</th>
                                <th width="16%" style="white-space:nowrap;overflow: hidden;">Co Developer1 Name</th>
                                <th width="16%" style="white-space:nowrap;overflow: hidden;">Co Developer2 Name</th>
                                <th width="17%" style="white-space:nowrap;overflow: hidden;">Co-Ordinator Name</th>
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
                                <input align="middle" id="EMAIL2" name="EMAIL2" type="hidden" value="<%=rs2.getString(36)%>"/>
                                <input align="middle" id="PASSWORD2" name="PASSWORD2" type="hidden" value="<%=rs2.getString(37)%>"/>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(2)%></td>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(17)%></td>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(5)%></td>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(11)%></td>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(12)%></td>
                                <td style="white-space:nowrap;overflow: hidden;"><%=rs2.getString(13)%></td>

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
                    </form>
                </div>
            </div>

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>