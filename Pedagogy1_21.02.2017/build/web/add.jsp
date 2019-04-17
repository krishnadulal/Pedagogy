<%-- 
    Document   : add
    Created on : May 2, 2013, 12:40:20 PM
    Author     : Krishna
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Pedagogy Project add</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="JavaScript/chainedselects.js" type="text/javascript"></script>
        <script type="text/javascript"  language="javascript" src="JavaScript/newfile1.js"></script>
        <script type="text/javascript">
            function validateForm(frm)
            {
                //var x= document.forms["addform"]["coursename"].value
                //var y= document.forms["addform"]["department"].value
                ///var z= document.forms["addform"]["institution"].value
                //var m= document.forms["addform"]["principaldevelopername"].value
                //var n= document.forms["addform"]["institutecoordinatorname"].value
                // var o= document.forms["addform"]["coursecoordinatorinstitution"].value
                //var p= document.forms["addform"]["codeveloper1name"].value
                //var q= document.forms["addform"]["reviewer1name"].value
                //var r= document.forms["addform"]["reviewer2name"].value
                //var s= document.forms["addform"]["reviewer3name"].value
                //var t= document.forms["addform"]["codeveloper2name"].value
                var x = frm.coursename.value;
                var y = frm.department.value;
                var z = frm.institution.value;
                var m = frm.principaldevelopername.value;
                var n = frm.institutecoordinatorname.value;
                var o = frm.coursecoordinatorinstitution.value;
                var p = frm.codeveloper1name.value;
                var q = frm.reviewer1name.value;
                var r = frm.reviewer2name.value;
                var s = frm.reviewer3name.value;
                var t = frm.principaldeveloperdesignation.value;
                var u = frm.codeveloper1designation.value;
                var v = frm.principaldeveloperinstitution.value;
                var w = frm.codeveloper1institution.value;
                var a = frm.principaldeveloperdepartment.value;
                var b = frm.codeveloper1department.value;
                var c = frm.principaldeveloperemail.value;
                var d = frm.codeveloper1email.value;
                var e = frm.principaldevelopermobile.value;
                var f = frm.codeveloper1mobile.value;
                var g = frm.reviewer1designation.value;
                var h = frm.reviewer2designation.value;
                var i = frm.reviewer3designation.value;
                var j = frm.reviewer1institution.value;
                var k = frm.reviewer2institution.value;
                var l = frm.reviewer3institution.value;
                var m1 = frm.reviewer1department.value;
                var n1 = frm.reviewer2department.value;
                var o1 = frm.reviewer3department.value;

                //var t=frm.codeveloper2name.value;

                if ((x.valueOf().length < 1) || (y.valueOf().length < 1) || (z.valueOf().length < 1) || (m.valueOf().length < 1) || (n.valueOf().length < 1) || (o.valueOf().length < 1) || (p.valueOf().length < 1) || (q.valueOf().length < 1) || (r.valueOf().length < 1) || (s.valueOf().length < 1) || (t.valueOf().length < 1) || (u.valueOf().length < 1) || (v.valueOf().length < 1) || (w.valueOf().length < 1) || (a.valueOf().length < 1) || (b.valueOf().length < 1) || (c.valueOf().length < 1) || (d.valueOf().length < 1) || (e.valueOf().length < 1) || (f.valueOf().length < 1) || (g.valueOf().length < 1) || (h.valueOf().length < 1) || (i.valueOf().length < 1) || (j.valueOf().length < 1) || (k.valueOf().length < 1) || (l.valueOf().length < 1) || (m1.valueOf().length < 1) || (n1.valueOf().length < 1) || (o1.valueOf().length < 1))
                {
                    alert("** fields are mandatory");

                    return false;
                }

            }
        </script>
    </head>  
    <script type="text/javascript" language=JavaScript>
        var message = "Sorry, right-click has been disabled";
        function clickIE() {
            if (document.all) {
                (message);return false;
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
    <body onload="initListGroup('addform', document.forms[0].department, document.forms[0].coursename);">
        <div id="nav">
            <table align="center" width="75%" >

                <tbody>
                    <tr style=" font-style:normal ;color: cadetblue;font-size:large; " valign="middle" >
                        <td align="center"> <a href="pedagogy_main.jsp">Home</a></td>
                        <td align="center"><a href="main_page.jsp">Course Development</a></td>
                        <td align="center"> <a href="exist.jsp">Submitted EOI</a></td>

                        <td align="center"> <a href="pdf/Guidline.pdf">Developer Guide</a></td>
                        <td align="center"><a href="">Reviewer Guide</a></td>
                    </tr>
                    <tr>
                        <td colspan ="6"> <img src="Images/logo_ICT.jpg" height=150 width=100%></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <center><h2>Expression of Interest<br>
                    National Mission Project on Pedagogy (<a style="color: red">Main Phase</a>)</h2></center>

            <form action="add_data.jsp" method="post" name="addform" >
                <table  border="0" align="center" bgcolor="#F5F5F5" width=75%>
                    <tbody>

                        <tr>
                            <td><b>Discipline<a style="color: #ff0808">**</a> :</b></td>
                            <td>
                                <select id="department" name="department">
                                    <option value="">Select Discipline</option>

                                    <option value="Electronics and Communications Engineering" >Electronics and Communications Engineering</option>
                                    <option value="Electrical Engineering" >Electrical Engineering</option>
                                    <option value="Civil Engineering" >Civil Engineering</option>
                                    <option value="Chemical Engineering">Chemical Engineering</option>
                                    <option value="Mechanical Engineering" >Mechanical Engineering</option>
                                    <option value="1st  and 2nd Semester courses" >1st  and 2nd Semester courses</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td ><b>Course Name<a style="color: #ff0808">**</a> :</b></td>
                            <td align="left" >
                                <select id="coursename" name="coursename">
                                    <option value="" ></option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Institution<a style="color: #ff0808">**</a>:</b></td>
                            <td colspan="3"><input type="text" name="institution" size="60" style="height: 25px" value="" /></td>
                        </tr>
                        <tr>
                            <td align="left"><b>Brief Course Description :</b></td>
                            <td align="left"> <textarea name="briefcoursedescription"  rows="5" cols="80"></textarea></td>
                        </tr>
                        <tr>
                            <td ><b>Name of the Course :</b></td>
                            <td align="justify" colspan="3"><b>Core   </b><input type="radio" name="nameofthecourse"size="40" value="Core" /> <b>&nbsp;&nbsp;&nbsp;&nbsp Elective </b><input type="radio" name="nameofthecourse"size="40" value="Elective" /></td>
                        </tr>

                        <tr>
                            <td><b>Semester in which it is usually offered :</b></td>
                            <td>
                                1 <input type="radio" name="semester" value="1" />
                                2 <input type="radio" name="semester"  value="2" />
                                3 <input type="radio" name="semester" value="3" />
                                4 <input type="radio" name="semester" value="4" />
                                5 <input type="radio" name="semester" value="5" />
                                6 <input type="radio" name="semester" value="6" />
                                7 <input type="radio" name="semester" value="7" />
                                8 <input type="radio" name="semester" value="8" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"> <hr></td>
                        </tr>
                        <tr><td colspan="4">
                                <table border="0" width="100%" align="center">
                                    <tbody>
                                        <tr>
                                            <td><b>Team Composition :</b></td>
                                            <td align="center"><b>Principal Developer<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><b>Co-Developer 1 <a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><b>Co-Developer 2</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4"> <br></td>
                                        </tr>
                                        <tr><td colspan="4">
                                        <tr>
                                            <td><b>Name :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldevelopername"size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1name"size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2name"size="40" style="height: 25px"value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Designation :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldeveloperdesignation" size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1designation" size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2designation" size="40" style="height: 25px"value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Institution :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldeveloperinstitution"size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1institution"size="40" style="height: 25px"value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2institution" size="40" style="height: 25px"value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Department :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldeveloperdepartment"size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1department"size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2department" size="40" style="height: 25px" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>E-mail ID :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldeveloperemail"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1email" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2email"size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Mobile :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="principaldevelopermobile"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1mobile" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2mobile" size="40" style="height: 25px" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Office(with STD) :</b></td>
                                            <td align="center"><input type="text" name="principaldeveloperoffice"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1office"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2office" size="40" style="height: 25px" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Res(with STD) :</b></td>
                                            <td align="center"><input type="text" name="principaldeveloperres" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper1res" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="codeveloper2res"size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Course taught<br>3 years or more :</b></td>
                                            <td align="center"> <b>Y</b> <input type="radio" name="principaldeveloper3years" value="Y" /> <b>N</b> <input type="radio" name="principaldeveloper3years" value="N" /></td>
                                            <td align="center"> <b>Y</b> <input type="radio" name="codeveloper13years" value="Y" /> <b>N</b> <input type="radio" name="codeveloper13years" value="N" /></td>
                                            <td align="center"> <b>Y</b> <input type="radio" name="codeveloper23years" value="Y" /> <b>N</b> <input type="radio" name="codeveloper23years" value="N" /></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </td></tr>

                        <tr>
                            <td colspan="4"> <hr></td>
                        </tr>
                        <tr><td colspan="4">

                                <table border="0" width="100%" align="center">
                                    <tbody>
                                        <tr>
                                            <td><b>Reviewer Panel :</b></td>
                                            <td align="center"><b>Reviewer 1</b> </td>
                                            <td align="center"><b>Reviewer 2</b></td>
                                            <td align="center"><b>Reviewer 3</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4"> <br></td>
                                        </tr>
                                        <tr><td colspan="4">
                                        <tr>
                                            <td><b>Name :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="reviewer1name" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2name"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3name"size="40" style="height: 25px"   value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Designation :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="reviewer1designation"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2designation" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3designation"size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Institution :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="reviewer1institution" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2institution" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3institution"size="40"  style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Department :<a style="color: #ff0808">**</a></b></td>
                                            <td align="center"><input type="text" name="reviewer1department" size="40" style="height: 25px" value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2department" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3department"size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>E-mail ID :</b></td>
                                            <td align="center"><input type="text" name="reviewer1email"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2email"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3email"size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Mobile :</b></td>
                                            <td align="center"><input type="text" name="reviewer1mobile"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2mobile"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3mobile"size="40"style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Office(with STD) :</b></td>
                                            <td align="center"><input type="text" name="reviewer1office" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2office"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3office" size="40" style="height: 25px"  value="" /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Res(with STD) :</b></td>
                                            <td align="center"><input type="text" name="reviewer1res"size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer2res" size="40" style="height: 25px"  value="" /></td>
                                            <td align="center"><input type="text" name="reviewer3res"size="40"style="height: 25px"   value="" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td></tr>
                        <tr>
                            <td colspan="4"> <hr></td>
                        </tr>
                        <tr><td colspan="4">

                        <tr>
                            <td><b>Name of Institute Co-ordinator<a style="color: #ff0808">**</a> :</b></td>
                            <td><input type="text" name="institutecoordinatorname"size="50" style="height: 25px"  value="" /></td>
                        </tr>
                        <tr>
                            <td><b>Institution <a style="color: #ff0808">**</a> :</b></td>
                            <td><input type="text" name="coursecoordinatorinstitution"size="50" style="height: 25px"  value="" /></td>
                        </tr>
                        <tr>
                            <td><b>E-mail ID :</b></td>
                            <td><input type="text" name="coursecoordinatoremail"size="50" style="height: 25px"  value="" /></td>
                        </tr>
                        <tr>
                            <td><b>Mobile :</b></td>
                            <td><input type="text" name="coursecoordinatormobile"size="50" style="height: 25px"  value="" /></td>
                        </tr>
                        <tr>
                            <td colspan="4" align="right"><input type="submit"size="20" value="Submit" name="Submit" onclick= "return validateForm(this.form)"  /></td>
                        </tr>
                    <tbody>
                </table>
            </form>

        </table>


        <div id="footer">
            <p align="center">&copy; 2012-2013 Pedagogy Project</p>
        </div>

    </body>
</html>