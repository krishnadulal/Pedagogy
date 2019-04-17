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
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    String Cognitivelevel = request.getParameter("Cognitivelevel");
                    String text = request.getParameter("text");
                    String text2 = request.getParameter("text2");
                    String Actionverbs = request.getParameter("Actionverbs");
                    String id = request.getParameter("COURSE_ID");
                    String moduleid = request.getParameter("MODULE_ID");
                    String unitid = request.getParameter("UNIT_ID");
                    String uobjid = request.getParameter("UOBJ_ID");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String text1 = request.getParameter("text1");
                    //String uobjid = request.getParameter("UOBJ_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        String queryString = null;
                        if (email1.equals("null") && email2.equals("null")) {
                            queryString = "UPDATE unitobjective SET COGNITIVELEVEL = ?, ACTIONVERBS = ?, OBJECTIVE = ? WHERE COURSE_ID=" + id + " AND UOBJ_ID=" + uobjid + " AND MODULE_ID=" + moduleid + " AND UNIT_ID=" + unitid + "";
                       } else if(email2.equals("null")){
                            queryString = "UPDATE unitobjective SET REVIEWER_COMMENT = '" + text1 + "' WHERE COURSE_ID=" + id + " AND UOBJ_ID=" + uobjid + " AND MODULE_ID=" + moduleid + " AND UNIT_ID=" + unitid + "";
                        }else{
                            queryString = "UPDATE unitobjective SET PEDA_REVIEW = '" + text1 + "' WHERE COURSE_ID=" + id + " AND UOBJ_ID=" + uobjid + " AND MODULE_ID=" + moduleid + " AND UNIT_ID=" + unitid + "";
                            }
                        if (email1.equals("null") && email2.equals("null")) {
                            pstatement = connection.prepareStatement(queryString);
                            pstatement.setString(1, Cognitivelevel);
                            pstatement.setString(2, Actionverbs);
                            pstatement.setString(3, text.concat(text2));
                        } else {
                            pstatement = connection.prepareStatement(queryString);
                        }
                        updateQuery2 = pstatement.executeUpdate();
                        if (updateQuery2 != 0) {
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
