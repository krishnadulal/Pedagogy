<%--
    Document   : database1
    Created on : May 24, 2013, 7:24:28 PM
    Author     : Prasanta
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script type="text/javascript" language=JavaScript>  
        var message="Sorry, right-click has been disabled";
        function clickIE() {if (document.all) {(message);return false;}}
        function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all))
            {                 if (e.which==2||e.which==3) {(message);return false;}}}
        if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
        else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
        document.oncontextmenu=new Function("return false")
    </script>
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    String user_id = request.getParameter("USER_ID");
                    String coursename = request.getParameter("COURSE_NAME");
                    String login = request.getParameter("LOGIN");
                    String password = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    
                    PreparedStatement pstatement = null;
                    PreparedStatement pstatement1 = null;
                    PreparedStatement pstatement2 = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery = 0;
                    ResultSet rs1 = null;
                    ResultSet rs2 = null;
                    String course_id = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        String resultString1 = "select * from course WHERE USER_ID='" + user_id + "'  ";
                        pstatement = connection.prepareStatement(resultString1);

                        rs1 = pstatement.executeQuery();
                        while (rs1.next()) {
                            course_id = rs1.getString(1);

                        }
                        rs1.close();
                        String queryString = "INSERT INTO release_course(COURSE_NAME, USER_ID) VALUES ('" + coursename + "', '" + user_id + "')";
                        pstatement = connection.prepareStatement(queryString);
                        updateQuery = pstatement.executeUpdate();
                        if (updateQuery != 0) {
                            String queryString1 = "UPDATE register_user SET CNAME='complete' WHERE USER_ID=" + user_id + "";
                            pstatement = connection.prepareStatement(queryString1);
                            pstatement.executeUpdate();

                            String val = "SELECT COURSE_RELEASE_TIME FROM course WHERE COURSE_ID=" + course_id + "";
                            pstatement2 = connection.prepareStatement(val);
                            rs2 = pstatement2.executeQuery();
                            while (rs2.next()) {
                                if (rs2.getString(1).equals("0000-00-00 00:00:00")) {
                                    String queryString4 = "UPDATE course SET COURSE_RELEASE_TIME=DATE_FORMAT(NOW(),'%d %b %y %h:%i %p') WHERE COURSE_ID=" + course_id + "";
                                    pstatement1 = connection.prepareStatement(queryString4);

                                } else {

                                    String queryString4 = "UPDATE course SET COURSE_RELEASE_TIME=CONCAT('" + rs2.getString(1) + "',',',DATE_FORMAT(NOW(),'%d %b %y %h:%i %p')) WHERE COURSE_ID=" + course_id + "";
                                    pstatement1 = connection.prepareStatement(queryString4);
                                }
                                pstatement1.executeUpdate();
                                pstatement1.close();
                            }
        %>
        <jsp:forward page="status.jsp">
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password%>"/>
        </jsp:forward>
        <%                                  }
                    } catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());

                    } finally {
                        // close all the connections.
                        rs2.close();
                        pstatement.close();
                        pstatement2.close();
                        connection.close();
                    }
        %>
    </body>
</html>
