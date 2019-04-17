<%-- 
    Document   : module_objectives1
    Created on : Jun 12, 2013, 7:35:21 PM
    Author     : Krishna
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>PEDAGOGY (MAIN PHASE)</title>
        <script type="text/javascript" src="JavaScript/abc.js" ></script>
        <script type="text/javascript" src="JavaScript/event.js"></script>
        <script type="text/javascript" src="JavaScript/treeview.js" ></script>
        <script type="text/javascript" src="JavaScript/jktreeview.js" ></script>
        <script src="JavaScript/chainedselects.js" type="text/javascript"></script>
        <script type="text/javascript"  language="javascript" src="JavaScript/newfile.js"></script>
        <script type="text/javascript"  language="javascript" src="JavaScript/validate.js"></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">

            function open_in_new_tab(url )
            {
                var win=window.open(url, '_blank');
                win.focus();
            }

            function show(){

                if(document.getElementById("sampleobjective").style.display=="none")
                {
                    document.getElementById("sampleobjective").style.display="block";

                }
                else
                {
                    document.getElementById("sampleobjective").style.display="none";
                }
            }
        </script>

        <script type="text/javascript">
            function addvalue(frm){
                if(frm.Cognitivelevel.value != "All"){
                    frm.text.value =  frm.Cognitivelevel.value +  ":" + frm.Actionverbs.value+  ":--"  ;
                }
                else
                {
                    if((frm.Actionverbs.value=="Arrange")||(frm.Actionverbs.value=="Define")||(frm.Actionverbs.value=="Describe")||(frm.Actionverbs.value=="Duplicate")||(frm.Actionverbs.value=="Identify")||(frm.Actionverbs.value=="Label")||(frm.Actionverbs.value=="List")||(frm.Actionverbs.value=="Match")||(frm.Actionverbs.value=="Mamorize")||(frm.Actionverbs.value=="Name")||(frm.Actionverbs.value=="Order")||(frm.Actionverbs.value=="Outline")||(frm.Actionverbs.value=="Recognize")||(frm.Actionverbs.value=="Recall")||(frm.Actionverbs.value=="Repeat")||(frm.Actionverbs.value=="Reproduce")||(frm.Actionverbs.value=="Cite")||(frm.Actionverbs.value=="State")||(frm.Actionverbs.value=="Quote")||(frm.Actionverbs.value=="Pronounce")||(frm.Actionverbs.value=="Recite"))
                    {
                        frm.text.value ="Knowledge:"+frm.Actionverbs.value+  ":--";
                    }
                    else if((frm.Actionverbs.value=="Classify")||(frm.Actionverbs.value=="Convert")||(frm.Actionverbs.value=="Defend")||(frm.Actionverbs.value=="Describe")||(frm.Actionverbs.value=="Discuss")||(frm.Actionverbs.value=="Explain")||(frm.Actionverbs.value=="Express")||(frm.Actionverbs.value=="Extend")||(frm.Actionverbs.value=="Generalized")||(frm.Actionverbs.value=="Express")||(frm.Actionverbs.value=="Extend")||(frm.Actionverbs.value=="Generalized")||(frm.Actionverbs.value=="Give Examples")||(frm.Actionverbs.value=="Indicate")||(frm.Actionverbs.value=="Locate")||(frm.Actionverbs.value=="Paraphase")||(frm.Actionverbs.value=="Recognize")||(frm.Actionverbs.value=="Rewrite")||(frm.Actionverbs.value=="Review")||(frm.Actionverbs.value=="Select")||(frm.Actionverbs.value=="Summarize")||(frm.Actionverbs.value=="Translate")||(frm.Actionverbs.value=="Alter")||(frm.Actionverbs.value=="Rephrase")||(frm.Actionverbs.value=="Substitute")||(frm.Actionverbs.value=="Restate")||(frm.Actionverbs.value=="Reword")||(frm.Actionverbs.value=="Write"))
                    {
                        frm.text.value ="Comprehension:"+frm.Actionverbs.value+  ":--";
                    }
                    else if((frm.Actionverbs.value=="Apply")||(frm.Actionverbs.value=="Change")||(frm.Actionverbs.value=="Choose")||(frm.Actionverbs.value=="Compute")||(frm.Actionverbs.value=="Demonstrate")||(frm.Actionverbs.value=="Discover")||(frm.Actionverbs.value=="Dramatize")||(frm.Actionverbs.value=="Draw")||(frm.Actionverbs.value=="Employ")||(frm.Actionverbs.value=="Illustrate")||(frm.Actionverbs.value=="Interpret")||(frm.Actionverbs.value=="Manipulate")||(frm.Actionverbs.value=="Modify")||(frm.Actionverbs.value=="Operate")||(frm.Actionverbs.value=="Practice")||(frm.Actionverbs.value=="Prepare")||(frm.Actionverbs.value=="Produce")||(frm.Actionverbs.value=="Schedule")||(frm.Actionverbs.value=="Show")||(frm.Actionverbs.value=="Sketch")||(frm.Actionverbs.value=="Solve")||(frm.Actionverbs.value=="Use"))
                    {
                        frm.text.value ="Application:"+frm.Actionverbs.value+  ":--";
                    }
                    else if((frm.Actionverbs.value=="Arrange")||(frm.Actionverbs.value=="Assemble")||(frm.Actionverbs.value=="Collect")||(frm.Actionverbs.value=="Combine")||(frm.Actionverbs.value=="Comply")||(frm.Actionverbs.value=="Compose")||(frm.Actionverbs.value=="Construct")||(frm.Actionverbs.value=="Create")||(frm.Actionverbs.value=="Design")||(frm.Actionverbs.value=="Develop")||(frm.Actionverbs.value=="Devise")||(frm.Actionverbs.value=="Formulate")||(frm.Actionverbs.value=="Generate")||(frm.Actionverbs.value=="Plan")||(frm.Actionverbs.value=="Prepare")||(frm.Actionverbs.value=="Rearrange")||(frm.Actionverbs.value=="Reconstruct")||(frm.Actionverbs.value=="Reorganize")||(frm.Actionverbs.value=="Revise")||(frm.Actionverbs.value=="Set up")||(frm.Actionverbs.value=="Synthesize")||(frm.Actionverbs.value=="Originate")||(frm.Actionverbs.value=="Expand")||(frm.Actionverbs.value=="Extend")||(frm.Actionverbs.value=="Conceive")||(frm.Actionverbs.value=="Generalize")||(frm.Actionverbs.value=="Integrate")||(frm.Actionverbs.value=="Project")||(frm.Actionverbs.value=="Invent")||(frm.Actionverbs.value=="Modify")||(frm.Actionverbs.value=="Derive"))
                    {
                        frm.text.value ="Synthesis:"+frm.Actionverbs.value+  ":--";
                    }
                    else if((frm.Actionverbs.value=="Analyze")||(frm.Actionverbs.value=="Appraise")||(frm.Actionverbs.value=="Breakdown")||(frm.Actionverbs.value=="Calculate")||(frm.Actionverbs.value=="Categorize")||(frm.Actionverbs.value=="Compare")||(frm.Actionverbs.value=="Contrast")||(frm.Actionverbs.value=="Criticize")||(frm.Actionverbs.value=="Diagram")||(frm.Actionverbs.value=="Differentiate")||(frm.Actionverbs.value=="Discriminate")||(frm.Actionverbs.value=="Distinguish")||(frm.Actionverbs.value=="Examine")||(frm.Actionverbs.value=="Experiment")||(frm.Actionverbs.value=="Infer")||(frm.Actionverbs.value=="Outline")||(frm.Actionverbs.value=="Point out")||(frm.Actionverbs.value=="Question")||(frm.Actionverbs.value=="Relate")||(frm.Actionverbs.value=="Separate")||(frm.Actionverbs.value=="Subdivide")||(frm.Actionverbs.value=="Test")||(frm.Actionverbs.value=="Ascertain")||(frm.Actionverbs.value=="Diagnose")||(frm.Actionverbs.value=="Divide")||(frm.Actionverbs.value=="Associate")||(frm.Actionverbs.value=="Reduce")||(frm.Actionverbs.value=="Conclude")||(frm.Actionverbs.value=="Find")||(frm.Actionverbs.value=="Designate")||(frm.Actionverbs.value=="Determine")||(frm.Actionverbs.value=="Specify")||(frm.Actionverbs.value=="Explore")||(frm.Actionverbs.value=="Investigate"))
                    {
                        frm.text.value ="Analysis:"+frm.Actionverbs.value+  ":--";
                    }
                    else if((frm.Actionverbs.value=="Appraise")||(frm.Actionverbs.value=="Argue")||(frm.Actionverbs.value=="Assess")||(frm.Actionverbs.value=="Attach")||(frm.Actionverbs.value=="Choose")||(frm.Actionverbs.value=="Conclude")||(frm.Actionverbs.value=="Defend")||(frm.Actionverbs.value=="Estimate")||(frm.Actionverbs.value=="Evaluate")||(frm.Actionverbs.value=="Judge")||(frm.Actionverbs.value=="Justify")||(frm.Actionverbs.value=="Predict")||(frm.Actionverbs.value=="Prove")||(frm.Actionverbs.value=="Rate")||(frm.Actionverbs.value=="Support")||(frm.Actionverbs.value=="Value")||(frm.Actionverbs.value=="Critique")||(frm.Actionverbs.value=="Deduce")||(frm.Actionverbs.value=="Weigh")||(frm.Actionverbs.value=="Review")||(frm.Actionverbs.value=="Compare")||(frm.Actionverbs.value=="Contrast"))
                    {
                        frm.text.value ="Evaluation:"+frm.Actionverbs.value+  ":--";
                    }
                }

            }
            function check(frm){
                var x=frm.text.value;
                var x1=frm.text1.value;
                if(x.valueOf().length>1){
                var y=x.valueOf().split(":");
                var w=y[1].toLowerCase();
                var m=w.split(" ");
                }
                var z=x1.toLowerCase().replace(/[;':>|\\<\[\].?,\(\)\/&"]/g," ").split(" ");

                if(x.valueOf().length<1)
                {
                    document.getElementById("err-container1").style.display="block";
                    document.getElementById("err-container2").style.display="none";
                    document.getElementById("err-container3").style.display="none";

                    return false;
                }
                if(x1.valueOf().length>1){
                    if(m.valueOf().length==1){
                    var p=z.indexOf(m[0]);
                        if(p==-1){
                            document.getElementById("err-container1").style.display="none";
                            document.getElementById("err-container2").style.display="block";
                            document.getElementById("err-container3").style.display="none";
                            return false;

                    }
                    }else{
                      var p1=z.indexOf(m[1]);
                        if(p1==-1){
                            document.getElementById("err-container1").style.display="none";
                            document.getElementById("err-container2").style.display="block";
                            document.getElementById("err-container3").style.display="none";
                            return false;
                    }
                    }
                }else{
                    document.getElementById("err-container1").style.display="none";
                    document.getElementById("err-container2").style.display="none";
                    document.getElementById("err-container3").style.display="block";
                    return false;
                }
            }



        </script>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <%
                String email = request.getParameter("email");
                String email1 = request.getParameter("email1");
                String email2 = request.getParameter("email2");
    %>
    <body onload="initListGroup('Cog', document.forms[0].Cognitivelevel, document.forms[0].Actionverbs);" style="background-image: none" bgcolor="#FAEBD7">
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
                        Connection connection4 = null;
                        PreparedStatement pstatement4 = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        //ArrayList<String> result = new ArrayList<String>();

                        ResultSet rs4 = null;


                        try {
                            connection4 = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String queryString4 = "SELECT * FROM course where COURSE_ID='" + id + "'";
                            pstatement4 = connection4.prepareStatement(queryString4);

                            rs4 = pstatement4.executeQuery();
                            while (rs4.next()) {
                                course = rs4.getString(2);
                            }
                        } catch (Exception ex) {
                            out.println("Unable to connect to Database." + ex.getMessage());

                        } finally {
                            // close all the connections.
                            pstatement4.close();
                            connection4.close();
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
                <h2 class="head" id="tabs">
                    Course <%=course%> -> Module <%=rs3.getString(2)%>: Objective
                    <ul>
                        <li style="float: right">
                            <a href="JavaScript:void(0);" onclick="show()">Example Objective</a>
                        </li>
                    </ul>
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
                    <div class="boxc">
                        <table  align="center" style="border: #777777;border-style: solid; display:none;" width="100%" id="sampleobjective">
                            <thead>
                                <tr class="headline">
                                    <th>
                                        <p>Instructional Objectives:--a statement of something which is SPECIFIC, MEASURABLE, Achievable and that student should be able to DO after receiving the instruction.</p>

                                        <p>Well-written Instructional Objective should have   (a) The performance component (b) The condition component (c) The criterion component.</p>

                                    </th>
                                </tr>
                            </thead>
                        </table>
                        <%

                                    String mobjid = request.getParameter("MOBJ_ID");
                                    request.setCharacterEncoding("UTF-8");
                                    String connectionURL2 = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                                    Connection connection2 = null;
                                    PreparedStatement pstatement2 = null;
                                    ResultSet rs2 = null;
                                    String a = null;
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    connection2 = DriverManager.getConnection(connectionURL2, "root", "Pedagogy_cet123");
                                    int t = 1;
                                    try {
                                        String resultString = "SELECT * FROM moduleobjective WHERE COURSE_ID='" + id + "' AND MODULE_ID=" + moduleid + "";
                                        pstatement2 = connection2.prepareStatement(resultString);
                                        rs2 = pstatement2.executeQuery();
                                        while (rs2.next()) {
                                            a = rs2.getString(4).replaceAll("\n", "<br>");

                                            out.println("<table border='0' cellpadding='0' class='hbox' cellspacing='0' width='100%' align='center' >");
                                            out.println("<tbody>");


                                            out.println("<tr>");
                                            out.println("<td align='left'><h3>Module's Objective " + t++ + ".</h3></td>");


                        %>


                        <%

                                                                    out.println("</tr>");
                                                                    out.println("<tr><td  class='timestamp'>Last updated at <img width='16' height='16' title='Date and Time' src='Images/clock-white-bg.png' alt='Date and Time'>" + rs2.getString(5) + "</td></tr>");

                                                                    out.println("<tr>");
                                                                    out.println("<td align='Justify' >" + a + "</td>");
                                                                    out.println("</tr>");
                        %>

                        <%
                                                                    out.println("<tr>");
                                                                    out.println("<td align='right'>");
                                                                    if (email1.equals("null") && email2.equals("null")) {
                        %>
                        <a href="JavaScript:window.location='moduleobj_database2.jsp?MOBJ_ID=<%=rs2.getString(1)%>&COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" class="hbox"><img src="Images/images.jpg" alt="" width="20" height="20"/></a>
                        <a href="JavaScript:window.location='moduleobj_database3.jsp?MOBJ_ID=<%=rs2.getString(1)%>&COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" class="hbox"><img src="Images/downimages.jpg" alt="" width="20" height="20"/></a>
                        <a href="JavaScript:window.location='module_objectives1.jsp?MOBJ_ID=<%=rs2.getString(1)%>&COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" class="hbox">Edit</a>
                        <a href="JavaScript:window.location='moduleobj_delete.jsp?MOBJ_ID=<%=rs2.getString(1)%>&COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>'" class="hbox">Delete</a>
                        <%
                                                                    }
                                                                    out.println("</td>");
                                                                    out.println("</tr>");
                                                                    out.println("</tbody>");
                                                                    out.println("</table>");%>

                                                                    <%
                                                                    out.println("<table border='0' cellpadding='0' class='hbox' cellspacing='0' width='100%' align='center' >");
                                                                    out.println("<tbody>");
                                                                    out.println("<tr>");
                                                                    out.println("<td align='left'style='background-color: #B9D9FF; font-size: large; padding: 5px;'>Pedagogy Reviewer Comment:</td>");


                                                                    out.println("</tr>");
                                                                    out.println("<tr><td  class='timestamp'>Last updated at <img width='16' height='16' title='Date and Time' src='Images/clock-white-bg.png' alt='Date and Time'>" + rs2.getString(5) + "</td></tr>");
                                                                    out.println("<tr>");
                                                                    if (rs2.getString(9) == null || rs2.getString(9).equals("")) {
                                                                        out.println("<td align='Justify' style='background-color: #F1F1F1; padding: 5px;'> &nbsp;&nbsp;&nbsp;  </td>");
                                                                    } else {

                                                                        out.println("<td align='Justify' style='background-color: #F1F1F1; padding: 5px;'>" + rs2.getString(9) + "</td>");
                                                                    }

                                                                    out.println("</tr>");

                                                                    out.println("<tr>");
                                                                    out.println("<td align='right'>");
                                                                    if (email2.equals("null")) {
                                                                    } else {
                        %>
                        <a href="#" onclick="showPopUp('dialog<%=t%>');" class="hbox">Comment</a>

                        <div id="dialog<%=t%>" style=" display:    none;
                             left:       600px;
                             top:        300px;
                             width:      300px;
                             height:     200px;
                             position:   absolute;
                             z-index:    100;
                             background:#D3DBFF;
                             padding:    2px;
                             font:       10pt tahoma;
                             border:     1px solid gray">
                            <b style="float:left">Reviewer Comment:-</b> <a href="#" style="float: right"onclick="closePopUp('dialog<%=t%>');">[Close]</a>
                            <form action="moduleobj_database1.jsp"  method="post" >
                                <input name="email" value="<%=email%>" type="hidden"/>
                                <input name="email1" value="<%=email1%>" type="hidden"/>
                                <input name="email2" value="<%=email2%>" type="hidden"/>
                                <input name="MOBJ_ID" value="<%=rs2.getString(1)%>" type="hidden"/>
                                <input name="COURSE_ID" value="<%=rs2.getString(7)%>" type="hidden"/>
                                <input name="MODULE_ID" value="<%=moduleid%>" type="hidden"/>
                                <br> <textarea name="text1" rows="7" cols="34">

                                    </textarea>
                                </br>
                                <input type="Submit" name="Submit" onclick="" value="Submit"/>
                            </form>

                        </div>
                        <%
                                                                    }
                                                                    out.println("</td>");
                                                                    out.println("</tr>");
                                                                    out.println("</tbody>");
                                                                    out.println("</table>");

                                                                    out.println("<table border='0' cellpadding='0' class='hbox' cellspacing='0' width='100%' align='center' >");
                                                                    out.println("<tbody>");
                                                                    out.println("<tr>");
                                                                    out.println("<td align='left'style='background-color: #B9D9FF; font-size: large; padding: 5px;'>Reviewer Comment:</td>");


                                                                    out.println("</tr>");
                                                                    out.println("<tr><td  class='timestamp'>Last updated at <img width='16' height='16' title='Date and Time' src='Images/clock-white-bg.png' alt='Date and Time'>" + rs2.getString(5) + "</td></tr>");
                                                                    out.println("<tr>");
                                                                    if (rs2.getString(8) == null || rs2.getString(8).equals("")) {
                                                                        out.println("<td align='Justify' style='background-color: #F1F1F1; padding: 5px;'> &nbsp;&nbsp;&nbsp;  </td>");
                                                                    } else {

                                                                        out.println("<td align='Justify' style='background-color: #F1F1F1; padding: 5px;'>" + rs2.getString(8) + "</td>");
                                                                    }

                                                                    out.println("</tr>");

                                                                    out.println("<tr>");
                                                                    out.println("<td align='right'>");
                                                                    if (email1.equals("null")) {
                                                                    } else {
                        %>
                        <a href="#" onclick="showPopUp('dialog<%=t%>');" class="hbox">Comment</a>

                        <div id="dialog<%=t%>" style=" display:    none;
                             left:       600px;
                             top:        300px;
                             width:      300px;
                             height:     200px;
                             position:   absolute;
                             z-index:    100;
                             background:#D3DBFF;
                             padding:    2px;
                             font:       10pt tahoma;
                             border:     1px solid gray">
                            <b style="float:left">Reviewer Comment:-</b> <a href="#" style="float: right"onclick="closePopUp('dialog<%=t%>');">[Close]</a>
                            <form action="moduleobj_database1.jsp"  method="post" >
                                <input name="email" value="<%=email%>" type="hidden"/>
                                <input name="email1" value="<%=email1%>" type="hidden"/>
                                <input name="email2" value="<%=email2%>" type="hidden"/>
                                <input name="MOBJ_ID" value="<%=rs2.getString(1)%>" type="hidden"/>
                                <input name="COURSE_ID" value="<%=rs2.getString(7)%>" type="hidden"/>
                                <input name="MODULE_ID" value="<%=moduleid%>" type="hidden"/>
                                <br> <textarea name="text1" rows="7" cols="34">

                                    </textarea>
                                </br>
                                <input type="Submit" name="Submit" onclick="" value="Submit"/>
                            </form>

                        </div>
                        <%
                                            }
                                            out.println("</td>");
                                            out.println("</tr>");
                                            out.println("</tbody>");
                                            out.println("</table>");

                                        }
                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());

                                    } finally {
                                        // close all the connections.
                                        pstatement2.close();

                                        connection2.close();
                                    }

                                    Connection connection1 = null;
                                    PreparedStatement pstatement1 = null;
                                    ResultSet rs1 = null;
                                    String textdoc = null;
                                    String data = null;



                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    connection1 = DriverManager.getConnection(connectionURL2, "root", "Pedagogy_cet123");

                                    try {
                                        String resultString = "SELECT * FROM moduleobjective WHERE COURSE_ID=" + id + " AND MOBJ_ID=" + mobjid + " AND MODULE_ID=" + moduleid + "";
                                        pstatement1 = connection1.prepareStatement(resultString);
                                        rs1 = pstatement1.executeQuery();
                                        while (rs1.next()) {
                                            textdoc = rs1.getString(4);
                                            String[] temp = textdoc.split(":--", 2);
                                            if (temp.length == 1) {
                                                data = "";
                                            } else {
                                                data = temp[1];
                                            }

                        %>
                        <p></p>
                        <p></p>
                        <table align="center" valign="middle" width="100%">
                            <tbody>
                                <tr>
                                    <td align="center" valign="middle" >
                                        <div class="fk-err-all " style="display: none;" align="center" id="err-container1"  >

                                            <p>* Please select appropriate Action Verb </p>

                                        </div>
                                        <div class="fk-err-all " style="display: none;" align="center" id="err-container2"  >

                                            <p>* The selected Action Verb is not in the objective</p>

                                        </div>
                                        <div class="fk-err-all " style="display: none;" align="center" id="err-container3"  >

                                            <p>* Please write objective in the text field</p>

                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <form method="post" action="moduleobj_database1.jsp" name="cog">
                            <input name="COURSE_ID" value="<%=id%>" type="hidden"/>
                            <input name="MODULE_ID" value="<%=moduleid%>" type="hidden"/>
                            <input name="MOBJ_ID" value="<%=mobjid%>" type="hidden"/>
                            <input name="email" value="<%=email%>" type="hidden"/>
                            <input name="email1" value="<%=email1%>" type="hidden"/>
                            <input name="email2" value="<%=email2%>" type="hidden"/>
                            <input name="LOGIN" value="<%=login%>" type="hidden"/>
                            <input name="PASSWORD_ID" value="<%=password_id%>" type="hidden"/>
                            <table>
                                <tbody>
                                    <tr>
                                        <td align="center">

                                            <tr valign="middle" >
                                                <td align="right" width="36%">
                                                    <b>Cognitive level:</b>
                                                </td>
                                                <td width="30%">
                                                    <b> &nbsp;&nbsp;&nbsp; ADD OBJECTIVE:--</b>
                                                </td>
                                                <td  align="left" width="8%">
                                                    <b>Action Verbs:</b>
                                                </td >
                                                <td align="left" width="26%">

                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="right">
                                                    <select id="Cognitivelevel" multiple="multiple" name="Cognitivelevel" size="11">
                                                        <option value="All">All</option>
                                                        <option value="Knowledge" >Knowledge</</option>
                                                        <option value="Comprehension" >Comprehension</option>
                                                        <option value="Application" >Application</option>
                                                        <option value="Analysis" >Analysis</option>
                                                        <option value="Synthesis">Synthesis</option>
                                                        <option value="Evaluation" >Evaluation</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input id="text" name="text" readonly size="30px" style=" font-weight: bold;background-color: #D3DBFF " value="<%=temp[0]%>:--"></input>
                                                    <textarea cols="60" rows="8" id="text1" name="text2" style="font-size:large;font-weight: bold"><%=data%></textarea>

                                                </td>
                                                <td>
                                                    <select id="Actionverbs" multiple="multiple" name="Actionverbs" onclick="addvalue(this.form)" size="11">
                                                        <option value="Arrange">Arrange</option>
                                                        <option value="Define">Define</option>
                                                        <option value="Describe">Describe</option>
                                                        <option value="Duplicate">Duplicate</option>
                                                        <option value="Identify">Identify</option>
                                                        <option value="Label">Label</option>
                                                        <option value="Classify">Classify</option>
                                                        <option value="Convert">Convert</option>
                                                        <option value="Defend">Defend</option>
                                                        <option value="Describe">Describe</option>
                                                        <option value="Apply">Apply</option>
                                                        <option value="Change">Change</option>
                                                        <option value="Choose">Choose</option>
                                                        <option value="Compute">Compute</option>
                                                        <option value="Analyze">Analyze</option>
                                                        <option value="Appraise">Appraise</option>
                                                        <option value="Breakdown">Breakdown</option>
                                                        <option value="Calculate">Calculate</option>
                                                        <option value="Arrange">Arrange</option>
                                                        <option value="Assemble">Assemble</option>
                                                        <option value="Categorize">Categorize</option>
                                                        <option value="Collect">Collect</option>
                                                        <option value="Appraise">Appraise</option>
                                                        <option value="Argue">Argue</option>
                                                        <option value="Assess">Assess</option>
                                                        <option value="Attach">Attach</option>
                                                    </select>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td ></td>
                                                <td align="right" width="30%">

                                                    <input value="Submit" name="submit" type="submit" onclick=" return check(this.form)" /></td>
                                                <td></td>
                                            </tr>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <%}

                                    } catch (Exception ex) {
                                        out.println("Unable to connect to Database." + ex.getMessage());

                                    } finally {
                                        // close all the connections.
                                        pstatement1.close();

                                        connection1.close();
                                    }
                        %>


                    </div>
                    <p align="center"><a href="modulename.jsp?COURSE_ID=<%=id%>&MODULE_ID=<%=moduleid%>&email=<%=email%>&email1=<%=email1%>&email2=<%=email2%>&LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Back to Current Module page</a></p>
                </div>
            </div>

        </div>


        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>

    </body>
</html>


