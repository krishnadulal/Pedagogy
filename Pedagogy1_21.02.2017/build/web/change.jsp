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
            var x=document.getElementById("current").value;
            var y=document.getElementById("password_id").value;
            var z=document.getElementById("new").value;
            var m=document.getElementById("confirm").value;
            if(x!=y)
            {
                alert("Current Password did not match!");

                return false;
            }
            else
            {
                if(z!=m)
                {
                    alert("New Password and Confirm Password did not match!");
                    return false;
                }
                else
                {
                    if(z.valueOf().length<1 && m.valueOf().length<1)
                    {
                        alert("Please Give New Password and Confirm Password value!");
                        return false;
                    }
                    else
                    {

                        alert("Password changed successfully!");
                        return true;
                    }
                }
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
            <%

                        String user_id = request.getParameter("USER_ID");
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

            <div id="tabs">
                <ul>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Discipline</a>
                    </li>

                    <% if ("cetiitkgp".equals(login) && "Pedagogy_cetiitkgp".equals(password_id)) {%>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
                    </li>
                    <li style="float: right">
                        <a href="profile_edit.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&USER_ID=<%=user_id%>">Edit Profile</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                    <%} else {%>
                    <li style="float: right;background-color: #FF0000;color: #FF0000">
                        <a href="admin.jsp"  style="color: #FF0000;font-weight: 900">Administrator</a>
                    </li>
                    <%}%>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Domain Review</a>
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
                <h2 class="head"> Change Password for Course:<%=course%></h2>
                <div id="screen" style="min-height: 800px" align="center">
                    <br></br>
                    <form action="change_password.jsp" method="post" class="login-form">
                        <input name="email_id" id="email_id" type="hidden" value="<%=email%>"/>
                        <input name="password_id" id="password_id" type="hidden" value="<%=password%>"/>
                        <input name="user_id" id="user_id" type="hidden" value="<%=user_id%>"/>
                        <div style="width:40%;max-width:400px;background-color: #DDDDDD">
                            <fieldset>
                                <legend class="dashboard-heading" style="border:none;color: #FF0000;text-decoration:blink">Change password</legend>
                                <hr></hr>
                                <p><label for="email">Current Password:-</label>
                                    <input type="text" name="current" id="current"/></p>
                                <hr></hr>
                                <p><label for="password">New Password:-</label>
                                    <input type="password" name="new" id="new"/></p>
                                <hr></hr>
                                <p><label for="confirm_password">Confirm Password:-</label>
                                    <input type="password"  name="confirm" id="confirm"/></p>

                            </fieldset>
                            <div id="submitbutton">
                                <p><input type="submit" value="Change Password" onclick="return check();"/></p>
                            </div>
                        </div>
                    </form>


                </div>
            </div>

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
