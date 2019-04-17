<%--
    Document   : registration_database
    Created on : Jul 3, 2013, 4:01:00 PM
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
                    ResultSet rs = null;
                    ResultSet rs1 = null;
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    PreparedStatement pstatement1 = null;
                    String last_userid = null;
                    String miss = null;
                    String vis = null;
                    String peo_1 = null;
                    String peo_2 = null;
                    String peo_3 = null;
                    String peo_4 = null;
                    String peo_5 = null;
                    String peo_6 = null;
                    String peo = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery = 0;
                    int updateQuery1 = 0;
                    try {
                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

                        String queryString = "INSERT INTO register_user (COURSE_NAME, INSTITUTE, DISCIPLINE, PRINCIPAL_DEV, EMAIL_ID, CONTACT_NO, ADDRESS, PASSWORD, COURSE_TYPE, CO_DEVELOPER1, CO_DEVELOPER2, COORDINATOR, COORDINATOR_EMAIL, COURSE_LEVEL, SEMESTER, STATUS, REVIEWER1_NAME, R1_INST, R1_EMAIL, R1_CONTACT, REVIEWER2_NAME, R2_INST, R2_EMAIL, R2_CONTACT, REVIEWER3_NAME, R3_INST, R3_EMAIL, R3_CONTACT) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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

                        String resultString2 = "select * from register_user ";
                        String resultString3 = "select * from mission ";
                        pstatement = connection.prepareStatement(resultString2);
                        pstatement1 = connection.prepareStatement(resultString3);
                        rs = pstatement.executeQuery();
                        rs1 = pstatement1.executeQuery();
                        while (rs1.next()) {
                            miss = rs1.getString(2);
                            vis = rs1.getString(3);
                            peo_1=rs1.getString(4);
                            peo_2=rs1.getString(5);
                            peo_3=rs1.getString(6);
                            peo_4=rs1.getString(7);
                            peo_5=rs1.getString(8);
                            peo_6=rs1.getString(9);
                            

                        }

                        rs.last();
                        last_userid = rs.getString(1);
                       
                        if(rs.getString(4).equals("Computer Science and Engineering"))
                         {
                            peo=peo_1;
                        }else if(rs.getString(4).equals("Electronics and Communications Engineering"))
                            {
                            peo=peo_2;
                            }else if(rs.getString(4).equals("Chemical Engineering"))
                            {
                            peo=peo_3;
                            }else if(rs.getString(4).equals("Civil Engineering"))
                            {
                            peo=peo_4;
                            }else if(rs.getString(4).equals("Electrical Engineering"))
                            {
                            peo=peo_5;
                            }else if(rs.getString(4).equals("MECHANICAL ENGINEERING"))
                            {
                            peo=peo_6;
                            }else
                                {
                                peo=null;
                            }

                        String queryString1 = "INSERT INTO course (COURSE_NAME,MISSION,VISION,PO,USER_ID) VALUES('" + coursename + "','" + miss + "','" + vis + "','" + peo + "','" + last_userid + "')";

                        pstatement1 = connection.prepareStatement(queryString1);
                        updateQuery1 = pstatement1.executeUpdate();

                        if (updateQuery != 0 && updateQuery1 != 0) {
        %>

        <jsp:forward page="main_page.jsp">
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>

        <%}%>
        <%} catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());

                    } finally {
                         rs.close();
                        pstatement.close();
                        pstatement1.close();
                        connection.close();
                    }
        %>
    </body>
</html>