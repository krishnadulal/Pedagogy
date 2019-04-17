<%--
    Document   : course_objectives
    Created on : Jun 12, 2013, 6:46:51 PM
    Author     : Krishna
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>PEDAGOGY (MAIN PHASE)</title>
        <script type="text/javascript" src="JavaScript/abc.js" ></script>
        <script type="text/javascript" src="JavaScript/event.js"></script>
        <script type="text/javascript" src="JavaScript/treeview.js" ></script>
        <script type="text/javascript" src="JavaScript/jktreeview.js" ></script>
        <script language="JavaScript" type="text/javascript" src="ckeditor/ckeditor.js"></script>
        <script src="JavaScript/chainedselects.js" type="text/javascript"></script>
        <script type="text/javascript"  language="javascript" src="JavaScript/newfile.js"></script>
        <script type="text/javascript"  language="javascript" src="JavaScript/validate.js"></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
        <link href="CSS/rte.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">

            function open_in_new_tab(url )
            {
                var win=window.open(url, '_blank');
                win.focus();
            }
        </script>
        <script type="text/javascript">
            function check(frm){
                var x=frm.text.value;
                //var x= document.forms["cog"]["text"].value
                if(x.valueOf().length<1)
                {
                    document.getElementById("err-container1").style.display="block";

                    return false;
                }
            }
        </script>

      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <%
                String id = request.getParameter("COURSE_ID");
                String email = request.getParameter("email");
                String email1 = request.getParameter("email1");
                String email2 = request.getParameter("email2");
                String login = request.getParameter("LOGIN");
                String password_id = request.getParameter("PASSWORD_ID");
    %>
    <body onload="initListGroup('Cog', document.forms[0].Cognitivelevel, document.forms[0].Actionverbs);" style="background-image: none" bgcolor="#FAEBD7">

        <div id="header" class="noprint">
            <div id="main-heading">
                <h1>
                    National Mission Project on Education through ICT
                </h1>
                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>
            </div>

            <div id="tabs">
                <ul>
                    <%
                                 if (email1.equals("null") && email2.equals("null")) {%>
                   <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Courses</a>
                    </li>
                    <li style="float: left">
                       <a href="peda_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&email1=<%=email1%>&email2=<%=email2%>&COURSE_ID=<%=id%>">Submit for Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <%} else if(email1.equals("null")){%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help1.pdf">Reviewer Help</a>
                    </li>
                    <%} else {%>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Domain Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help1.pdf">Reviewer Help</a>
                    </li>
                    <%}%>

                    <li style="float: right">

                        <a href="#" onclick="open_in_new_tab('fullcourse.jsp?COURSE_ID=<%=id%>')" style="font-size: small;color:#FFFFFF">Full Course View</a>
                        <a href="chart1.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" style="font-size: small;color: #9F1D20">Analysis</a>&nbsp;&nbsp;

                        <a style="font-size: small"><%=email%></a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>

                    </li>

                </ul>
            </div>
        </div>

        <div id="main">
            <%
                        String course = null;

                        String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                        Connection connection2 = null;
                        PreparedStatement pstatement2 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();

                        ResultSet rs2 = null;


                        try {
                            connection2 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString2 = "SELECT * FROM course where COURSE_ID='" + id + "'";
                            pstatement2 = connection2.prepareStatement(queryString2);

                            rs2 = pstatement2.executeQuery();
                            while (rs2.next()) {
                                course = rs2.getString(2);
                            }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement2.close();
                            connection2.close();
                        }
            %>
            <div id="left-sidebar" class="noprint">
                <div class="head">
                    <%=course%>
                </div>
                <div class="yui-skin-sam">
                    <div id="tree2" class="menu">
                        <%

                                    Connection connection = null;
                                    PreparedStatement pstatement = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    //ArrayList<String> result = new ArrayList<String>();
                                    ResultSet rs = null;
                                    try {
                                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                        String queryString = "SELECT * FROM module WHERE COURSE_ID='" + id + "'";
                                        pstatement = connection.prepareStatement(queryString);
                                        rs = pstatement.executeQuery();

                        %>
                        <script type="text/javascript">
                            var oaktree=new jktreeview("tree2")
                            oaktree.addItem("Institute's Mission","", "mission.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Institute's Vision", "", "vision.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Program Educational Objectives", "", "po.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2=oaktree.addItem("Course: <%=course%>","", "coursename.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Overview", branch2, "course_overview.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Objectives", branch2, "course_objectives.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            var branch2_4=oaktree.addItem("Course modules", branch2, "course_module.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            oaktree.addItem("Course Problems", branch2, "course_problem.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%while (rs.next()) {%>
                                var branch3=oaktree.addItem("Module:<%=rs.getString(2)%>", branch2_4, "modulename.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module Overview", branch3, "module_overview.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module Objectives", branch3, "module_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                var branch4=oaktree.addItem("Module Units", branch3, "JavaScript:window.location='module_unit.jsp?MODULE_ID=<%=rs.getString(1)%>&COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'")
                                oaktree.addItem("Module Level Problems", branch3, "module_problems.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Module's Learning Strategy", branch3, "module_strategy.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%
                                ResultSet rs1 = null;
                                connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                                String queryString1 = "SELECT * FROM unit WHERE COURSE_ID='" + rs.getString(5) + "' AND MODULE_ID='" + rs.getString(1) + "'";
                                pstatement = connection.prepareStatement(queryString1);
                                rs1 = pstatement.executeQuery();
                                while (rs1.next()) {
                            %>
                                var branch5=oaktree.addItem("Unit: <%=rs1.getString(2)%>", branch4, "unitname.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit's Summary", branch5, "unit_summary.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit's Objectives", branch5, "unit_objectives.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                                oaktree.addItem("Unit Level Problems", branch5, "unit_problem.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=rs1.getString(5)%>&UNIT_ID=<%=rs1.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>")
                            <%}
                                rs1.close();
                            %>
                            <%}%>
                                oaktree.treetop.draw(); //REQUIRED LINE: Initalize tree

                            <%} catch (Exception ex) {
                                            out.println("Unable to connect to Database." + ex.getMessage());

                                        } finally {
                                            // close all the connections.
                                            pstatement.close();
                                            connection.close();
                                        }
                            %>
                        </script>
                    </div>
                </div>
            </div>
            <div id="right-main">
                <h2 class="head">
                    Course <%=course%>: Institute's vision
                </h2>

                <div id="screen">
                    <div class="boxc">
                        <%


                                    request.setCharacterEncoding("UTF-8");
                                    String connectionURL2 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                    Connection connection4 = null;
                                    PreparedStatement pstatement4 = null;
                                    ResultSet rs4 = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    connection4 = DriverManager.getConnection(connectionURL2, "root", "Pedagogy_cet123");
                                    int t = 1;
                                    try {
                                        String resultString = "SELECT * FROM course WHERE COURSE_ID='" + id + "'";
                                        pstatement4 = connection4.prepareStatement(resultString);
                                        rs4 = pstatement4.executeQuery();
                                        while (rs4.next()) {
                                            out.println("<table border='0' cellpadding='0' class='hbox' cellspacing='0' width='100%' align='center' >");
                                            out.println("<tbody>");
                                            out.println("<tr>");
                                            out.println("<td align='left'><h3>Institute's vision:</h3></td>");

                        %>


                        <%

                                                                    out.println("</tr>");
                                                                    out.println("<tr><td  class='timestamp'>Last updated at <img width='16' height='16' title='Date and Time' src='Images/clock-white-bg.png' alt='Date and Time'><script type='text/javascript' language='JavaScript'>var x= new Date();document.write (x);</script></td></tr>");
                                                                    out.println("<tr>");
                                                                    out.println("<td align='Justify' >" + rs4.getString(4) + "</td>");
                                                                    out.println("</tr>");
                        %>

                        <%
                                                                    out.println("<tr>");
                                                                    out.println("<td align='right'>");
                                                                    if (login.equals("cetiitkgp") && password_id.equals("Pedagogy_cetiitkgp")) {
                        %>
                        <a href="JavaScript:window.location='vision_edit.jsp?COURSE_ID=<%=id%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" class="hbox">Edit</a>
                        <%}
                                            out.println("</td>");
                                            out.println("</tr>");
                                            out.println("</tbody>");
                                            out.println("</table>");


                                        }
                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());

                                    } finally {
                                        // close all the connections.
                                        pstatement4.close();

                                        connection4.close();
                                    }
                        %>
                        <p></p>
                        <p></p>
                        <%
                                    if (login.equals("cetiitkgp") && password_id.equals("Pedagogy_cetiitkgp")) {
                        %>
                        <table align="center" valign="middle" width="100%">
                            <tbody>
                                <tr>
                                    <td align="center" valign="middle" >
                                        <div id="err-container1" class="fk-err-all " style="display: none;" align="center"  >

                                            <p>* Please input Text Field</p>

                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <h2 align="center">Institute's Vision:-</h2>
                        <form method="post" action="vision_database1.jsp" name="cog" onsubmit="return submitForm();">
                            <input name="COURSE_ID" value="<%=id%>" type="hidden"/>
                            <input name="email" value="<%=email%>" type="hidden"/>
                            <input name="email1" value="<%=email1%>" type="hidden"/>
                             <input name="email2" value="<%=email2%>" type="hidden"/>
                            <input name="LOGIN" value="<%=login%>" type="hidden"/>
                            <input name="PASSWORD_ID" value="<%=password_id%>" type="hidden"/>
                            <table align="center">
                                <tbody>
                                    <tr>
                                        <td>
                                            <textarea id="editor1" name="editor1" rows="10" cols="80">

                                            </textarea>
                                            <script>
                                                // Replace the <textarea id="editor1"> with a CKEditor
                                                // instance, using default configuration.
                                                CKEDITOR.replace( 'editor1' );
                                            </script>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" >
                                            <input value="Submit" name="submit" type="submit" onclick=" return check(this.form)" />
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <%}%>

                    </div>
                </div>
            </div>

        </div>


        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>




        <script type="text/javascript">
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
            document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
            try {
                var pageTracker = _gat._getTracker("UA-12446669-2");
                pageTracker._trackPageview();
            } catch(err) {}</script>
    </body>
    <script type="text/javascript">
        document.getElementById('test').onclick = showDropDown;
    </script>
</html>

