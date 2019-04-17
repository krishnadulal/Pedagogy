<%--
    Document   : login_id
    Created on : Jul 3, 2013, 5:34:02 PM
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
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <script type="text/javascript">
        function check()
        {
            var x=document.getElementById("email").value;
            var y=document.getElementById("pass").value;
            var x1=document.getElementById("email2").value;
            var y1=document.getElementById("password2").value;
            if(x==x1 && y==y1)
            {
                return true;
            }
            else{
                document.getElementById("err-container1").style.display="block";

                return false;
            }
        }
    </script>
    <body>
        <%
                    String user_id = request.getParameter("USER_ID");
                    String login = request.getParameter("LOGIN");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("EMAIL2");
                    String password2 = request.getParameter("PASSWORD2");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    String course_id = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                    String resultString = "select * from course WHERE USER_ID='" + user_id + "'  ";
                    pstatement = connection.prepareStatement(resultString);

                    rs = pstatement.executeQuery();
                    while (rs.next()) {

                        course_id = rs.getString(1);
                    }
                    rs.close();
                    pstatement.close();
                    connection.close();

        %>
        <div id="header" class="noprint">
            <div id="main-heading">
                <h1>
                    National Mission Project on Education through ICT
                </h1>
                <ul>
                    <li style="float: right">

                    </li>
                </ul>
                <h2>
                    Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-learning
                </h2>
            </div>

            <div id="tabs">
                <ul>
                    <li style="float: left">
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Discipline</a>
                    </li>
                    
                    
                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password_id)) {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>"class="current">Submit For Review</a>
                    </li>
                    <li style="float:right">
                        <a href="register_course.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Register Your Course</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <li style="float: right">
                        <a href="main.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Assign Reviewer</a>
                    </li>
                    <li style="float: right">
                        <a href="pedagogy_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Assign Pedagogy Reviewer</a>
                    </li>
                    <%} else {
                    %>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>"class="current">Pedagogical Review</a>
                    </li>
                     <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Domain Review</a>
                    </li>
                    <li style="float: right;background-color: #FF0000;color: #FF0000">
                        <a href="admin.jsp"  style="color: #FF0000;font-weight: 900">Administrator</a>
                    </li>

                    <%}%>
                    <li style="float: left">
                        <a href="status.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Course Status</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Reviewer Login Page </h2>
                <div id="screen" style="min-height: 800px">
                    <br></br>
                    <br></br>
                    <table align="center" valign="middle" width="100%">
                        <tbody>
                            <tr>
                                <td align="center" valign="middle" >
                                    <div class="fk-err-all " style="display: none;" align="center" id="err-container1"  >

                                        <p>* Invalid Login/Password OR Pedagogy Reviewer not Assigned</p>

                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="left1" >
                        <h2 class="head">Pedagogy Reviewer Login </h2>
                        <div id="flash"></div>
                        <div id="screen" style="background-color: #E5E5E5">
                            <form class="login-form" method="post" action="coursename.jsp" >
                                <input name="USER_ID" type="hidden" value="<%=user_id%>"/>
                                <input type="hidden" name="COURSE_ID" value="<%=course_id%>" />
                                <input name="email1" type="hidden" id="email1" value="<%=email1%>"/>
                                <input name="email2" type="hidden" id="email2" value="<%=email2%>"/>
                                <input type="hidden" name="password2" id="password2" value="<%=password2%>" />
                                <fieldset>
                                    <p>
                                        <label for="login" style="font-weight: bold;">Login:-</label>
                                        <input type="text" id="email" name="LOGIN"/>
                                    </p>
                                    <hr></hr>
                                    <p>
                                        <label for="password" style="font-weight: bold;">Password:-</label>
                                        <input  type="password" id="pass" name="PASSWORD_ID"/>
                                    </p>
                                </fieldset>
                                <div id="submitbutton">
                                    <p>
                                        <input type="submit" value="Log in" onclick="return check();" name="commit"/>
                                    </p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>
    </body>
</html>

