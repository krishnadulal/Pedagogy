<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <form action="print.jsp" method="get">
            <%
                        request.setCharacterEncoding("UTF-8");
                        String coursename = request.getParameter("coursename");
                        String department = request.getParameter("department");
                        String institution = request.getParameter("institution");
                        String briefcoursedescription = request.getParameter("briefcoursedescription");
                        String nameofthecourse = request.getParameter("nameofthecourse");
                        String semester = request.getParameter("semester");
                        String principaldevelopername = request.getParameter("principaldevelopername");
                        String codeveloper1name = request.getParameter("codeveloper1name");
                        String codeveloper2name = request.getParameter("codeveloper2name");
                        String principaldeveloperdesignation = request.getParameter("principaldeveloperdesignation");
                        String codeveloper1designation = request.getParameter("codeveloper1designation");
                        String codeveloper2designation = request.getParameter("codeveloper2designation");
                        String principaldeveloperinstitution = request.getParameter("principaldeveloperinstitution");
                        String codeveloper1institution = request.getParameter("codeveloper1institution");
                        String codeveloper2institution = request.getParameter("codeveloper2institution");
                        String principaldeveloperdepartment = request.getParameter("principaldeveloperdepartment");
                        String codeveloper1department = request.getParameter("codeveloper1department");
                        String codeveloper2department = request.getParameter("codeveloper2department");
                        String principaldeveloperemail = request.getParameter("principaldeveloperemail");
                        String codeveloper1email = request.getParameter("codeveloper1email");
                        String codeveloper2email = request.getParameter("codeveloper2email");
                        String principaldevelopermobile = request.getParameter("principaldevelopermobile");
                        String codeveloper1mobile = request.getParameter("codeveloper1mobile");
                        String codeveloper2mobile = request.getParameter("codeveloper2mobile");
                        String principaldeveloperoffice = request.getParameter("principaldeveloperoffice");
                        String codeveloper1office = request.getParameter("codeveloper1office");
                        String codeveloper2office = request.getParameter("codeveloper2office");
                        String principaldeveloperres = request.getParameter("principaldeveloperres");
                        String codeveloper1res = request.getParameter("codeveloper1res");
                        String codeveloper2res = request.getParameter("codeveloper2res");
                        String principaldeveloper3years = request.getParameter("principaldeveloper3years");
                        String codeveloper13years = request.getParameter("codeveloper13years");
                        String codeveloper23years = request.getParameter("codeveloper23years");
                        String reviewer1name = request.getParameter("reviewer1name");
                        String reviewer2name = request.getParameter("reviewer2name");
                        String reviewer3name = request.getParameter("reviewer3name");
                        String reviewer1designation = request.getParameter("reviewer1designation");
                        String reviewer2designation = request.getParameter("reviewer2designation");
                        String reviewer3designation = request.getParameter("reviewer3designation");
                        String reviewer1institution = request.getParameter("reviewer1institution");
                        String reviewer2institution = request.getParameter("reviewer2institution");
                        String reviewer3institution = request.getParameter("reviewer3institution");
                        String reviewer1department = request.getParameter("reviewer1department");
                        String reviewer2department = request.getParameter("reviewer2department");
                        String reviewer3department = request.getParameter("reviewer3department");
                        String reviewer1email = request.getParameter("reviewer1email");
                        String reviewer2email = request.getParameter("reviewer2email");
                        String reviewer3email = request.getParameter("reviewer3email");
                        String reviewer1mobile = request.getParameter("reviewer1mobile");
                        String reviewer2mobile = request.getParameter("reviewer2mobile");
                        String reviewer3mobile = request.getParameter("reviewer3mobile");
                        String reviewer1office = request.getParameter("reviewer1office");
                        String reviewer2office = request.getParameter("reviewer2office");
                        String reviewer3office = request.getParameter("reviewer3office");
                        String reviewer1res = request.getParameter("reviewer1res");
                        String reviewer2res = request.getParameter("reviewer2res");
                        String reviewer3res = request.getParameter("reviewer3res");
                        String institutecoordinatorname = request.getParameter("institutecoordinatorname");
                        String coursecoordinatorinstitution = request.getParameter("coursecoordinatorinstitution");
                        String coursecoordinatoremail = request.getParameter("coursecoordinatoremail");
                        String coursecoordinatormobile = request.getParameter("coursecoordinatormobile");
                        String connectionURL = "jdbc:mysql://localhost:3306/pedalogy_main_phase?useUnicode=true&characterEncoding=UTF-8";
                        Connection connection = null;
                        PreparedStatement pstatement = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        int updateQuery2 = 0;
                        if ((coursename != null || coursename != "") && (institution != null || institution != "") && (department != null || department != "") && (principaldevelopername != " " || principaldevelopername != null) && (institutecoordinatorname != null) || institutecoordinatorname != "") {
                            try {
                                connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                String queryString = "INSERT INTO pedagogy SET coursename = ?, department = ?, institution = ?, briefcoursedescription = ?, nameofthecourse = ?, semester = ?, principaldevelopername = ?, codeveloper1name = ?, codeveloper2name = ?, principaldeveloperdesignation = ?, codeveloper1designation = ?, codeveloper2designation = ?, principaldeveloperinstitution = ?, codeveloper1institution = ?, codeveloper2institution = ?, principaldeveloperdepartment = ?, codeveloper1department = ?, codeveloper2department = ?, principaldeveloperemail = ?, codeveloper1email = ?, codeveloper2email = ?, principaldevelopermobile = ?, codeveloper1mobile = ?, codeveloper2mobile = ?, principaldeveloperoffice = ?, codeveloper1office = ?, codeveloper2office = ?, principaldeveloperres = ?, codeveloper1res = ?, codeveloper2res = ?, principaldeveloper3years = ?, codeveloper13years = ?, codeveloper23years = ?, reviewer1name = ?, reviewer2name = ?, reviewer3name = ?, reviewer1designation = ?, reviewer2designation = ?, reviewer3designation = ?, reviewer1institution = ?, reviewer2institution = ?, reviewer3institution = ?, reviewer1department = ?, reviewer2department = ?, reviewer3department = ?, reviewer1email = ?, reviewer2email = ?, reviewer3email = ?, reviewer1mobile = ?, reviewer2mobile = ?, reviewer3mobile = ?, reviewer1office = ?, reviewer2office = ?, reviewer3office = ?, reviewer1res = ?, reviewer2res = ?, reviewer3res = ?, institutecoordinatorname = ?, coursecoordinatorinstitution = ?, coursecoordinatoremail = ?, coursecoordinatormobile = ?";
                                pstatement = connection.prepareStatement(queryString);
                                pstatement.setString(1, coursename);
                                pstatement.setString(2, department);
                                pstatement.setString(3, institution);
                                pstatement.setString(4, briefcoursedescription);
                                pstatement.setString(5, nameofthecourse);
                                pstatement.setString(6, semester);
                                pstatement.setString(7, principaldevelopername);
                                pstatement.setString(8, codeveloper1name);
                                pstatement.setString(9, codeveloper2name);
                                pstatement.setString(10, principaldeveloperdesignation);
                                pstatement.setString(11, codeveloper1designation);
                                pstatement.setString(12, codeveloper2designation);
                                pstatement.setString(13, principaldeveloperinstitution);
                                pstatement.setString(14, codeveloper1institution);
                                pstatement.setString(15, codeveloper2institution);
                                pstatement.setString(16, principaldeveloperdepartment);
                                pstatement.setString(17, codeveloper1department);
                                pstatement.setString(18, codeveloper2department);
                                pstatement.setString(19, principaldeveloperemail);
                                pstatement.setString(20, codeveloper1email);
                                pstatement.setString(21, codeveloper2email);
                                pstatement.setString(22, principaldevelopermobile);
                                pstatement.setString(23, codeveloper1mobile);
                                pstatement.setString(24, codeveloper2mobile);
                                pstatement.setString(25, principaldeveloperoffice);
                                pstatement.setString(26, codeveloper1office);
                                pstatement.setString(27, codeveloper2office);
                                pstatement.setString(28, principaldeveloperres);
                                pstatement.setString(29, codeveloper1res);
                                pstatement.setString(30, codeveloper2res);
                                pstatement.setString(31, principaldeveloper3years);
                                pstatement.setString(32, codeveloper13years);
                                pstatement.setString(33, codeveloper23years);
                                pstatement.setString(34, reviewer1name);
                                pstatement.setString(35, reviewer2name);
                                pstatement.setString(36, reviewer3name);
                                pstatement.setString(37, reviewer1designation);
                                pstatement.setString(38, reviewer2designation);
                                pstatement.setString(39, reviewer3designation);
                                pstatement.setString(40, reviewer1institution);
                                pstatement.setString(41, reviewer2institution);
                                pstatement.setString(42, reviewer3institution);
                                pstatement.setString(43, reviewer1department);
                                pstatement.setString(44, reviewer2department);
                                pstatement.setString(45, reviewer3department);
                                pstatement.setString(46, reviewer1email);
                                pstatement.setString(47, reviewer2email);
                                pstatement.setString(48, reviewer3email);
                                pstatement.setString(49, reviewer1mobile);
                                pstatement.setString(50, reviewer2mobile);
                                pstatement.setString(51, reviewer3mobile);
                                pstatement.setString(52, reviewer1office);
                                pstatement.setString(53, reviewer2office);
                                pstatement.setString(54, reviewer3office);
                                pstatement.setString(55, reviewer1res);
                                pstatement.setString(56, reviewer2res);
                                pstatement.setString(57, reviewer3res);
                                pstatement.setString(58, institutecoordinatorname);
                                pstatement.setString(59, coursecoordinatorinstitution);
                                pstatement.setString(60, coursecoordinatoremail);
                                pstatement.setString(61, coursecoordinatormobile);
                                updateQuery2 = pstatement.executeUpdate();
                            if (updateQuery2 != 0) {%>
            <jsp:forward page="print.jsp"/>
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
        </form>
    </body>
</html>
