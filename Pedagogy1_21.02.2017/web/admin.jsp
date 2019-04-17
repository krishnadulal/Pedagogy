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
            var x=document.getElementById("login").value;
            var y=document.getElementById("password").value;
            if(x!="cetiitkgp" || y!="Pedagogy_cetiitkgp")
            {
                document.getElementById("err-container1").style.display="block";

                return false;
            }
        }
    </script>
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
                        <a href="main_page.jsp" >Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp" >Discipline</a>
                    </li>
                    <li style="float: left">
                        <a href="peda_reviewer.jsp">Pedagogical Review</a>
                    </li>
                    <li style="float: left">
                        <a href="reviewer.jsp">Domain Review</a>
                    </li>
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <li style="float: right;background-color: #FF0000;color: #FF0000">
                        <a href="admin.jsp" class="current" style="color: #FF0000;font-weight: 900">Administrator</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="main" style="min-height:800px">
            <div id="left" style="width:100%;">
                <div id="flash"></div>
                <h2 class="head"> Administrator Login Page </h2>
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
                   
                      
                        
                            <div class="login">
                            <form  method="post" action="check_admin.jsp" >
                                <b style="font-size: medium;color: #FF0000;">Login for Administrator:-</b>
                                <input type="text" name="login" id="login" class="username" required="required" placeholder="Email id:"/><br />
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

