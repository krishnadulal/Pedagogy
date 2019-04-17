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
    </head>
    <script type="text/javascript" language=JavaScript>
        var message="Sorry, right-click has been disabled";
        function clickIE()
        {
            if(document.all)
            {
                (message);return false;
            }
        }
        function clickNS(e) {
            if(document.layers||(document.getElementById&&!document.all))
            {
                if (e.which==2||e.which==3)
                {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers)
        {
            document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;
        }
        else
        {
            document.onmouseup=clickNS;document.oncontextmenu=clickIE;
        }
        document.oncontextmenu=new Function("return false")
    </script>
    <script type="text/javascript">
        function check()
        {
            var x=document.getElementById("email").value;
            var y=document.getElementById("password").value;
            var z=document.getElementById("email_id").value;
            var m=document.getElementById("password_id").value;
            if(x!=z || y!=m)
            {
                document.getElementById("err-container1").style.display="block";
                return false;
            }
        }
    </script>
    <%
                String login = request.getParameter("LOGIN");
                String password_id = request.getParameter("PASSWORD_ID");

    %>
    <body>

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
                        <a href="main.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Assign Reviewer</a>
                    </li>
                    <li style="float: right">
                        <a href="pedagogy_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Assign Pedagogy Reviewer</a>
                    </li>
                    <%} else {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
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
        <%
                    String user_id = request.getParameter("USER_ID");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String connectionURL1 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    String email = null;
                    String password = null;
                    String course = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL1, "root", "Pedagogy_cet123");
                    String resultString = "select * from register_user WHERE USER_ID='" + user_id + "'  ";
                    pstatement = connection.prepareStatement(resultString);
                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        email = rs.getString(6);
                        password = rs.getString(9);
                        course = rs.getString(2);
                    }
                    rs.close();
                    connection.close();

                    //String coursename = request.getParameter("COURSE_NAME");
%>
        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Login for Course: <%=course%> </h2>
                <div id="screen" style="min-height: 800px" align="center">
                    <br></br>
                    <table align="center" valign="middle" width="100%">
                        <tbody>
                            <tr>
                                <td align="center" valign="middle" >
                                    <div class="fk-err-all " style="display: none;" align="center" id="err-container1"  >
                                        <p>* Invalid Email id/Password</p>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="login">
                        <form action="check.jsp" method="post">
                            <input name="email_id" type="hidden"  id="email_id" value="<%=email%>"/>
                            <input name="email1" type="hidden"  id="email1" value="<%=email1%>"/>
                            <input name="email2" type="hidden"  id="email2" value="<%=email2%>"/>
                            <input name="password_id" type="hidden" id="password_id" value="<%=password%>"/>
                            <input name="user_id" type="hidden" value="<%=user_id%>"/>
                            <b style="font-size: medium;color: #FF0000;">Login for Your Course:-</b>
                            <input type="text" name="email" id="email" class="username" required="required" placeholder="Email id:"/><br />
                            <input type="password" name="password" id="password" class="password" required="required" placeholder="Password:"/><br />
                            <input type="submit"  class="submit" onclick="return check();" name="commit"value="Login"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
