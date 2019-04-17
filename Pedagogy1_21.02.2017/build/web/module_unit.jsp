<%--
    Document   : module_unit
    Created on : Jun 17, 2013, 7:28:58 PM
    Author     : Prasanta
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>PEDAGOGY (MAIN PHASE)</title>
        <script type="text/javascript" src="JavaScript/abc.js" ></script>
        <script type="text/javascript" src="JavaScript/event.js"></script>
        <script type="text/javascript" src="JavaScript/treeview.js" ></script>
        <script type="text/javascript" src="JavaScript/jktreeview.js" ></script>
        <link href="CSS/newfile.css" rel="stylesheet" type="text/css" />
        <link href="CSS/style.css" type="text/css" rel="stylesheet"/>
        <script type="text/javascript">

            function open_in_new_tab(url )
            {
                var win=window.open(url, '_blank');
                win.focus();
            }
        
            function check(frm){
                var x=frm.moduleunit.value;
                
                //var x= document.forms["cog"]["text"].value
                if(x.valueOf().length<1)
                {
                    
                    document.getElementById("err-container1").style.display="block";

                    return false;
                }
            }

            function show(a,b,c,d){

                if(document.getElementById(a).style.display=="block")
                {
                    document.getElementById(b).style.display="block";
                    document.getElementById(a).style.display="none";
                    document.getElementById(c).style.display="none";
                    document.getElementById(d).style.display="block";
                }
                else
                {
                    document.getElementById(b).style.display="none";
                    document.getElementById(a).style.display="block";
                    document.getElementById(c).style.display="block";
                    document.getElementById(d).style.display="none";
                }
            }
        </script>

      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <%
                String email = request.getParameter("email");
                String email1 = request.getParameter("email1");
                String email2 = request.getParameter("email2");
    %>
    <body>
        <%
                    String id = request.getParameter("COURSE_ID");
                    String email_id = request.getParameter("EMAIL_ID");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String login = request.getParameter("LOGIN");
        %>
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

                        String moduleid = request.getParameter("MODULE_ID");
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
            <%
                        ResultSet rs3 = null;
                        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                        try {
                            String queryString2 = "SELECT * FROM module WHERE COURSE_ID='" + id + "' AND MODULE_ID='" + moduleid + "'";
                            pstatement = connection.prepareStatement(queryString2);

                            rs3 = pstatement.executeQuery();
                            rs3.next();
            %>
            <div id="right-main">
                <h2 class="head">
                    Course <%=course%> -> Module <%=rs3.getString(2)%>: Module Unit
                </h2>
                <%} catch (Exception ex) {
                                out.println("Unable to connect to Database." + ex.getMessage());

                            } finally {
                                // close all the connections.
                                pstatement.close();
                                rs3.close();
                                connection.close();
                            }
                %>


                <div id="screen">


                    <p></p>
                    <p></p>
                    <%

                                String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                Connection connection1 = null;
                                PreparedStatement pstatement1 = null;
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                //ArrayList<String> result = new ArrayList<String>();

                                ResultSet rs4 = null;
                                int p = 0;

                                try {
                                    connection1 = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                                    String queryString2 = "SELECT * FROM unit WHERE MODULE_ID='" + moduleid + "' AND  COURSE_ID='" + id + "'";
                                    pstatement1 = connection1.prepareStatement(queryString2);

                                    rs4 = pstatement1.executeQuery();
                                    while (rs4.next()) {
                                        p++;
                    %>

                    <div id="pras" class="hbox">



                        <a  id="a_<%=p%>" name="a_<%=p%>" style="background-color: #d4d4d4;color: #0054ff ;font-size:large;display:block;float: left"><%=p%>. <%=rs4.getString(2)%></a>
                         <%
                                                                if (email1.equals("null") && email2.equals("null")) {%>
                        <form name="unitname_change_<%=p%>" id="unitname_change_<%=p%>" action="unitname_change.jsp" method="get" >
                            <input align="middle"  value="<%=rs4.getString(2)%>" type="text" name="b_<%=p%>" id="b_<%=p%>" style="width:300px; height:20px;display: none" />
                            <a href="#" id="c_<%=p%>" name="c_<%=p%>" style="color: #0054ff ;text-decoration: underline;font-size: medium;float: right;display:block;" onclick="show('a_<%=p%>','b_<%=p%>','c_<%=p%>','d_<%=p%>')">Edit</a>
                            <a href="javascript:{}" id="d_<%=p%>" name="d_<%=p%>" style="color: #0054ff ;text-decoration: underline;font-size: medium;float: right;display:none;" onclick="document.getElementById('unitname_change_<%=p%>').submit();">Save</a>
                            <input type="hidden" name="COURSE_ID" value=" <%=id%>"/>
                            <input type="hidden" name="UNIT_CHANGE" value="b_<%=p%>"/>
                            <input type="hidden" name="MODULE_ID" value=" <%=rs4.getString(5)%>"/>
                            <input type="hidden" name="UNIT_ID" value=" <%=rs4.getString(1)%>"/>
                            <input value="<%=email%>" type="hidden" name="email" id="module"/>
                            <input value="<%=email1%>" type="hidden" name="email1" id="module"/>
                            <input value="<%=email2%>" type="hidden" name="email2" id="module"/>
                            <input name="LOGIN" value="<%=login%>" type="hidden"/>
                            <input name="PASSWORD_ID" value="<%=password_id%>" type="hidden"/>
                        </form>
                        <br></br>
                        <a href="JavaScript:window.location='unitdelete.jsp?MODULE_ID=<%=rs4.getString(5)%>&COURSE_ID=<%=rs4.getString(6)%>&UNIT_ID=<%=rs4.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" name="delete" style="text-decoration: underline; text-align: right;float: right" >Delete</a>
                        <%} else {%>
                        <br></br>
                        <%}%>
                        <div class="hboxd">
                            <div class="timestamp">
                                Last updated at
                                <img width="16" height="16" title="Date and Time" src="Images/clock-white-bg.png" alt="Date and Time"/>
                                <%=rs4.getString(7)%>
                            </div>
                        </div>
                        <div class="hboxc">
                            <ul>
                                <ol>

                                    <li>
                                        <a href="unit_summary.jsp?MODULE_ID=<%=rs4.getString(5)%>&COURSE_ID=<%=rs4.getString(6)%>&UNIT_ID=<%=rs4.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Summary</a>
                                    </li>
                                    <li>
                                        <a href="unit_objectives.jsp?MODULE_ID=<%=rs4.getString(5)%>&COURSE_ID=<%=rs4.getString(6)%>&UNIT_ID=<%=rs4.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Objectives</a>
                                    </li>
                                    <li>
                                        <a href="unit_problem.jsp?MODULE_ID=<%=rs4.getString(5)%>&COURSE_ID=<%=rs4.getString(6)%>&UNIT_ID=<%=rs4.getString(1)%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Unit Level Problems</a>
                                    </li>

                                </ol>
                            </ul>
                        </div>

                    </div>
                    <%}
                                } catch (Exception ex) {
                                    out.println("Unable to connect to database." + ex.getMessage());

                                } finally {
                                    // close all the connections.
                                    pstatement1.close();
                                    rs4.close();
                                    connection1.close();
                                }
                    %>


                    <%
                                if (email1.equals("null") && email2.equals("null")) {%>
                    <div align="center" id="head">
                        <h1 style="color: #BB0000;">Add New Unit:-</h1>
                    </div>
                    <div id="check">

                        <table align="center"  width="100%">
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
                    </div>
                    <div class="boxc">
                        <form name="unitname" action="addmoduleunit.jsp" method="post">

                            <input align="middle" value="<%=moduleid%>" type="hidden" name="moduleid" id="module"/>
                            <input align="middle" value="<%=id%>" type="hidden" name="COURSE_ID" id="module"/>
                            <input align="middle" value="<%=email%>" type="hidden" name="email" id="module"/>
                            <input align="middle" value="<%=email1%>" type="hidden" name="email1" id="module"/>
                            <input align="middle" value="<%=email2%>" type="hidden" name="email2" id="module"/>
                            <input name="LOGIN" value="<%=login%>" type="hidden"/>
                            <input name="PASSWORD_ID" value="<%=password_id%>" type="hidden"/>
                            <table border="0" align="center" cellpadding="0" cellspacing="0" >

                                <tbody>
                                    <tr>
                                        <td  align="left" style="font-size: large;font-weight: bold">Give Unit Name:-</td>
                                        <td  align="left"><input align="middle"  value="" type="text" name="moduleunit" style="width:400px; height:30px" id="moduleunit" /> </td>
                                        <td width="30px"></td>
                                        <td  align="center"><input style="height: 40px;width: 100px; font-weight: bold" align="right" type="submit" value="Add" name="submit" onclick="return check(this.form)" id="submit"/></td>
                                    </tr>
                                </tbody>
                            </table>

                        </form>
                    </div>
                    <%}
                    %>
                </div>
            </div>
        </div>


        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


       
    </body>
</html>

