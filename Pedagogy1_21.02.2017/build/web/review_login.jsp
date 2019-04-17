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
            var x=document.getElementById("email1").value;
            var y=document.getElementById("pass").value;
            var a=document.getElementById("r1_e").value;
            var b=document.getElementById("r1_p").value;
            var c=document.getElementById("r2_e").value;
            var d=document.getElementById("r2_p").value;
            var e=document.getElementById("r3_e").value;
            var f=document.getElementById("r3_p").value;
            if((x==a && y==b) || (x==c && y==d) || (x==e && y==f))
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
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    String r1_e = null, r2_e = null, r3_e = null, r1_p = null, r2_p = null, r3_p = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                    String resultString = "select * from register_user WHERE USER_ID='" + user_id + "'  ";
                    pstatement = connection.prepareStatement(resultString);

                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        r1_e = rs.getString(20);
                        r2_e = rs.getString(24);
                        r3_e = rs.getString(28);
                        r1_p = rs.getString(30);
                        r2_p = rs.getString(31);
                        r3_p = rs.getString(32);
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
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Submit For Review</a>
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
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Domain Review</a>
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

                                        <p>* Invalid Login/Password</p>

                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="left1" >
                        <h2 class="head">Reviewer Login </h2>
                        <div id="flash"></div>
                        <div id="screen" style="background-color: #E5E5E5">
                            <form class="login-form" method="post" action="check_reviewer.jsp" >
                                <input name="user_id" type="hidden" value="<%=user_id%>"/>
                                <input type="hidden" id="r1_e" name="r1_e" value="<%=r1_e%>" />
                                <input type="hidden" id="r2_e" name="r2_e" value="<%=r2_e%>" />
                                <input type="hidden" id="r3_e" name="r3_e" value="<%=r3_e%>" />
                                <input type="hidden" id="r1_p" name="r1_p" value="<%=r1_p%>" />
                                <input type="hidden" id="r2_p" name="r2_p" value="<%=r2_p%>" />
                                <input type="hidden" id="r3_p" name="r3_p" value="<%=r3_p%>" />
                                <fieldset>
                                    <p>
                                        <label for="login" style="font-weight: bold;">Login:-</label>
                                        <input type="text" id="email1" name="email1"/>
                                    </p>
                                    <hr></hr>
                                    <p>
                                        <label for="password" style="font-weight: bold;">Password:-</label>
                                        <input  type="password" id="pass" name="pass"/>
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

