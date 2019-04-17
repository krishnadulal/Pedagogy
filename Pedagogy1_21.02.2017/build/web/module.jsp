<%-- 
    Document   : addicon.jsp
    Created on : Jun 11, 2013, 4:41:32 PM
    Author     : Prasanta
--%>

<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>


        <%
                    String id = request.getParameter("COURSE_ID");
                    String module = request.getParameter("module");
                    module = module.replace("'", "\\'");
                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    if ((module != null || module != "")) {

                        try {
                            connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString = "INSERT INTO module (MODULE_NAME,COURSE_ID) VALUES('" + module + "' ,'" + id + "' )";
                            pstatement = connection.prepareStatement(queryString);
                            updateQuery2 = pstatement.executeUpdate();
                            if (updateQuery2 != 0) {
                                String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                                pstatement = connection.prepareStatement(queryString10);

                                pstatement.executeUpdate();
        %>
        <jsp:forward page="course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>"/>
        <%                                  }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement.close();

                            connection.close();
                        }
                    }


        %>

    </body>
</html>