<%-- 
    Document   : fullcourse
    Created on : Aug 16, 2013, 7:42:53 PM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%String course_id = request.getParameter("COURSE_ID");
            Connection connection = null;
            PreparedStatement pstatement = null;
            Statement statement = null;
            ResultSet rs0 = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            ResultSet rs2 = null;
            ResultSet rs3 = null;
            ResultSet rs4 = null;
            ResultSet rs5 = null;
            ResultSet rs6 = null;
            ResultSet rs7 = null;
            ResultSet rs8 = null;
            ResultSet rs9 = null;
            String user_id = null;
            String COURSE_NAME = null;
            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = (Connection) DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
            try {
                String res0 = "SELECT * FROM course WHERE COURSE_ID='" + course_id + "'";
                pstatement = connection.prepareStatement(res0);
                rs0 = pstatement.executeQuery();
                rs0.next();
                user_id = rs0.getString(7);
                COURSE_NAME = rs0.getString(2);
                rs0.close();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
        <title><%=COURSE_NAME%></title>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body >
        <table>
            <tbody>
                <tr>
                    <td align="justify" width="1300px">
                        <table>
                            <tbody>
                                <tr>
                                    <td width="5%"></td>
                                    <td width="90%">




                                        <div id="flash"></div>

                                        <div class="header-links noprint">
                                            <a style="text-decoration: blink; color: #BB0000">Print this Document-></a> <a onclick="javascript:window.print();return false;" class="printer noprint" href="DownloadFile.jsp?COURSE_ID=<%=course_id%>"><img src="Images/download.icon.jpg" alt="Download" width="80" height="30"/></a>
                                        </div>
                                        <br>
                                        <br>
                                        <div align="center">
                                            <%String res = "SELECT * FROM register_user WHERE USER_ID='" + user_id + "'";
                                                            pstatement = connection.prepareStatement(res);
                                                            rs = pstatement.executeQuery();
                                                            rs.next();
                                            %>

                                            <p align="center" style="font-size: xx-large;font: bold;text-decoration: underline">National Mission Project on Pedagogy(Main Phase)</p>
                                            <p align="center" style="font-size:  xx-large;font-style:normal ">Course Name: <%=rs.getString(2)%> (Full Content)</p>
                                            <p align="center" style="font-size:  x-large;font-style:normal ">Principal Developer: <%=rs.getString(5)%></p>
                                        </div>
                                        <%rs.close();
                                        %>
                                        <%String res1 = "SELECT * FROM course WHERE COURSE_ID='" + course_id + "'";
                                                        pstatement = connection.prepareStatement(res1);
                                                        rs1 = pstatement.executeQuery();
                                                        rs1.next();
                                        %>
                                        <p align="left"  class="CourseName">1. Institute's Mission:</p>

                                        <p align="justify" style="font-size: small;font-style:italic "><%=rs1.getString(3)%></p>
                                        <p align="left" class="CourseName">2. Institute's Vision:</p>
                                        <p align="justify" style="font-size: small;font-style:italic "><%=rs1.getString(4)%></p>
                                        <p align="left" class="CourseName">3. Program Objective:</p>
                                        <p align="justify" style="font-size: medium;font-style:italic "><%=rs1.getString(5)%></p>
                                        <p align="left" class="CourseName">4. Course Overview:</p>
                                        <p align="justify" style="font-size: medium;font-style:italic "><%=rs1.getString(6)%></p>
                                        <%rs1.close();%>
                                        <p align="left" class="CourseName">5. Course Objective:</p>
                                        <%int aa = 1;
                                                        String res2 = "SELECT * FROM courseobjective WHERE COURSE_ID='" + course_id + "'";
                                                        pstatement = connection.prepareStatement(res2);
                                                        rs2 = pstatement.executeQuery();
                                                        while (rs2.next()) {
                                        %>
                                        <p align="justify" style="font-size: small;font-style:italic ">5.<%=aa%>:   <%=rs2.getString(4)%></p>
                                        <%
                                                            aa++;
                                                        }
                                                        rs2.close();
                                        %>
                                        <p align="left" class="CourseName">6. Course Modules:</p>
                                        <%int aa1 = 1;
                                                        String res3 = "SELECT * FROM module WHERE COURSE_ID='" + course_id + "'";
                                                        pstatement = connection.prepareStatement(res3);
                                                        rs3 = pstatement.executeQuery();
                                                        while (rs3.next()) {
                                        %>
                                        <p align="left" class="Module"><b>6.<%=aa1%>  Module:<%=rs3.getString(2)%> </b></p>
                                        <p align="left" class="SubModule">6.<%=aa1%>.1  Module Overview: </p>
                                        <p align="justify" style="font-size: small;font-style:italic "><%=rs3.getString(3)%></p>
                                        <p align="left" class="SubModule">6.<%=aa1%>.2  Module Objectives: </p>
                                        <%int aa2 = 1;
                                                                                                    String res4 = "SELECT * FROM moduleobjective WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                                                                                                    pstatement = connection.prepareStatement(res4);
                                                                                                    rs4 = pstatement.executeQuery();
                                                                                                    while (rs4.next()) {
                                        %>
                                        <p align="left" style="font-size: small;font-style:italic ">6.<%=aa1%>.2.<%=aa2%>  <%=rs4.getString(4)%> </p>
                                        <%aa2++;
                                                                                                    }
                                                                                                    rs4.close();
                                        %>
                                        <p align="left" class="SubModule">6.<%=aa1%>.3  Module Units: </p>
                                        <%int aa3 = 1;
                                                                                                    String res5 = "SELECT * FROM unit WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                                                                                                    pstatement = connection.prepareStatement(res5);
                                                                                                    rs5 = pstatement.executeQuery();
                                                                                                    while (rs5.next()) {
                                        %>
                                        <p align="left" class="Unit">6.<%=aa1%>.3.<%=aa3%>  Unit:<%=rs5.getString(2)%> </p>
                                        <p align="left" class="SubUnit"><b>6.<%=aa1%>.3.<%=aa3%>.1  Unit's Summary : </b></p>
                                        <p align="justify" style="font-size: small;font-style:italic "><%=rs5.getString(4)%></p>

                                        <p align="left" class="SubUnit">6.<%=aa1%>.3.<%=aa3%>.2  Unit's Objectives: </p>
                                        <%int aa4 = 1;
                                                                                                                                                String res6 = "SELECT * FROM unitobjective WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "' AND UNIT_ID='" + rs5.getString(1) + "'";
                                                                                                                                                pstatement = connection.prepareStatement(res6);
                                                                                                                                                rs6 = pstatement.executeQuery();
                                                                                                                                                while (rs6.next()) {
                                        %>
                                        <p align="left" style="font-size:small;font-style:italic ">6.<%=aa1%>.3.<%=aa3%>.2.<%=aa4%>:  <%=rs6.getString(4)%> </p>
                                        <%aa4++;
                                                                                                                                                }
                                                                                                                                                rs6.close();
                                        %>
                                        <p align="left" class="SubUnit">6.<%=aa1%>.3.<%=aa3%>.3  Unit Level Problems: </p>
                                        <%int aa5 = 1;
                                                                                                                                                String ext3 = null;
                                                                                                                                                String res7 = "SELECT * FROM unitproblem WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "' AND UNIT_ID='" + rs5.getString(1) + "'";
                                                                                                                                                pstatement = connection.prepareStatement(res7);
                                                                                                                                                rs7 = pstatement.executeQuery();
                                                                                                                                                while (rs7.next()) {
                                                                                                                                                    if (rs7.getString(9) != null) {
                                                                                                                                                        String ext[] = rs7.getString(9).split("\\.");
                                                                                                                                                        ext3 = ext[4];
                                                                                                                                                    }
                                        %>                                                                                                                                                      
                                        <p align="left" style="font-size:small;font-style:italic "><a style="font-weight: bold">6.<%=aa1%>.3.<%=aa3%>.3.<%=aa5%>  Question:->    </a> </p>
                                        <p align="left" style="font-size:small;font-style:italic "><%=rs7.getString(2)%> </p>
                                        <%if (rs7.getString(9) != null) {
                                        %>
                                        <form action="get.jsp" method="get" id="get_<%=aa1%>_<%=aa3%>_<%=aa5%>">
                                            <input type="hidden" name="filename" value="<%=rs7.getString(9)%>" />
                                            <input type="hidden" name="extension" value="<%=ext3%>" />
                                            <p align="left" style="font-size:small;font-style:italic "><b>Solution: </b> To Get the Solution <a href="javascript:{}" id="solution" name="solution" onclick="document.getElementById('get_<%=aa1%>_<%=aa3%>_<%=aa5%>').submit();" > Click Here </a> </p>
                                        </form>
                                        <%}
                                                                                                                                                    aa5++;
                                                                                                                                                }
                                                                                                                                                rs7.close();
                                        %>
                                        <%aa3++;
                                                                                                    }
                                                                                                    rs5.close();
                                        %>
                                        <p align="left" class="SubModule">6.<%=aa1%>.4  Module Level Problems: </p>
                                        <%int aa6 = 1;
                                                                                                    String ext2 = null;
                                                                                                    String res8 = "SELECT * FROM moduleproblem WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                                                                                                    pstatement = connection.prepareStatement(res8);
                                                                                                    rs8 = pstatement.executeQuery();
                                                                                                    while (rs8.next()) {
                                                                                                        if (rs8.getString(8) != null) {
                                                                                                            String ext[] = rs8.getString(8).split("\\.");
                                                                                                            ext2 = ext[3];
                                                                                                        }
                                        %>
                                        <p align="left" style="font-size:small;font-style:italic; "><a style="font-weight: bold">6.<%=aa1%>.4.<%=aa6%> Question:->    </a> </p>
                                        <p align="left" style="font-size:small;font-style:italic; "> <%=rs8.getString(2)%> </p>
                                        <%if (rs8.getString(8) != null) {
                                        %>
                                        <form action="get.jsp" method="get" id="get1_<%=aa1%>_<%=aa6%>">
                                            <input type="hidden" name="filename" value="<%=rs8.getString(8)%>" />
                                            <input type="hidden" name="extension" value="<%=ext2%>" />
                                            <p align="left" style="font-size:small;font-style:italic "><b>Solution: </b> To Get the Solution <a href="javascript:{}" id="solution" name="solution" onclick="document.getElementById('get1_<%=aa1%>_<%=aa6%>').submit();" > Click Here </a> </p>
                                        </form>
                                        <%}
                                                                                                        aa6++;
                                                                                                    }
                                                                                                    rs8.close();
                                        %>
                                        <p align="left" class="SubModule">6.<%=aa1%>.5 Module's Learning  Strategy: </p>
                                        <p align="left" style="font-size:small;font-style:italic "><%=rs3.getString(4)%> </p>

                                        <% aa1++;
                                                        }
                                                        rs3.close();
                                        %>
                                        <p align="left" class="CourseName">7. Course Problems: </p>
                                        <%int aa7 = 1;
                                                        String ext1 = null;
                                                        String res9 = "SELECT * FROM courseproblem WHERE COURSE_ID='" + course_id + "'";
                                                        pstatement = connection.prepareStatement(res9);
                                                        rs9 = pstatement.executeQuery();
                                                        while (rs9.next()) {
                                                            if (rs9.getString(7) != null) {
                                                                String ext[] = rs9.getString(7).split("\\.");
                                                                ext1 = ext[2];
                                                            }
                                        %>

                                        <p align="left" style="font-size:small;font-style:italic "><a style="font-weight: bold">7.<%=aa7%> Question:->    </a> </p>
                                        <p align="left" style="font-size:small;font-style:italic "> <%=rs9.getString(2)%> </p>
                                        <%if (rs9.getString(7) != null) {
                                        %>
                                        <form action="get.jsp" method="get" id="get2_<%=aa7%>">
                                            <input type="hidden" name="filename" value="<%=rs9.getString(7)%>" />
                                            <input type="hidden" name="extension" value="<%=ext1%>" />
                                            <p align="left" style="font-size:small;font-style:italic "><b>Solution: </b> To Get the Solution <a href="javascript:{}" id="solution" name="solution" onclick="document.getElementById('get2_<%=aa7%>').submit();" > Click Here </a> </p>
                                        </form>


                                        <%}
                                                            aa7++;

                                                        }
                                                        rs9.close();
                                        %>
                                        <% } catch (Exception e) {
                                                        System.err.println("Error: " + e.getMessage());
                                                    } finally {

                                                        pstatement.close();
                                                        connection.close();

                                                    }
                                        %>
                                    </td>
                                    <td width="5%"></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
