<%-- 
    Document   : assign_pedareviewer
    Created on : Jul 24, 2014, 6:34:24 PM
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
        <script type="text/javascript">
            function OpenWindow(info) {
                window.open(info, 'WinName', 'height=200,width=300,resizable=yes,scrollbars=yes');
            }

            function formValidation()
            {
                var reviewername = document.registration.reviewername;
                var revieweremail = document.registration.revieweremail;
                var password = document.registration.password;
                var login = document.registration.LOGIN;
                var password_id = document.registration.PASSWORD_ID;
                var user_id = document.registration.USER_ID;
                if (reviewername1(reviewername))
                {
                    if (revieweremail1(revieweremail))
                    {
                        if (password1(password, 6, 12))
                        {
                            alert("Your Email ID and Password Create Successfully");
                            window.location = "reviewer_database.jsp?password=" + password.value + "&revieweremail=" + revieweremail.value + "&reviewername=" + reviewername.value + "&LOGIN=" + login.value + "&PASSWORD_ID=" + password_id.value + "&USER_ID=" + user_id.value + "";
                        }
                    }
                }

                function password1(password, mx, my)
                {
                    var passid_len = password.value.length;
                    if (passid_len == 0 || passid_len >= my || passid_len < mx)
                    {
                        alert("Password should not be empty / length be between " + mx + " to " + my);
                        password.focus();
                        return false;
                    }
                    return true;
                }

                function revieweremail1(revieweremail)
                {
                    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if (revieweremail.value.match(mailformat))
                    {
                        return true;
                    } else
                    {
                        alert("You have entered an invalid email address!");
                        revieweremail.focus();
                        return false;
                    }
                }
                function reviewername1(reviewername)
                {
                    var reviewer_name = reviewername.value.length;

                    if (reviewer_name == 0)
                    {
                        alert("You have not entered Reviewer Name!");
                        reviewername.focus();
                        return false;
                    } else
                    {
                        return true;
                    }

                }

            }
        </script>

    </head>     
    <script type="text/javascript" language=JavaScript>
        var message = "Sorry, right-click has been disabled";
        function clickIE() {
            if (document.all) {
                (message);
                return false;
            }
        }
        function clickNS(e) {
            if
                    (document.layers || (document.getElementById && !document.all))
            {
                if (e.which == 2 || e.which == 3) {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers)
        {
            document.captureEvents(Event.MOUSEDOWN);
            document.onmousedown = clickNS;
        } else {
            document.onmouseup = clickNS;
            document.oncontextmenu = clickIE;
        }
        document.oncontextmenu = new Function("return false")
    </script>
    <%

        String user_id = request.getParameter("USER_ID");
        String course_id = request.getParameter("COURSE_ID");
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
                        <a href="main.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>&USER_ID=<%=user_id%>" >Assign Reviewer</a>
                    </li>
                    <li style="float: right">
                        <a href="pedagogy_review.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" class="current">Assign Pedagogy Reviewer</a>
                    </li>
                    <%} else {
                    %>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="reviewer.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Domain Review</a>
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

            ResultSet rs = null;
            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
            Connection connection = null;
            PreparedStatement pstatement = null;

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            try {
                connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                String resultString = "select * from register_user where USER_ID='" + user_id + "'";
                pstatement = connection.prepareStatement(resultString);
                rs = pstatement.executeQuery();
                while (rs.next()) {
        %>

        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Assign Pedagogy Reviewer</h2>
                <div id="screen" style="min-height: 800px">


                    <table border="0" align="center" cellpadding="6" cellspacing="0" width="51%">
                        <tbody>


                            <tr>
                                <td colspan="2" align="center" class="thead" style="font-weight:bolder; font-size:x-large; border: 1px solid #555576; border-right: 0px; ">Assign Pedagogy Reviewer</td>

                            </tr>
                            <tr valign="top">
                                <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Course Name</td>
                                <td class="alt2" style="border-right: 1px solid #555576"> <%=rs.getString(2)%></td>
                            </tr>

                            <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                            <tr valign="top">
                                <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Institute</td>
                                <td class="alt2" style="border-right: 1px solid #555576"><%=rs.getString(3)%></td>
                            </tr>

                            <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Discipline</td>
                                <td class="alt2" style="border-right: 1px solid #555576"><%=rs.getString(4)%></td>
                            </tr>

                            <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Principal Developer Name</td>
                                <td class="alt2" style="border-right: 1px solid #555576"><%=rs.getString(5)%></td>
                            </tr>
                            <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                            <tr>
                                <td colspan="2" align="center" class="thead" style="font-weight:bolder; font-size:x-large; border: 1px solid #555576; border-right: 0px; ">Pedagogy Reviewer Information</td>

                            </tr>
                            <form name="registration" method="post" >
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer Name</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="reviewername" value="" size=50 /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer Email ID</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="revieweremail" value="" size=50 maxlength="200"/></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Password</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="password" name="password"   size=50 value=""/></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <input id="LOGIN" name="LOGIN" value="<%=login%>" type="hidden" />
                                <input id="PASSWORD_ID" name="PASSWORD_ID" value="<%=password_id%>" type="hidden" />
                                <input id="USER_ID" name="USER_ID" value="<%=user_id%>" type="hidden" />

                                <tr>
                                    <td align="right" colspan="2" class="thead" align="right" style="font-weight:normal; border: 1px solid #555576;">
                                        <input type="button" name="submit" onclick=" formValidation()" value="Submit"/>
                                    </td>
                                </tr>
                            </form>
                        </tbody>
                    </table>



                </div>
            </div>
            <%}
                } catch (Exception ex) {
                    out.println("Unable to connect to Database." + ex.getMessage());

                } finally {
                    pstatement.close();
                    rs.close();
                    connection.close();
                }
            %>

        </div>

        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>
