<%-- 
    Document   : profile_edit
    Created on : Aug 1, 2013, 12:42:59 PM
    Author     : Prasanta
--%>

<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>PEDAGOGY (MAIN PHASE)</title>
        <script type="text/javascript" src="JavaScript/abc.js" ></script>
        <script type="text/javascript" src="JavaScript/event.js"></script>
        <script type="text/javascript" src="JavaScript/treeview.js" ></script>
        <script type="text/javascript" src="JavaScript/jktreeview.js" ></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            function formValidation()
            {
                var coursetype1=null;
                var semester=null;
                var status=null;
                var courselevel=null;
                var login = document.registration.LOGIN;
                var password_id = document.registration.PASSWORD_ID;
                var user_id = document.registration.USER_ID;
                var passid = document.registration.passid;
                var uemail = document.registration.email;
                var uemail1 = document.registration.coordinatoremail;
                var coursename = document.registration.coursename;
                var institute = document.registration.institute;
                var discipline = document.registration.discipline;
                var principaldeveloper = document.registration.principaldeveloper;
                var contactnumber = document.registration.contactnumber;
                if (document.registration.coursetype[0].checked==true){
                    coursetype1=document.registration.coursetype[0];
                }
                if (document.registration.coursetype[1].checked==true){
                    coursetype1=document.registration.coursetype[1];
                }

                var codeveloper1name = document.registration.codeveloper1name;
                var codeveloper2name = document.registration.codeveloper2name;
                var coordinatorname = document.registration.coordinatorname;
                var address = document.registration.address;

                var r1name = document.registration.r1name;
                var r2name = document.registration.r2name;
                var r3name = document.registration.r3name;
                var r1inst = document.registration.r1inst;
                var r2inst = document.registration.r2inst;
                var r3inst = document.registration.r3inst;
                var r1email = document.registration.r1email;
                var r2email = document.registration.r2email;
                var r3email = document.registration.r3email;
                var r1contact = document.registration.r1contact;
                var r2contact = document.registration.r2contact;
                var r3contact = document.registration.r3contact;
                if (document.registration.courselevel[0].checked==true){
                    courselevel=document.registration.courselevel[0];
                }
                else if (document.registration.courselevel[1].checked==true){
                    courselevel=document.registration.courselevel[1];
                }
                if (document.registration.status[0].checked==true){
                    status=document.registration.status[0];
                }
                else if (document.registration.status[1].checked==true){
                    status=document.registration.status[1];
                }
                if (document.registration.semester[0].checked==true){
                    semester=document.registration.semester[0];
                }
                else if (document.registration.semester[1].checked==true){
                    semester=document.registration.semester[1];
                }
                else if (document.registration.semester[2].checked==true){
                    semester=document.registration.semester[2];
                }
                else if (document.registration.semester[3].checked==true){
                    semester=document.registration.semester[3];
                }
                else if (document.registration.semester[4].checked==true){
                    semester=document.registration.semester[4];
                }
                else if (document.registration.semester[5].checked==true){
                    semester=document.registration.semester[5];
                }
                else if (document.registration.semester[6].checked==true){
                    semester=document.registration.semester[6];
                }
                else if (document.registration.semester[7].checked==true){
                    semester=document.registration.semester[7];
                }

                if(course1(coursename))
                {
                    if(institute1(institute))
                    {
                        if(discipline1(discipline))
                        {
                            if(principaldeveloper1(principaldeveloper))
                            {
                                if(contactnumber1(contactnumber))
                                {

                                    if(passid_validation(passid,6,12))
                                    {

                                        if(ValidateEmail(uemail))
                                        {
                                            if(coursetype(coursetype1))
                                            {

                                                if(codeveloper1name1(codeveloper1name))
                                                {
                                                    if(codeveloper2name1(codeveloper2name))
                                                    {
                                                        if(coordinatorname1(coordinatorname))
                                                        {
                                                            if(ValidateEmail1(uemail1))
                                                            {
                                                                if(courselevel1(courselevel))
                                                                {
                                                                    if(semester1(semester))
                                                                    {
                                                                        if(status1(status))
                                                                        {
                                                                            if(r1name1(r1name))
                                                                            {
                                                                                if(r2name1(r2name))
                                                                                {
                                                                                    if(r3name1(r3name))
                                                                                    {

                                                                                        alert("Your Course Register Successfully");
                                                                                        window.location="profileupdate_database.jsp?passid="+passid.value+"&email="+uemail.value+"&coursename="+coursename.value+"&institute="+institute.value+"&discipline="+discipline.value+"&principaldeveloper="+principaldeveloper.value+"&contactnumber="+contactnumber.value+"&address="+address.value+"&coursetype="+coursetype1.value+"&codeveloper1name="+codeveloper1name.value+"&codeveloper2name="+codeveloper2name.value+"&coordinatorname="+coordinatorname.value+"&coordinatoremail="+uemail1.value+"&courselevel="+courselevel.value+"&semester="+semester.value+"&status="+status.value+"&r1name="+r1name.value+"&r2name="+r2name.value+"&r3name="+r3name.value+"&r1inst="+r1inst.value+"&r1email="+r1email.value+"&r1contact="+r1contact.value+"&r2inst="+r2inst.value+"&r2email="+r2email.value+"&r2contact="+r2contact.value+"&r3inst="+r3inst.value+"&r3email="+r3email.value+"&r3contact="+r3contact.value+"&LOGIN="+login.value+"&PASSWORD_ID="+password_id.value+"&USER_ID="+user_id.value+"";
                                                                                        //document.registration.action="registration_database.jsp";

                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                function passid_validation(passid,mx,my)
                {
                    var passid_len = passid.value.length;
                    if (passid_len == 0 ||passid_len >= my || passid_len < mx)
                    {
                        alert("Password should not be empty / length be between "+mx+" to "+my);
                        passid.focus();
                        return false;
                    }
                    return true;
                }


                function ValidateEmail(uemail)
                {
                    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if(uemail.value.match(mailformat))
                    {
                        return true;
                    }
                    else
                    {
                        alert("You have entered an invalid email address!");
                        uemail.focus();
                        return false;
                    }
                }
                function course1(coursename)
                {
                    var course_name = coursename.value.length;

                    if(course_name==0)
                    {
                        alert("You have not entered Course Name!");
                        coursename.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function institute1(institute)
                {
                    var institute1 = institute.value.length;

                    if(institute1==0)
                    {
                        alert("You have not entered Institute Name!");
                        institute.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function discipline1(discipline)
                {
                    var discipline1 = discipline.value.length;

                    if(discipline1==0)
                    {
                        alert("You have not entered Discipline Name!");
                        discipline.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function principaldeveloper1(principaldeveloper)
                {
                    var principaldeveloper1 = principaldeveloper.value.length;

                    if(principaldeveloper1==0)
                    {
                        alert("You have not entered Principal Developer Name!");
                        principaldeveloper.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function contactnumber1(contactnumber)
                {
                    var contactnumber1 = contactnumber.value.length;

                    if(contactnumber1==0)
                    {
                        alert("You have not entered Contact Number!");
                        contactnumber.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function coursetype1(coursetype)
                {
                    var coursetype1 = coursetype.value.length;

                    if(coursetype1==0)
                    {
                        alert("You have not chose Course Type !");
                        coursetype.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function codeveloper1name1(codeveloper1name)
                {
                    var codeveloper1name1 = codeveloper1name.value.length;

                    if(codeveloper1name1==0)
                    {
                        alert("You have not entered Co-Developer1 Name !");
                        codeveloper1name.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function codeveloper2name1(codeveloper2name)
                {
                    var codeveloper2name1 = codeveloper2name.value.length;

                    if(codeveloper2name1==0)
                    {
                        alert("You have not entered Co-Developer2 Name!");
                        codeveloper2name.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function coordinatorname1(coordinatorname)
                {
                    var coordinatorname1 = coordinatorname.value.length;

                    if(coordinatorname1==0)
                    {
                        alert("You have not entered Co-Ordinator Name!");
                        coordinatorname.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function ValidateEmail1(uemail1)
                {
                    var mailformat1 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if(uemail1.value.match(mailformat1))
                    {
                        return true;
                    }
                    else
                    {
                        alert("You have Entered an Invalid Email Address!");
                        uemail1.focus();
                        return false;
                    }
                }
                function coursetype(coursetype1)
                {

                    if(coursetype1==null)
                    {
                        alert("No Course Type were selected.!");
                        return false;
                    }
                    else
                    {

                        return true;
                    }
                }
                function courselevel1(courselevel)
                {

                    if(courselevel==null)
                    {
                        alert("No Course Level were selected.!");
                        return false;
                    }
                    else
                    {

                        return true;
                    }
                }
                function semester1(semester)
                {

                    if(semester==null)
                    {
                        alert("No Course Semester were selected.!");
                        return false;
                    }
                    else
                    {

                        return true;
                    }
                }
                function status1(status)
                {

                    if(status==null)
                    {
                        alert("No Status were selected.!");
                        return false;
                    }
                    else
                    {

                        return true;
                    }
                }
                function r1name1(r1name)
                {
                    var r1name1 = r1name.value.length;

                    if(r1name1==0)
                    {
                        alert("You have not entered Reviewer1 Name!");
                        r1name.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function r3name1(r3name)
                {
                    var r3name1 = r3name.value.length;

                    if(r3name1==0)
                    {
                        alert("You have not entered Reviewer3 Name!");
                        r3name.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
                function r2name1(r2name)
                {
                    var r2name1 = r2name.value.length;

                    if(r2name1==0)
                    {
                        alert("You have not entered Reviewer2 Name!");
                        r2name.focus();
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }

            }


        </script>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>

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
                        <a href="pedagogy_main.jsp" >Home</a>
                    </li>
                    <li style="float: left">
                        <a href="main_page.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Courses</a>
                    </li>
                    <li style="float: left">
                        <a href="discipline.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>">Discipline</a>
                    </li>
                    
                    <li style="float: left">
                        <a href="pdf/help.pdf">Help</a>
                    </li>
                    <li style="float: right">
                        <a href="register_course.jsp?LOGIN=<%=login%>&PASSWORD_ID=<%=password_id%>" >Register Your Course</a>
                        &nbsp;&nbsp;<a href="logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        <%
                    String user_id = request.getParameter("USER_ID");
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
                <h2 class="head">Update Registered Course </h2>
                <div id="screen" style="min-height: 800px">
                    <div class="dashboard-heading" style="border:none;color: #FF0000" align="center"> You can Register Your course Here: </div>
                    <br></br>

                    <form name="registration" method="get" >
                        <table border="0" align="center" cellpadding="6" cellspacing="0" width="51%">
                            <tbody>

                                <tr>
                                    <td>
                                        <input id="LOGIN" name="LOGIN" value="<%=login%>" type="hidden" />
                                        <input id="PASSWORD_ID" name="PASSWORD_ID" value="<%=password_id%>" type="hidden" />
                                        <input id="USER_ID" name="USER_ID" value="<%=user_id%>" type="hidden" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="thead" style="font-weight:bolder; border: 1px solid #555576; border-right: 0px; ">Register Your Course</td>
                                    <td class="thead" align="right" style="font-weight:normal; border: 1px solid #555576; border-left: 0px"><div style="float:left; font-weight:500; background-color:#EEEEDD;text-decoration: blink;color: #FF0000">Please avoid Special Character expect Email id(i.e. &,~,$,# etc.)</div></td>
                                </tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Course Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="coursename" value="<%=rs.getString(2)%>"  size=50 /> </td>
                                </tr>

                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Institute<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="institute" value="<%=rs.getString(3)%>" size=50 /></td>
                                </tr>

                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Discipline<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="discipline" value="<%=rs.getString(4)%>" size=50 /></td>
                                </tr>

                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr><tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Principal Developer Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="principaldeveloper" value="<%=rs.getString(5)%>" size=50 /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Email Address:<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="email"  value="<%=rs.getString(6)%>" size=50 maxlength=200></input></td>
                                </tr>

                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Password:<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="password" name="passid"   size=50 value="<%=rs.getString(9)%>"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Contact Number<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="contactnumber" value="<%=rs.getString(7)%>" size=50 maxlength=13/></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Course Type<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><b>Core</b><input type="radio" id="click1" name="coursetype" size="40" value="Core" /> <b>&nbsp;&nbsp;&nbsp;&nbsp Elective </b><input type="radio" id="click2" name="coursetype" size="40" value="Elective" /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Co-Developer 1 Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="codeveloper1name" value="<%=rs.getString(11)%>" size=50 /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Co-Developer 2 Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="codeveloper2name" value="<%=rs.getString(12)%>" size=50 /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Co-Ordinator Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="coordinatorname" value="<%=rs.getString(13)%>" size=50 /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Co-Ordinator's Email Address<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="coordinatoremail" value="<%=rs.getString(14)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Course Level<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><b>UG</b><input type="radio" id="click01" name="courselevel" size="40" value="UG" /> <b>&nbsp;&nbsp;&nbsp;&nbsp PG </b><input type="radio" id="click02" name="courselevel" size="40" value="PG" /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Semester<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><b>1</b><input type="radio" id="click11" name="semester" size="40" value="1" /> <b>&nbsp;&nbsp;&nbsp;&nbsp 2</b><input type="radio" id="click12" name="semester" size="40" value="2" /><b>&nbsp;&nbsp;&nbsp;&nbsp 3</b><input type="radio" id="click13" name="semester" size="40" value="3" /><b>&nbsp;&nbsp;&nbsp;&nbsp 4</b><input type="radio" id="click14" name="semester" size="40" value="4" /><b>&nbsp;&nbsp;&nbsp;&nbsp 5</b><input type="radio" id="click15" name="semester" size="40" value="5" /><b>&nbsp;&nbsp;&nbsp;&nbsp 6</b><input type="radio" id="click16" name="semester" size="40" value="6" /><b>&nbsp;&nbsp;&nbsp;&nbsp 7</b><input type="radio" id="click17" name="semester" size="40" value="7" /><b>&nbsp;&nbsp;&nbsp;&nbsp 8</b><input type="radio" id="click18" name="semester" size="40" value="8" /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Status<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><b>Pilot</b><input type="radio" id="click21" name="status" size="40" value="Pilot" /> <b>&nbsp;&nbsp;&nbsp;&nbsp Main</b><input type="radio" id="click22" name="status" size="40" value="Main" /></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer1 Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r1name" value="<%=rs.getString(18)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer1 Institute</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r1inst" value="<%=rs.getString(19)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer1 Email Address</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r1email" value="<%=rs.getString(20)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer1 Contact No.</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r1contact" value="<%=rs.getString(21)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer2 Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r2name" value="<%=rs.getString(22)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer2 Institute</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r2inst" value="<%=rs.getString(23)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer2 Email Address</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r2email" value="<%=rs.getString(24)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer2 Contact No.</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r2contact" value="<%=rs.getString(25)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer3 Name<sup>*</sup></td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r3name" value="<%=rs.getString(26)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer3 Institute</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r3inst" value="<%=rs.getString(27)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer3 Email Address</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r3email" value="<%=rs.getString(28)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Reviewer3 Contact No.</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="r3contact" value="<%=rs.getString(29)%>" size=50 maxlength="200"></input></td>
                                </tr>
                                <tr><td class="alt2" colspan="2" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px"><hr></hr></td></tr>

                                <tr>
                                    <td class="thead" style="font-weight:bolder; border: 1px solid #555576; border-right: 0px">Additional Information</td>
                                    <td class="thead" align="right" style="font-weight:normal; border: 1px solid #555576; border-left: 0px"></td>
                                </tr>
                                <tr valign="top">
                                    <td class="alt2" width="200" style="border: 1px solid #555576; border-top: 0px; border-bottom: 0px">Home Address:</td>
                                    <td class="alt2" style="border-right: 1px solid #555576"><input type="text" name="address" value="<%=rs.getString(8)%>" size=50 ></input></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" class="thead" align="right" style="font-weight:normal; border: 1px solid #555576;">
                                        <input type="button" name="submit" onclick=" formValidation()" value="Submit"/>
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                    </form>


                </div>
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
        <div align="center" id="footer" style="background-color: #112635">
            Copyright &copy; 2013 CET,IITKGP
        </div>


    </body>
</html>

