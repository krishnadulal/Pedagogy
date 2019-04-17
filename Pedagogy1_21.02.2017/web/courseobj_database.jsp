<%-- 
    Document   : database
    Created on : May 22, 2013, 5:14:00 PM
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
        <title>PEDAGOGY (MAIN PHASE)</title>
    </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    // String cobjid = request.getParameter("COBJ_ID");
                    String objectives[] = request.getParameterValues("objective_search");
                    if (objectives == null) {
                        objectives = new String[]{};
                    }
                    String id = request.getParameter("COURSE_ID");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String Cognitivelevel = request.getParameter("Cognitivelevel");
                    String text = request.getParameter("text");
                    String text3 = null;
                    if (text != null) {
                        text = text.replace("'", "\\'");
                        String text2 = request.getParameter("text2");
                        text2 = text2.replace("'", "\\'");
                        text3 = text.concat(text2);
                    }

                    String Actionverbs = request.getParameter("Actionverbs");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        if (text != null) {
                            String queryString1 = "INSERT INTO courseobjective (COGNITIVELEVEL,ACTIONVERBS,OBJECTIVE,TIME,COURSE_ID) VALUES('" + Cognitivelevel + "' ,'" + Actionverbs + "' , '" + text3 + "' , now(),'" + id + "')";
                            pstatement = connection.prepareStatement(queryString1);
                            updateQuery2 = pstatement.executeUpdate();
                        } else {
                            for (int s = 0; s < objectives.length; s++) {
                                ResultSet rs2 = null;
                                String queryString2 = "SELECT * FROM courseobjective where COBJ_ID=" + objectives[s] + "";
                                pstatement = connection.prepareStatement(queryString2);
                                rs2 = pstatement.executeQuery();
                                while (rs2.next()) {
                                    String queryString3 = "INSERT INTO courseobjective (COGNITIVELEVEL,ACTIONVERBS,OBJECTIVE,TIME,COURSE_ID) VALUES('" + rs2.getString(2) + "' ,'" + rs2.getString(3) + "' , '" + rs2.getString(4) + "' , now(),'" + id + "')";
                                    pstatement = connection.prepareStatement(queryString3);
                                    updateQuery2 = pstatement.executeUpdate();
                                }rs2.close();
                                }
                        }
                        if (updateQuery2 != 0) {
                            String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                            pstatement = connection.prepareStatement(queryString10);

                            pstatement.executeUpdate();
        %>
        <jsp:forward page="course_objectives.jsp">
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

                        connection.close();
                    }
        %>
    </body>
</html>
