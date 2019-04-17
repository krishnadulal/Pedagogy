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
        <link href="CSS/dc_css_highlighter_shortcodes.css" rel="stylesheet" type="text/css" />
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script type="text/javascript"src="JavaScript/prototype.js"></script>
        <script type="text/javascript" src="JavaScript/main.js"></script>
        <script type="text/javascript">
            function validateForm()
            {
                var x = document.forms["listofcourse"]["loc"].value
                if (x.valueOf().length < 1)
                {
                    alert(" Please select your file");
                    return false;
                } else {
                    alert("Submitted Successfully");
                }
            }

            function open_in_new_tab(url)
            {
                var win = window.open(url, '_blank');
                win.focus();
            }
        </script>
    </head>
    <script type="text/javascript" language=JavaScript>
        var message = "Sorry, right-click has been disabled";
        function clickIE()
        {
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
        document.oncontextmenu = new Function("return false")
    </script>
    <body>

        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">
                    <ul>
                        <li class="active"><a href="pedagogy_main.jsp">Home</a></li>
                        <li><a href="main_page.jsp">Course Development</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy2/index.jsp">Coordinator Access</a></li>
                        <li><a href="javascript:void(0);" onclick="open_in_new_tab('http://www.ide.iitkgp.ernet.in/Pedagogy_view/index.jsp')">Courseview</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Inst/main_inst.jsp">Institute Registration</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy/register_course.jsp">Training</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                </div>

                <div id="header-img">
                    <div align="center">
                        <div >
                            <img src="Images/logo_ICT.jpg" alt=""/>
                        </div>
                    </div>
                </div>
            </div>

            <div id="main" class="fixed">
                <div id="sidebar">
                    <iframe src="https://www.youtube.com/embed/dUlhyVU5J4A" allowfullscreen="allowfullscreen" height="120" width="185"></iframe>
                    <ul class="subnav">
                        <li><a id="tab1" class="selected" href="#" >All Document</a> </li>
                        <li><a href="pdf/Guidline.pdf">Developer Guide</a></li>
                        <li><a href="pdf/reviwer_guidline.pdf">Reviewer Guide</a></li>
                        <li><a href="pdf/Outcome-based Curriculum Design.pdf">Outcome-based Curriculum Design</a></li>
                        <li><a href="pdf/Summary_report_of_Project_pedagogy.pdf">Summary Report of this Project</a></li>
                        <li><a href="pdf/1st PRSG Meeting.pdf">1<sup>st</sup> PRSG Meeting Report</a></li>
                        <li><a href="pdf/2nd PRSG Meeting.pdf">2<sup>nd</sup> PRSG Meeting Report</a></li>
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
                <div align="justify" style="float:right; background-color:#EFF7FF" id="content" class="fixed" >
                    <p>  1.If you want to develop your own Institute courses in pedagogical framework, please register your institution here <a class="dc_highlight blue" href="http://www.ide.iitkgp.ernet.in/Inst/main_inst.jsp">Institute Registration</a></p>
                    <p>  2.If you want to develop your own course in pedagogical framework, please register here <a class="dc_highlight blue" href="http://www.ide.iitkgp.ernet.in/Pedagogy/register_course.jsp"><blink>Training</blink></a></p>
                   <!-- <p>  3.Please register here <a class="dc_highlight blue" href="http://www.ide.iitkgp.ernet.in/NPTEL_MOOC1/register_course.jsp"><blink>NPTEL-MOOC-Pedagogy</blink></a></p> -->
                    <p>  3.To view the developed courses please visit <a class="dc_highlight blue" href="JavaScript:void(0);" onclick="open_in_new_tab('http://www.ide.iitkgp.ernet.in/Pedagogy_view/index.jsp')">Courseview</a> page.</p>
                  <!--  <p>  5. <a class="dc_highlight blue" href="biodata.jsp">Upload Bio-Data</a></p> -->
                </div>

                <div id="content" class="fixed">
                    <table   border="0" cellpadding="0" cellspacing="0">

                        <h1 style="color: white;font-size:x-large; background-color:#EE9A00">Project Outline</h1>
                        <h2 >A collaborative project</h2>
                        <p align="justify">
                            This project is an experiment to systematically design and develop learner-centric curricula, suitable for outcome-based learning for 4 year degree programmes in six major engineering disciplines. This project is NOT, yet another attempt to develop content, although each curriculum document is expected to include around 80 pages of course notes and 120-125 self assessment problems and solutions. All development and review activities will be carried out collaboratively, using a specially designed web tool. A large number of motivated and experienced faculty members trained in pedagogy of teaching-learning, drawn from a diverse range of institutions across the nation are expected to participate in the development and the review process. The decision to involve such a wide section of faculty experts across India is deliberate, mainly to enhance acceptance and ownership.
                        </p><br><hr width="100%" size="3" /><br>
                        <h2>Who are the beneficiaries?</h2>
                        <p align="justify">
                            Eventually, these or modified versions of these documents, are expected to be available in the departmental websites of all engineering degree awarding institutions. These documents are primarily meant for students, telling them (long before the commencement of academic sessions) what knowledge, skills and attitudes they should be able to demonstrate on completion of each course, where to find the necessary learning resources (in addtion to approximately 80 pages of in-built course notes) and also providing them with opportunities for self assessment (around 120 – 125 practice problems / assignments with solutions). Used innovatively, these documents can promote self and group learning; can teach students how to work in small collaborative groups and how to learn on their own. All faculty members, in particular, those who may have to teach such a course for the first time, are likely to find these documents extremely useful. Since terminal objectives and learning resources will be carefully selected and explicitly stated, all stake holders – students, teachers, (paper setters and examiners in affiliated college systems) and potential employers are likely to benefit very significantly. Evaluation of student achievement can be made more valid and reliable as the benchmark of achievements is explicitly stated. Every institution who decides to implement this innovation is likely to find compliance with NBA requirements much easier.
                        </p><br><hr width="100%" size="3" /><br>
                        <h2>What is the most significant deliverable?</h2>
                        <p align="justify">
                            By the end of the main phase of the project in March, 2016, a total of 200 curriculum documents of one semester long courses (equivalent to 40x1 hour classroom lessons) in CE, EE, ME, ECE, CSE and Chem. E disciplines, written in terms of Specific Instructional Objectives should be available as Open Educational Resource (OER) on the project website pedagogy.iitkgp.ernet.in. Anyone who wishes to use these may do so with full right to adopt / modify these courses to suit their own purpose. Provision to update these courses on a continuing basis, using a modified form of crowd sourcing method is under active consideration. These curriculum documents are not prescriptive in nature, nor do they represent the views of the institution/ department to which the development team belongs. These are examples created by expert faculty members drawn mostly from tier one institutions such as the IITs NITs, good universities and reputed institutions of national standing. They may, however be adopted/ adapted by those institutions who believe that their Mission, Vision and PEOs are close enough to the stated Mission, Vision and the PEOs. For potential users, the methodology is no less important than the final output as they may wish to modify an existing course to suit their Institution’s Mission and Vision and the PEO of their own programme. They could act as guidelines for others who wish to develop their own curricula. The brief given to the curriculum development teams is to design and develop curricula, keeping academic requirements as the prime consideration, rather than be restricted by existing syllabus being followed in their own institutions.
                            There will be around 25 departmental core and selected elective (3rd to 8th semester level) courses in each of the 6 disciplines mentioned above. Around 25 additional (3rd to 8th semester level) courses from other disciplines (Architecture / Mining etc.), depending on the expression of interest by competent experts are also planned. In addition to the above 175 courses, around 20 to25 common 1st to 3rd semester level courses ( Physics, Chemistry, Maths, HSS, Management, Programming etc.) are also to be taken up.
                        </p>
                    </table>
                </div>
            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>