<%-- 
    Document   : profileupdate_database
    Created on : Aug 1, 2013, 1:34:44 PM
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
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String user_id = request.getParameter("USER_ID");
                    String password = request.getParameter("passid");
                    String email = request.getParameter("email");
                    String address = request.getParameter("address");
                    String coursename = request.getParameter("coursename");
                    String institute = request.getParameter("institute");
                    String discipline = request.getParameter("discipline");
                    String principaldeveloper = request.getParameter("principaldeveloper");
                    String contactnumber = request.getParameter("contactnumber");
                    String coursetype = request.getParameter("coursetype");
                    String codeveloper1name = request.getParameter("codeveloper1name");
                    String codeveloper2name = request.getParameter("codeveloper2name");
                    String coordinatorname = request.getParameter("coordinatorname");
                    String coordinatoremail = request.getParameter("coordinatoremail");
                    String courselevel = request.getParameter("courselevel");
                    String semester = request.getParameter("semester");
                    String status = request.getParameter("status");
                    String r1name = request.getParameter("r1name");
                    String r1inst = request.getParameter("r1inst");
                    String r1email = request.getParameter("r1email");
                    String r1contact = request.getParameter("r1contact");
                    String r2name = request.getParameter("r2name");
                    String r2inst = request.getParameter("r2inst");
                    String r2email = request.getParameter("r2email");
                    String r2contact = request.getParameter("r2contact");
                    String r3name = request.getParameter("r3name");
                    String r3inst = request.getParameter("r3inst");
                    String r3email = request.getParameter("r3email");
                    String r3contact = request.getParameter("r3contact");

                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery = 0;

                    try {
                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

                        String queryString = "UPDATE register_user SET COURSE_NAME = ?, INSTITUTE = ?, DISCIPLINE = ?, PRINCIPAL_DEV = ?, EMAIL_ID = ?, CONTACT_NO = ?, ADDRESS = ?, PASSWORD = ?, COURSE_TYPE = ?, CO_DEVELOPER1 = ?, CO_DEVELOPER2 = ?, COORDINATOR = ?, COORDINATOR_EMAIL = ?, COURSE_LEVEL = ?, SEMESTER = ?, STATUS = ?, REVIEWER1_NAME = ?, R1_INST = ?, R1_EMAIL = ?, R1_CONTACT = ?, REVIEWER2_NAME = ?, R2_INST = ?, R2_EMAIL = ?, R2_CONTACT = ?, REVIEWER3_NAME = ?, R3_INST = ?, R3_EMAIL = ?, R3_CONTACT = ? WHERE USER_ID='" + user_id + "'";
                        pstatement = connection.prepareStatement(queryString);
                        pstatement.setString(1, coursename);
                        pstatement.setString(2, institute);
                        pstatement.setString(3, discipline);
                        pstatement.setString(4, principaldeveloper);
                        pstatement.setString(5, email);
                        pstatement.setString(6, contactnumber);
                        pstatement.setString(7, address);
                        pstatement.setString(8, password);
                        pstatement.setString(9, coursetype);
                        pstatement.setString(10, codeveloper1name);
                        pstatement.setString(11, codeveloper2name);
                        pstatement.setString(12, coordinatorname);
                        pstatement.setString(13, coordinatoremail);
                        pstatement.setString(14, courselevel);
                        pstatement.setString(15, semester);
                        pstatement.setString(16, status);
                        pstatement.setString(17, r1name);
                        pstatement.setString(18, r1inst);
                        pstatement.setString(19, r1email);
                        pstatement.setString(20, r1contact);
                        pstatement.setString(21, r2name);
                        pstatement.setString(22, r2inst);
                        pstatement.setString(23, r2email);
                        pstatement.setString(24, r2contact);
                        pstatement.setString(25, r3name);
                        pstatement.setString(26, r3inst);
                        pstatement.setString(27, r3email);
                        pstatement.setString(28, r3contact);
                        updateQuery = pstatement.executeUpdate();

                        if (updateQuery != 0) {
                         String queryString1 = "UPDATE course SET COURSE_NAME = ? WHERE USER_ID='" + user_id + "'";
                        pstatement = connection.prepareStatement(queryString1);
                        pstatement.setString(1, coursename);
                        pstatement.executeUpdate();
        %>

        <jsp:forward page="main_page.jsp">
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
