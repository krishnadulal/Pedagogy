<%-- 
    Document   : del
    Created on : Jun 19, 2013, 5:51:33 PM
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
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    String id = request.getParameter("COURSE_ID");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String moduleid = request.getParameter("MODULE_ID");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    PreparedStatement pstatement1 = null;
                    PreparedStatement pstatement2 = null;
                    PreparedStatement pstatement3 = null;
                    PreparedStatement pstatement4 = null;
                    PreparedStatement pstatement5 = null;



                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    int updateQuery3 = 0;
                    int updateQuery4 = 0;
                    int updateQuery5 = 0;
                    int updateQuery6 = 0;
                    int updateQuery7 = 0;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        String queryString = "DELETE FROM  module  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement = connection.prepareStatement(queryString);

                        updateQuery2 = pstatement.executeUpdate();
                        String queryString1 = "DELETE FROM  unit  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement1 = connection.prepareStatement(queryString1);

                        updateQuery3 = pstatement1.executeUpdate();
                        String queryString2 = "DELETE FROM  moduleproblem  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement2 = connection.prepareStatement(queryString2);

                        updateQuery4 = pstatement2.executeUpdate();
                        String queryString3 = "DELETE FROM  moduleobjective  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement3 = connection.prepareStatement(queryString3);

                        updateQuery5 = pstatement3.executeUpdate();
                        String queryString4 = "DELETE FROM  unitobjective  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement4 = connection.prepareStatement(queryString4);

                        updateQuery6 = pstatement4.executeUpdate();
                        String queryString5 = "DELETE FROM  unitproblem  WHERE MODULE_ID='" + moduleid + "' AND COURSE_ID=" + id + "";
                        pstatement5 = connection.prepareStatement(queryString5);

                        updateQuery7 = pstatement5.executeUpdate();
                        if (updateQuery2 != 0) {
                            String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                            pstatement = connection.prepareStatement(queryString10);

                            pstatement.executeUpdate();
        %>
        <jsp:forward page="course_module.jsp">
            <jsp:param name="COURSE_ID" value="<%=id%>"/>
            <jsp:param name="email" value="<%=email%>"/>
            <jsp:param name="email1" value="<%=email1%>"/>
            <jsp:param name="email2" value="<%=email2%>"/>
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>

        <%                                  }
                    } catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());

                    } finally {
                        // close all the connections.
                        pstatement.close();
                        pstatement1.close();
                        pstatement2.close();
                        pstatement3.close();
                        pstatement4.close();
                        pstatement5.close();


                        connection.close();
                    }
        %>
    </body>
</html>
