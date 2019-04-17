<%--
    Document   : database3
    Created on : May 29, 2013, 11:43:13 AM
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
                    String uobjid = request.getParameter("UOBJ_ID");
                    String moduleid = request.getParameter("MODULE_ID");
                    String unitid = request.getParameter("UNIT_ID");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;

                    PreparedStatement pstatement = null;
                    PreparedStatement pstatement2 = null;
                    ResultSet rs2 = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    int updateQuery3 = 0;
                    int updateQuery4 = 0;
                    String ID1 = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        String resultString = "SELECT * FROM unitobjective WHERE COURSE_ID='" + id + "' AND MODULE_ID='" + moduleid + "' AND UNIT_ID='" + unitid + "'";
                        pstatement2 = connection.prepareStatement(resultString);
                        rs2 = pstatement2.executeQuery();
                        rs2.last();
                        int rows = rs2.getRow();
                        rs2.beforeFirst();
                        while (rs2.next()) {
                            if (rs2.getString(1).equals(uobjid)) {

                                if (rs2.getRow() == rows) {

                                    rs2.first();
                                    ID1 = rs2.getString(1);
                                    rs2.last();
                                } else {
                                    rs2.next();
                                    ID1 = rs2.getString(1);
                                    rs2.previous();
                                }

                            }
                        }
                        String queryString = "UPDATE  unitobjective SET UOBJ_ID=999999 WHERE UOBJ_ID=" + uobjid + " ";
                        pstatement = connection.prepareStatement(queryString);

                        updateQuery2 = pstatement.executeUpdate();

                        String queryString1 = "UPDATE  unitobjective SET UOBJ_ID=" + uobjid + " WHERE UOBJ_ID=" + ID1 + " ";
                        pstatement = connection.prepareStatement(queryString1);

                        updateQuery3 = pstatement.executeUpdate();

                        String queryString2 = "UPDATE  unitobjective SET UOBJ_ID=" + ID1 + " WHERE UOBJ_ID=999999 ";
                        pstatement = connection.prepareStatement(queryString2);

                        updateQuery4 = pstatement.executeUpdate();

                        if ((updateQuery2 != 0) && (updateQuery3 != 0) && (updateQuery4 != 0)) {
                            String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                            pstatement = connection.prepareStatement(queryString10);

                            pstatement.executeUpdate();
        %>
        <jsp:forward page="unit_objectives.jsp">
            <jsp:param name="COURSE_ID" value="<%=id%>"/>
            <jsp:param name="MODULE_ID" value="<%=moduleid%>"/>
            <jsp:param name="UNIT_ID" value="<%=unitid%>"/>
            <jsp:param name="email" value="<%=email%>"/>
            <jsp:param name="email1" value="<%=email1%>"/>
            <jsp:param name="email2" value="<%=email2%>"/>
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>
        <%                        }
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

