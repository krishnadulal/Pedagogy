<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Pedagogy Project - powered by Intinno Technologies - National Mission Project on Education through ICT - Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-Learning -Main Phase" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <!-- links to stylesheets and scripts -->
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script src="JavaScript/prototype.js" type="text/javascript"></script>
        <script src="JavaScript/main.js" type="text/javascript"></script>
        <script type="text/javascript" language="Javascript">
            <!--
            function OnButton1()
            {
                document.Form1.action = "save.jsp"
                   // Open in a new window
                document.Form1.submit();             // Submit the page
                return true;
            }

            function OnButton2()
            {
                document.Form1.action = "PDFServlet"
                  // Open in a new window
                document.Form1.submit();             // Submit the page
                return true;
            }
            -->
        </script>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <a name="top"></a>
        <div id="wrap" align="center">
            <div id="header">

                <div id="nav">

                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="main_page.jsp">Course Development</a></li>
                        <li class="active"><a href="exist.jsp">Submitted EOI</a></li>
                        <li><a href="existingcourse.jsp">Existing Courses</a></li>
                        <li><a href="pdf/Guidline.pdf">Developer Guide</a></li>
                        <li><a href="">Reviewer Guide</a></li>
                    </ul>
                </div>
                <!-- make sure you use a 770x230 image here! -->
                 <div id="header-img">

                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>


                </div>
            </div>
            <%
                        String id = request.getParameter("id");
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
            %>
            <form action=""  name="Form1" method="get">
                <table border="0" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <input readonly type="hidden" name="id" value="<%=id%>" />
                            </td>
                        </tr>
                        <tr>
                            <td>Course Name :</td>
                            <td colspan="3"><input  type="text" name="coursename" value="<%=coursename%>" /></td>
                        </tr>
                        <tr>
                            <td>Department :</td>
                            <td colspan="3"><input  type="text" name="department" value="<%=department%>" /></td>
                        </tr>
                        <tr>
                            <td>Institution :</td>
                            <td colspan="3"><input  type="text" name="institution" value="<%=institution%>" /></td>
                        </tr>
                        <tr>
                            <td>Brief Course Description :</td>
                            <td colspan="3"><textarea  rows="5" cols="50" name="briefcoursedescription"><%=briefcoursedescription%></textarea></td>
                        </tr>
                        <tr>
                            <td>Name of the Course :</td>
                            <td><input   type="text" name="nameofthecourse" value="<%=nameofthecourse%>" /></td>
                        </tr>
                        <tr>
                            <td>Semester in which it is usually offered :</td>
                            <td colspan="3">
                                <input  type="text" name="semester" value="<%=semester%>" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"> <br></td>
                        </tr>
                        <tr><td colspan="4">
                                <table border="0" width="100%" align="center">
                                    <tbody>
                                        <tr>
                                            <td>Team Composition :</td>
                                            <td align="center">Principal Developer</td>
                                            <td align="center">Co-Developer 1</td>
                                            <td align="center">Co-Developer 2</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td><input  type="text" name="principaldevelopername" value="<%=principaldevelopername%>" /></td>
                                            <td><input  type="text" name="codeveloper1name" value="<%=codeveloper1name%>" /></td>
                                            <td><input  type="text" name="codeveloper2name" value="<%=codeveloper2name%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Designation :</td>
                                            <td><input  type="text" name="principaldeveloperdesignation" value="<%=principaldeveloperdesignation%>" /></td>
                                            <td><input  type="text" name="codeveloper1designation" value="<%=codeveloper1designation%>" /></td>
                                            <td><input  type="text" name="codeveloper2designation" value="<%=codeveloper2designation%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Institution :</td>
                                            <td><input  type="text" name="principaldeveloperinstitution" value="<%=principaldeveloperinstitution%>" /></td>
                                            <td><input  type="text" name="codeveloper1institution" value="<%=codeveloper1institution%>" /></td>
                                            <td><input  type="text" name="codeveloper2institution" value="<%=codeveloper2institution%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Department :</td>
                                            <td><input  type="text" name="principaldeveloperdepartment" value="<%=principaldeveloperdepartment%>" /></td>
                                            <td><input  type="text" name="codeveloper1department" value="<%=codeveloper1department%>" /></td>
                                            <td><input  type="text" name="codeveloper2department" value="<%=codeveloper2department%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>E-mail ID :</td>
                                            <td><input  type="text" name="principaldeveloperemail" value="<%=principaldeveloperemail%>" /></td>
                                            <td><input  type="text" name="codeveloper1email" value="<%=codeveloper1email%>"/></td>
                                            <td><input  type="text" name="codeveloper2email" value="<%=codeveloper2email%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Mobile :</td>
                                            <td><input  type="text" name="principaldevelopermobile" value="<%=principaldevelopermobile%>" /></td>
                                            <td><input  type="text" name="codeveloper1mobile" value="<%=codeveloper1mobile%>" /></td>
                                            <td><input  type="text" name="codeveloper2mobile" value="<%=codeveloper2mobile%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Office :</td>
                                            <td><input  type="text" name="principaldeveloperoffice" value="<%=principaldeveloperoffice%>"/></td>
                                            <td><input  type="text" name="codeveloper1office" value="<%=codeveloper1office%>" /></td>
                                            <td><input  type="text" name="codeveloper2office" value="<%=codeveloper2office%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Res :</td>
                                            <td><input  type="text" name="principaldeveloperres" value="<%=principaldeveloperres%>" /></td>
                                            <td><input  type="text" name="codeveloper1res" value="<%=codeveloper1res%>" /></td>
                                            <td><input  type="text" name="codeveloper2res" value="<%=codeveloper2res%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Course taught<br>3 years or more :</td>
                                            <td align="center"><input  type="text" name="principaldeveloper3years" value="<%=principaldeveloper3years%>" /></td>
                                            <td align="center"><input  type="text" name="codeveloper13years" value="<%=codeveloper13years%>" /></td>
                                            <td align="center"><input  type="text" name="codeveloper23years" value="<%=codeveloper23years%>"/></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td></tr>
                        <tr>
                            <td colspan="4"> <hr></td>
                        </tr>
                        <tr><td colspan="4">
                                <table border="0" width="100%" align="center">
                                    <tbody>
                                        <tr>
                                            <td>Reviewer Panel :</td>
                                            <td align="center">Reviewer 1</td>
                                            <td align="center">Reviewer 2</td>
                                            <td align="center">Reviewer 3</td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td><input  type="text" name="reviewer1name" value="<%=reviewer1name%>" /></td>
                                            <td><input  type="text" name="reviewer2name" value="<%=reviewer2name%>" /></td>
                                            <td><input  type="text" name="reviewer3name" value="<%=reviewer3name%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Designation :</td>
                                            <td><input  type="text" name="reviewer1designation" value="<%=reviewer1designation%>" /></td>
                                            <td><input  type="text" name="reviewer2designation" value="<%=reviewer2designation%>" /></td>
                                            <td><input  type="text" name="reviewer3designation" value="<%=reviewer3designation%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Institution :</td>
                                            <td><input  type="text" name="reviewer1institution" value="<%=reviewer1institution%>" /></td>
                                            <td><input  type="text" name="reviewer2institution" value="<%=reviewer2institution%>" /></td>
                                            <td><input  type="text" name="reviewer3institution" value="<%=reviewer3institution%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Department :</td>
                                            <td><input  type="text" name="reviewer1department" value="<%=reviewer1department%>" /></td>
                                            <td><input  type="text" name="reviewer2department" value="<%=reviewer2department%>" /></td>
                                            <td><input  type="text" name="reviewer3department" value="<%=reviewer3department%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>E-mail ID :</td>
                                            <td><input  type="text" name="reviewer1email" value="<%=reviewer1email%>" /></td>
                                            <td><input  type="text" name="reviewer2email" value="<%=reviewer2email%>" /></td>
                                            <td><input  type="text" name="reviewer3email" value="<%=reviewer3email%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Mobile :</td>
                                            <td><input  type="text" name="reviewer1mobile" value="<%=reviewer1mobile%>" /></td>
                                            <td><input  type="text" name="reviewer2mobile" value="<%=reviewer2mobile%>" /></td>
                                            <td><input  type="text" name="reviewer3mobile" value="<%=reviewer3mobile%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Office :</td>
                                            <td><input  type="text" name="reviewer1office" value="<%=reviewer1office%>" /></td>
                                            <td><input  type="text" name="reviewer2office" value="<%=reviewer2office%>" /></td>
                                            <td><input  type="text" name="reviewer3office" value="<%=reviewer3office%>" /></td>
                                        </tr>
                                        <tr>
                                            <td>Res :</td>
                                            <td><input  type="text" name="reviewer1res" value="<%=reviewer1res%>" /></td>
                                            <td><input  type="text" name="reviewer2res" value="<%=reviewer2res%>" /></td>
                                            <td><input  type="text" name="reviewer3res" value="<%=reviewer3res%>" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td></tr>
                        <tr>
                            <td colspan="4"> <hr></td>
                        </tr>
                        <tr>
                            <td>Name of Institute Co-ordinator :</td>
                            <td><input  type="text" name="institutecoordinatorname" value="<%=institutecoordinatorname%>" /></td>
                        </tr>
                        <tr>
                            <td>Institution :</td>
                            <td><input  type="text" name="coursecoordinatorinstitution" value="<%=coursecoordinatorinstitution%>" /></td>
                        </tr>
                        <tr>
                            <td>E-mail ID :</td>
                            <td><input  type="text" name="coursecoordinatoremail" value="<%=coursecoordinatoremail%>" /></td>
                        </tr>
                        <tr>
                            <td>Mobile :</td>
                            <td><input  type="text" name="coursecoordinatormobile" value="<%=coursecoordinatormobile%>" /></td>
                        </tr>
                        <tr>
                            <td colspan="4" align="right"><input type="button"size="20" value="Save" name="Submit" onclick="return OnButton1();"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>


            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>

