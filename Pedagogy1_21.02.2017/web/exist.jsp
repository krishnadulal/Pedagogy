<%-- 
    Document   : exist
    Created on : May 2, 2013, 12:41:13 PM
    Author     : Prasanta
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="sun.font.Script"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Pedagogy Project exist</title>
        <meta name="description" content="Pedagogy Project - powered by Intinno Technologies - National Mission Project on Education through ICT - Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-Learning -Main Phase" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <!-- links to stylesheets and scripts -->
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script src="JavaScript/prototype.js"></script>
        <script src="JavaScript/main.js"></script>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>

        <script type="text/javascript">
            function alertcheck()
            {
                var x=document.forms["abc"]["search"].value;
                if(x==""||x== null)
                {
                    alert("does not exist");
                    return false;
                }
            }
            function chMd1(id)
            {
                document.getElementById(id).style.display="block";
            }
           
        </script>
        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">

                     <ul>
                        <li class="active"><a href="pedagogy_main.jsp">Home</a></li>
                        <li ><a href="main_page.jsp">Course Development</a></li>
                        <li ><a href="http://www.ide.iitkgp.ernet.in/Pedagogy2/index.jsp">Courseview</a></li>
                        <li><a href="pdf/Guidline.pdf">Developer Guide</a></li>
                        <li><a href="">Reviewer Guide</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy/main_page.jsp">Training</a></li>
                    </ul>
                </div>
                <!-- make sure you use a 770x230 image here! -->
                <div id="header-img">

                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>


                </div>
            </div>



            <div align="center" >
                <table width="100%" border="0" cellpadding="0" cellspacing="0">

                    <form action="exist1.jsp" method="get" >
                        <tr>

                            <td valign="top" align="center"><b style="color: #0000ff;font-size: medium" >Searching By Institution:-</b>
                                <select name="Institutions">

                                    <%
                                                request.setCharacterEncoding("UTF-8");
                                                String connectionURL = "jdbc:mysql://localhost:3306/pedalogy_main_phase?useUnicode=true&characterEncoding=UTF-8";
                                                Connection connection1 = null;
                                                PreparedStatement pstatement1 = null;
                                                ResultSet rs1 = null;
                                                ArrayList<String> places = new ArrayList<String>();
                                                Statement statement1 = null;
                                                int i = 1;
                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                connection1 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                                try {
                                                    String resultString = " SELECT * FROM pedagogy group by institution";
                                                    statement1 = connection1.createStatement();
                                                    rs1 = statement1.executeQuery(resultString);

                                                    while (rs1.next()) {
                                                        out.println("<option value='" + rs1.getString(4) + "'>" + rs1.getString(4) + "</option>");
                                                        places.add(rs1.getString(4));
                                                    }

                                                } catch (Exception ex) {
                                                    out.println("Unable to connect to Database." + ex.getMessage());
                                                } finally {
                                                    rs1.close();
                                                    statement1.close();
                                                    connection1.close();
                                                }
                                    %>
                                </select>

                                <input  onClick="chMd1('td2')" name="submit" type="submit" value="Search" />
                            </td></tr>

                    </form>

                </table>



                <tr>
                    <td width="100%" height="700" align="center" valign="middle">
                        <table id="td1" width="100%" align="center" cellpadding="1" cellspacing="1" border="1">

                            <thead style="font-size: medium; background-color: #b9b9b9" align="center">
                                <tr>
                                    <th>Courses</th>
                                    <th>Principal Developer</th>
                                    <th>Institution</th>
                                    <th>Department</th>
                                </tr>
                            </thead>



                            <tbody style="width: 100%" align="center">

                                <%
                                            String coursename = request.getParameter("coursename");
                                            String connectionURL2 = "jdbc:mysql://localhost:3306/pedalogy_main_phase?useUnicode=true&characterEncoding=UTF-8";
                                            request.setCharacterEncoding("UTF-8");

                                            Connection connection2 = null;
                                            PreparedStatement pstatement2 = null;
                                            ResultSet rs2 = null;
                                            int t1 = 1;


                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            connection2 = DriverManager.getConnection(connectionURL2, "root", "Pedagogy_cet123");

                                            try {
                                                String resultString = "SELECT * FROM pedagogy order by coursename";
                                                pstatement2 = connection2.prepareStatement(resultString);
                                                rs2 = pstatement2.executeQuery();

                                                while (rs2.next()) {
                                %>
                                <tr>
                                    <td align="left">
                                        <form action="coursename1.jsp" method="get" id="<%=rs2.getString(1)%>">
                                            <input type="hidden" name="id" value="<%=rs2.getString(1)%>" />
                                            <a href="javascript:;" onclick="document.getElementById('<%=rs2.getString(1)%>').submit();">
                                                <%=rs2.getString(2)%></a></form></td>
                                    <td align="center"><%=rs2.getString(8)%></td>
                                    <td align="center"><%=rs2.getString(4)%></td>
                                    <td align="center"><%=rs2.getString(3)%></td>
                                </tr>
                                <%}%>
                                <%} catch (Exception ex) {
                                                out.println("Unable to connect to Database." + ex.getMessage());
                                            } finally {
                                                rs2.close();
                                                pstatement2.close();
                                                connection2.close();
                                            }

                                %>
                            </tbody>
                        </table>
                    </td>
                </tr>



            </div>
            <tr>
                <td align="center" height="20" valign="middle">
                    <div id="footer">
                        <p align="center">&copy; 2012-2013 Pedagogy Project</p>
                    </div>
                </td>
            </tr>
        </div>
    </body>
</html>
