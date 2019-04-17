<%-- 
    Document   : team
    Created on : Jun 5, 2013, 6:26:02 PM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script type="text/javascript" src="JavaScript/prototype.js"></script>
        <script type="text/javascript" src="JavaScript/main.js"></script>
    </head>     <script type="text/javascript" language=JavaScript>         var message = "Sorry, right-click has been disabled";
        function clickIE() {
            if (document.all) {
                (message);
                return false;
            }
        }
        function clickNS(e) {
            if (document.layers || (document.getElementById && !document.all)) {
                if (e.which == 2 || e.which == 3) {
                    (message);
                    return false;
                }
            }
        }
        if (document.layers) {
            document.captureEvents(Event.MOUSEDOWN);
            document.onmousedown = clickNS;
        } else {
            document.onmouseup = clickNS;
            document.oncontextmenu = clickIE;
        }
        document.oncontextmenu = new Function("return false")</script>
    <body>

        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">

                    <ul>
                        <li class="active"><a href="pedagogy_main.jsp">Home</a></li>
                        <li ><a href="main_page.jsp">Course Development</a></li>
                        <li ><a href="http://www.ide.iitkgp.ernet.in/Pedagogy2/index.jsp">Coordinator Access</a></li>
                        <li ><a href="http://www.ide.iitkgp.ernet.in/Pedagogy_view/index.jsp">Courseview</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Institute/index.jsp">Institute Registration</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy/register_course.jsp">Training</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                </div>
                <!-- make sure you use a 770x230 image here! -->
                <div id="header-img">

                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>


                </div>
            </div>

            <table width="100%" cellspacing="2" cellpadding="2" border="0">
                <tbody>
                    <tr>
                        <td width="50%" align="right">
                            <font color="red">ANCHOR INSTITUTION:</font>
                        </td>
                        <td width="50%" align="left">
                            <strong>
                                <font size="+0">Indian Institute of Technology, Kharagpur</font>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center" colspan="2">
                            <strong>
                                <font size="-1">
                                    Website:
                                    <a target="a_blank" href="http://www.iitkgp.ernet.in">www.iitkgp.ernet.in</a>
                                </font>
                            </strong>
                            <a target="a_blank" href="http://www.iitkgp.ernet.in"> </a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <h2></h2>

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
                        <li><a href="team.jsp#y">BITS Pilani</a></li>
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
                    </ul>
                </div>

                <div id="content" class="fixed">
                    <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                        <div id="t1">

                            <a name="a"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>

                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.iitkgp.ernet.in">http://www.iitkgp.ernet.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. P. P. Chakrabarti
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">

                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@iitkgp.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Dr. Bani Bhattacharaya
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            banib@cet.iitkgp.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 3222-282118
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">Institution Joint Coordinator(s)</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%"> Prof. Anup K Ray </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">akray@cet.iitkgp.ernet.in </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%"> +91 3222-282116
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <hr color="#800000">
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%"> Dr. S. K. Das Mandal </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">sdasmandal@cet.iitkgp.ernet.in </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong>Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%"> +91 3222-282106 </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <hr color="#800000">
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%"> Prof. Khanindra Pathak </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">khanindra@mining.iitkgp.ernet.in </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">+91 3222-283722 </td>
                                                                    </tr>

                                                                    <tr> </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="b"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr>
                                        <td>

                                            <h3> Partner Institutions </h3>
                                            <br>
                                            <br>
                                        </td> </tr>
                                    <tr valign="top">
                                        <td width="35%" align="left">

                                            <strong>
                                                <font color="#C26F56">1.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">IIT Bombay </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.iitb.ac.in/">http://www.iitb.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">1.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Devang Khakhar
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Post  :</strong>
                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@iitb.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">1.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Sahana Murthy

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            sahanamurthy@iitb.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 22-25764912
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>


                            <br>
                            <a name="d"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">2.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">IIT Delhi </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.iitd.ac.in/">http://www.iitd.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">2.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. R.K.Shevgaonkar
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Director
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@admin.iitd.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91-11-2659 1701

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">2.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Sankar Prakriya
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            shankar@ee.iitd.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone:</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            +91 11-26591050 (O)

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="e"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">3.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">IIT Guwahati </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.iitg.ernet.in/">http://www.iitg.ernet.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">3.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Gautam Barua

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong></strong>
                                                                        </td>
                                                                        <td width="65%">Director
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director @ iitg.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 361 - 2690401
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">3.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Jatin Deka

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            jatin@iitg.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 361-2582354
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="f"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">4.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">IIT Roorkee </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href=" http://www.iitr.ac.in/"> http://www.iitr.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">4.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Pradipta Banerji
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Director
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@iitr.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91-1332-285500
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">4.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Amita Sinvhal
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            amitafeq@iitr.ernet.in                                                                        <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 1332-285517
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">4.3 Institution Joint     Coordinator</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>

                                                        <td width="35%">
                                                            <strong> Name  :</strong>
                                                        </td>
                                                        <td width="65%">
                                                            Prof. H. R. Wason
                                                            <strong> </strong>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td width="35%">
                                                            <strong> Email  :</strong>
                                                        </td>
                                                        <td width="65%">

                                                            wason2009@gmail.com
                                                            <strong> </strong>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="35%">
                                                            <strong> Phone  :</strong>
                                                        </td>
                                                        <td width="65%">

                                                            +91 1332- 285556 (O)
                                                            <strong> </strong>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <br>

                            <h2></h2>




                            <br>
                            <a name="h"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">5.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">NIT Trichi </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.nitt.edu/">http://www.nitt.edu/‎</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">5.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof.Srinivasan Sundarrajan
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@nitt.edu <br>
                                                                            sundar@nitt.edu
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            0431-2500370 (O)
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">5.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. T K Radhakrishnan
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            radha@nitt.edu
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91  431 - 2503104 <br>

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>




                            <br>
                            <a name="j"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">6.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">NIT Warangal </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href=" http://www.nitw.ac.in/"> http://www.nitw.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">6.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof.Srinivasa Rao
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@nitw.ac.in

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 18702462700 (O)
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">6.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. DVLN Somayajulu
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            somadvlns@gmail.com
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 870-2462700
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="k"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">7.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">NIT Durgapur </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.nitdgp.ac.in/">http://www.nitdgp.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">7.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof.Tarkeshwar Kumar
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@admin.nitdgp.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 3432546397 (O)
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">7.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. N. K. Roy
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            roy_nk2003@gmail.com
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 343-2755420
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="l"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">8.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">NIT Rourkela </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.nitrkl.ac.in/">http://www.nitrkl.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">8.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Sunil Sarangi
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Director
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            director@iitr.ernet.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            +91  661-2472081
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">8.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Sarat Kumar Patra
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            skpatra@nitrkl.ac.in <br>
                                                                            patra.sarat@gmail.com
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 661-2462457 (O)

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="m"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">9.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">SVNIT Surat </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.svnit.ac.in/">http://www.svnit.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">9.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. P D Porey
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>                                                                 <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Director
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            director@svnit.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 261 2227334 (O)



                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">9.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Shailendra Kumar
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            skbudhwar2003@yahoo.co.in <br>
                                                                            skbudhwar@med.svnit.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 261-2201697, 1602


                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">9.3 Institution Joint Coordinator</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name :</strong>
                                                                        </td>
                                                                        <td width="65%"> Prof. Jigisha Parikh </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">jk_parikh@yahoo.co.in </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 261-2201689


                                                                        </td>
                                                                    </tr>




                                                                    <tr> </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>





                            <br>
                            <a name="p"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">10.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">IIIT Hyderabad </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.iiit.ac.in/">http://www.iiit.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">10.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. P. J. Narayanan
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong></strong>
                                                                        </td>
                                                                        <td width="65%">Director </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            pjn@iiit.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 40 6653 1000 <BR>
                                                                            Ext:1139
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">10.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Sandhya Kode
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            skodev@iiit.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone   :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            +91 40 6653 1356
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="q"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">11.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">Amrita University
                                            </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.amrita.edu/">http://www.amrita.edu/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">11.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. P. Venkat Rangan
                                                                            <strong> </strong>
                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong></strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Vice-Chancellor
                                                                            <strong> </strong>
                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong>Email :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            venkat@amrita.edu
                                                                            <strong> </strong>
                                                                        </td>

                                                                    </tr>





                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">11.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Kamal Bijlani
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            kamal@amrita.edu <br>
                                                                            kamal1008@gmail.com
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            +91 4762804403


                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">11.3 Institution Joint Coordinator</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%"> Dr. Shiffon Chatterjee </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">shiffon@gmail.com </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 4762804451
                                                                        </td>
                                                                    </tr>




                                                                    <tr> </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="r"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">12.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">Jadavpur University </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.jadavpur.edu/">http://www.jadavpur.edu/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">12.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Souvik Bhattacharya
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Post  :</strong>
                                                                        </td>
                                                                        <td width="65%">Vice-Chancellor </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            vc@admin.jdvu.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            033-2414-6000

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">12.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>

                            <br>
                            <a name="s"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">13.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">Sastra University </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.sastra.edu/">http://www.sastra.edu/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">13.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof.  R. Sethuraman

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong></strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Vice-Chancellor
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            sethuraman@sastra.edu
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">13.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. N. Sairam
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            sairam@cse.sastra.edu
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 4362-264101 <br>
                                                                            Ext:2174


                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">13.3 Institution Joint Coordinator</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">Prof. V.S. Shankar Sriram </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">sriram@it.sastra.edu </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 4362264101(Ext. 2323)
                                                                        </td>
                                                                    </tr>




                                                                    <tr> </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>


                            <h2></h2>

                            <br>
                            <a name="u"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">14.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">BIT Mesra </span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.bitmesra.ac.in/">http://www.bitmesra.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">14.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. M. K. Mishra

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong></strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Vice-Chancellor
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            vc@bitmesra.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">14.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Shradha Shivani
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            shraddhashivani@bitmesra.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            +91 6512275233
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <h2></h2>



                            <br>
                            <a name="y"></a>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="35%" align="left">
                                            <strong>
                                                <font color="#C26F56">15.Name of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="65%">
                                            <span class="b">BITS Pilani</span>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td width="30%" align="right"> </td>
                                        <td width="70%">
                                            <font size="-1">
                                                <font color="#FF0000">
                                                    <strong>Website:</strong>
                                                </font>
                                            </font>
                                            <strong>
                                                <a target="_blank" href="http://www.bits-pilani.ac.in/">http://www.bits-pilani.ac.in/</a>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">15.1 Head of Institution:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. Souvik Bhattacharyya

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> </strong>
                                                                        </td>
                                                                        <td width="65%">Vice-Chancellor </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone(O)  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            033-26682674
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
                                <tbody>
                                    <tr valign="top">
                                        <td width="40%" align="left">
                                            <strong>
                                                <font color="#C26F56">15.2 Name of Coordinator:</font>
                                            </strong>
                                        </td>
                                        <td width="60%" align="left">
                                            <table width="100%" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table width="100%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Name  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            Prof. A.K. Sarkar

                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Email  :</strong>
                                                                        </td>
                                                                        <td width="65%">
                                                                            aksarkar@pilani.bits-pilani.ac.in
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="35%">
                                                                            <strong> Phone :</strong>
                                                                        </td>
                                                                        <td width="65%">

                                                                            0156-242234
                                                                            <strong> </strong>
                                                                        </td>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                </div>
            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>
