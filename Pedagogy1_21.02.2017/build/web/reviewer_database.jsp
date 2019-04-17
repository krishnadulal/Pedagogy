<%-- 
    Document   : reviewer_database
    Created on : Jul 25, 2014, 11:36:34 AM
    Author     : Prasanta
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    String user_id = request.getParameter("USER_ID");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String password = request.getParameter("password");
                    String revieweremail = request.getParameter("revieweremail");
                    String reviewername = request.getParameter("reviewername");

                    

                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;


                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery = 0;
                    //int updateQuery1 = 0;
                    try {
                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

                        String queryString = "UPDATE register_user SET PEDA_EMAIL='"+revieweremail+"', PEDA_PASSWORD='"+password+"', PEDAGOGY_NAME='"+reviewername+"' WHERE USER_ID='"+user_id+"'";
                        pstatement = connection.prepareStatement(queryString);
                       
                        updateQuery = pstatement.executeUpdate();

                        if (updateQuery != 0) {
        %>

        <jsp:forward page="peda_reviewer.jsp">
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>

        <%}%>
        <%} catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());

                    } finally {
                         
                        pstatement.close();

                        connection.close();
                    }
        %>
    </body>
</html>
