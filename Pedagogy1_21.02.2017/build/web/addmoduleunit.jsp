<%--
    Document   : addmoduleunit
    Created on : Jun 17, 2013, 7:43:32 PM
    Author     : Krishna
--%>

<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <%
            String moduleunit = request.getParameter("moduleunit");
            moduleunit = moduleunit.replace("'", "\\'");
            String moduleid = request.getParameter("moduleid");
            String id = request.getParameter("COURSE_ID");
            String email = request.getParameter("email");
            String login = request.getParameter("LOGIN");
            String password_id = request.getParameter("PASSWORD_ID");
            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
            Connection connection = null;
            PreparedStatement pstatement = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            int updateQuery2 = 0;

            connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

            try {
                String queryString1 = "INSERT INTO unit (MODULE_ID,UNIT_NAME,COURSE_ID) VALUES('" + moduleid + "' ,'" + moduleunit + "' ,'" + id + "') ";

                pstatement = connection.prepareStatement(queryString1);

                updateQuery2 = pstatement.executeUpdate();
                if (updateQuery2 != 0) {
                    String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                    pstatement = connection.prepareStatement(queryString10);

                    pstatement.executeUpdate();
        %>
        <jsp:forward page="module_unit.jsp">
            <jsp:param name="MODULE_ID" value="<%=moduleid%>"/>
            <jsp:param name="email" value="<%=email%>"/>
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>


        <%                                  }
            } catch (Exception ex) {
                out.println("Unable to connect to Database." + ex.getMessage());

            } finally {
                // close all the connections.
                pstatement.close();
                //rs.close();
                connection.close();
            }


        %>

    </body>
</html>