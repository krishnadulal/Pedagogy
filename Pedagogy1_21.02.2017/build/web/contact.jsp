<%--
    Document   : index
    Created on : May 2, 2013, 11:22:57 AM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title> PEDAGOGY (MAIN PHASE)</title>
        <meta name="description" content="Pedagogy Project - powered by Intinno Technologies - National Mission Project on Education through ICT - Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-Learning -Main Phase" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <!-- links to stylesheets and scripts -->
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script type="text/javascript"src="JavaScript/prototype.js"></script>
        <script type="text/javascript" src="JavaScript/main.js"></script>
        <script type="text/javascript">
            function validateForm()
            {
                var x= document.forms["listofcourse"]["loc"].value
                if(x.valueOf().length<1)
                {
                    alert(" Please select your file");
                    return false;
                }
                else{ alert("Submitted Successfully");}
            }
        </script>
    </head>
    <script type="text/javascript" language=JavaScript>
        var message="Sorry, right-click has been disabled";
        function clickIE() {if (document.all) {(message);return false;}}
        function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>

        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">

                    <ul>
                        <li ><a href="pedagogy_main.jsp">Home</a></li>
                        <li ><a href="main_page.jsp">Course Development</a></li>
                        <li ><a href="http://www.ide.iitkgp.ernet.in/Pedagogy2/index.jsp">Coordinator Access</a></li>
                        <li ><a href="http://www.ide.iitkgp.ernet.in/Pedagogy_view/index.jsp">Courseview</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Inst/main_inst.jsp">Institute Registration</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy/register_course.jsp">Training</a></li>
                        <li class="active"><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                </div>
                <!-- make sure you use a 770x230 image here! -->
                <div id="header-img">

                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>


                </div>
            </div>

            <div align="justify" style="float:right;min-height: 400px" id="content" class="fixed" >
                <h2 align="left">
                    CONTACTS:
                </h2>
                <h3 style="font-weight: 600">  Dr. Bani Bhattacharaya</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>
                    Associate Professor
                    <BR>
                    Centre for Educational Technology
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India
                    <BR>
                    +91 - 3222-282118  (Office)
                    <BR>
                    Email: banib@cet.iitkgp.ernet.in
                </h4>

                <br></br>
                <h3 style="font-weight: 600">  Dr. Khanindra Pathak</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>

                    Professor
                    <BR>
                    Department of Mining Engineering
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India
                    <BR>
                    +91 3222-283722 (Office)
                    <BR>
                    Email: khanindra@mining.iitkgp.ernet.in
                </h4>
                <br></br>
                <h3 style="font-weight: 600">  Dr. S K Das Mandal</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>

                    Assistant Professor
                    <BR>
                    Centre for Educational Technology
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India
                    <BR>
                    +91 - 9432091556 (Mobile)
                    <BR>
                    +91 - 3222 - 282106 (Office)
                    <BR>
                    Email: sdasmandal @ cet.iitkgp.ernet.in
                </h4>

                <br></br>
                <h3 style="font-weight: 600">  Dr. Tamali Bhattacharaya</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>

                    Project Manager
                    <BR>
                    Centre for Educational Technology
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India

                    <BR>
                    +91 - 9434709866  (Mobile)
                    <BR>
                    Email: tamali95@gmail.com
                </h4>

                <br></br>
                <strong style="color: #0000ff;font-size: large">For Software Related any query Please Contact:--</strong>
                <br></br>
                <h3 style="font-weight: 600"> 1.  Krishnadulal Dalapati</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>

                    Project Engineer
                    <BR>
                    Centre for Educational Technology
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India
                    <BR>
                    +91 - 9883926569 (Mobile)
                    <BR>
                    +91 - 3222 - 282259 (Office)
                    <BR>
                    Email: krishnadulaldalapati@gmail.com
                </h4>

                <br></br>
                <h3 style="font-weight: 600">2.  Prasanta Kr Sen</h3>
                <h4 style="color: #000;font-weight: lighter">
                    <BR>

                    Project Engineer
                    <BR>
                    Centre for Educational Technology
                    <BR>
                    Indian Institute of Technology Kharagpur,
                    <BR>
                    West Bengal - 721302, India
                    <BR>
                    +91 - 9434879043 (Mobile)
                    <BR>
                    +91 - 3222 - 282259 (Office)
                    <BR>
                    Email: prasanta.sonu@gmail.com
                </h4>
            </div>


            <div id="main" class="fixed">
                <div id="sidebar">
                    <ul class="subnav">
                        <li><a id="tab1" class="selected" href="#" >All Document</a> </li>
                        <li><a href="pdf/Guidline.pdf">Developer Guide</a></li>
                        <li><a href="pdf/reviwer_guidline.pdf">Reviewer Guide</a></li>
                        <li><a href="pdf/Outcome-based Curriculum Design.pdf">Outcome-based Curriculum Design</a></li>
                        <li><a href="pdf/Summary_report_of_Project_pedagogy.pdf">Summary Report of this Project</a></li>
                        <li><a href="pdf/1st PRSG Meeting.pdf">1<sup>st</sup> PRSG Meeting Report</a></li>
                        <li><a href="pdf/2nd PRSG Meeting.pdf">2<sup>nd</sup> PRSG Meeting Report</a></li>
                        <br>
                        <li><a id="tab1" class="selected" href="#" >Partner Institutions in Main Phase</a> </li>
                        <li><a href="team.jsp#a">IIT Kharagpur</a></li>
                        <li><a href="team.jsp#d">IIT Delhi</a></li>
                        <li><a href="team.jsp#y">BESU</a></li>
                        <li><a href="team.jsp#f">IIT Roorkee</a></li>
                        <li><a href="team.jsp#e">IIT Guwahati</a></li>
                        <li><a href="team.jsp#k">NIT Durgapur</a></li>
                        <li><a href="team.jsp#l">NIT Rourkela</a></li>
                        <li><a href="team.jsp#u">BIT Mesra</a></li>
                        <li><a href="team.jsp#b">IIT Bombay</a></li>
                        <li><a href="team.jsp#m">SVNIT Surat</a></li>
                        <li><a href="team.jsp#s">Sastra University</a></li>
                        <li><a href="team.jsp#h">NIT Trichi</a></li>
                        <li><a href="team.jsp#j">NIT Warangal</a></li>
                        <li><a href="team.jsp#p">IIIT Hyderabad</a></li>
                        <li><a href="team.jsp#q">Amrita University</a></li>
                        <li><a href="team.jsp#z">IIIT Bangalore</a></li>
                    </ul>
                </div>
                <div id="content" class="fixed">
                    <table width="100%"  border="0" cellpadding="0" cellspacing="0" style="min-height: 800px">


                    </table>
                </div>
            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>