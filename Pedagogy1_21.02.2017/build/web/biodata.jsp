<%--
    Document   : index
    Created on : May 2, 2013, 11:22:57 AM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title> PEDAGOGY (MAIN PHASE)</title>
        <meta name="description" content="Pedagogy Project - powered by Intinno Technologies - National Mission Project on Education through ICT - Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-Learning -Main Phase" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script type="text/javascript"src="JavaScript/prototype.js"></script>
        <script type="text/javascript"src="JavaScript/jquery-1.9.1.min.js"></script>
        <script type="text/javascript"src="JavaScript/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="JavaScript/main.js"></script>
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
    <script type="text/javascript">
        function ValidateFileUpload(db) {
            var fuData = document.getElementById('upload' + db);
            var FileUploadPath = fuData.value;
            var MAX_SIZE = 1048576;

            if (FileUploadPath == '') {
                alert("Please upload an image");
                $('#upload' + db).val('');
            } else {
                var Extension = FileUploadPath.substring(FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
                if (Extension == "gif" || Extension == "png" || Extension == "bmp"
                        || Extension == "jpeg" || Extension == "jpg") {

                    if (fuData.files && fuData.files[0]) {

                        var size = fuData.files[0].size;

                        if (size > MAX_SIZE) {
                            alert("Maximum file size exceeds, Max Size 1 MB");
                            $('#upload' + db).val('');
                            return;
                        } else {
                            var reader = new FileReader();

                            reader.onload = function (e) {
                                if (db == 1) {
                                    $('#photo_pd').attr('src', e.target.result);
                                } else if (db == 2) {
                                    $('#photo_co1').attr('src', e.target.result);
                                } else if (db == 3) {
                                    $('#photo_co2').attr('src', e.target.result);
                                }
                            }

                            reader.readAsDataURL(fuData.files[0]);
                        }
                    }
                } else {
                    alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
                    $('#upload' + db).val('');
                }
            }
        }
    </script> 

    <body>
        <%
            String course = null;
            course = request.getParameter("course");
            String submit = null;
            submit = request.getParameter("submit");
        %>
        <script type="text/javascript">
            function check(cb)
            {
                document.getElementById(cb).submit();
            }

            function chMd1()
            {
                var a = document.getElementById("course").value;
                if (a == 'All')
                {
                    return false;
                }
            }
        </script>
        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">

                    <ul>
                        <li><a href="pedagogy_main.jsp">Home</a></li>
                        <li><a href="main_page.jsp">Course Development</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy2/index.jsp">Coordinator Access</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy_view/index.jsp">Courseview</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Inst/main_inst.jsp">Institute Registration</a></li>
                        <li><a href="http://www.ide.iitkgp.ernet.in/Pedagogy/register_course.jsp">Training</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                </div>

                <div id="header-img">
                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>
                </div>
            </div>

            <div align="justify" style="float:right;min-height: 400px" id="content"  >
                <h1 align="center">
                    Bio-Data Form
                </h1>
                <form action="biodata.jsp" method="get" >
                    <b>Select your Course ::</b>
                    <select name="course" id="course">
                        <option value="All">-------:All Courses:------</option>
                        <%
                            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                            Connection connection = null;
                            PreparedStatement pstatement = null;
                            ResultSet rs = null;
                            String user_id = null;
                            String course_name = null;
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                            String resultString = "select * from register_user group by COURSE_NAME";
                            pstatement = connection.prepareStatement(resultString);
                            rs = pstatement.executeQuery();
                            while (rs.next()) {
                                user_id = rs.getString(1);
                                course_name = rs.getString(2);
                                out.println("<option value='" + rs.getString(2) + "'>" + rs.getString(2) + "</option>");
                            }
                            rs.close();
                        %>
                    </select>

                    <input onClick="return chMd1()" name="submit" type="submit" value="Search" />
                </form>
                <%
                    Statement statement = null;
                    ResultSet rs1 = null;
                    ResultSet rs2 = null;
                    String inst = null;
                    String discipline = null;
                    String pd_name = null;
                    String co1_name = null;
                    String co2_name = null;
                    String about_pd = "";
                    String about_co1 = "";
                    String about_co2 = "";

                    String user_id1 = null;
                    try {
                        String resultString1 = " SELECT * FROM register_user where COURSE_NAME= '" + course + "'";
                        statement = connection.createStatement();
                        rs1 = statement.executeQuery(resultString1);
                        while (rs1.next()) {
                            user_id1 = rs1.getString(1);
                            inst = rs1.getString(3);
                            discipline = rs1.getString(4);
                            pd_name = rs1.getString(5);
                            co1_name = rs1.getString(11);
                            co2_name = rs1.getString(12);
                        }
                        String resultString2 = " SELECT * FROM biodata where USER_ID= '" + user_id1 + "'";
                        statement = connection.createStatement();
                        rs2 = statement.executeQuery(resultString2);
                        if (rs2.first()) {
                            about_pd = rs2.getString(3);
                            about_co1 = rs2.getString(5);
                            about_co2 = rs2.getString(7);
                        }
                        if (about_pd == null) {
                            about_pd = "";
                        }
                        if (about_co1 == null) {
                            about_co1 = "";
                        }
                        if (about_co2 == null) {
                            about_co2 = "";
                        }
                    } catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());
                    } finally {
                        rs1.close();
                        rs2.close();
                        statement.close();
                        connection.close();
                    }
                    if ("Search".equals(submit)) {%>
                <br><br>

                <label for="name" style=" font-size:  medium">Course Name:</label>
                <input type="text" style="border: 0px;font-size:  medium;" size="40" id="name" value="<%=course%>" readonly/><br>
                <label for="inst" style=" font-size:  medium">Institute:</label>
                <input type="text" style="border: 0px;font-size:  medium;"size="40" id="inst" value="<%=inst%>" readonly/><br>
                <label for="dis" style=" font-size:  medium">Discipline:</label>
                <input type="text" style="border: 0px;font-size:  medium;"size="40" id="inst" value="<%=discipline%>" readonly/><br>
                <br>
                <form action="${pageContext.request.contextPath}/image_upload_java" id="pd_info" name="pd_info" method="post" enctype="multipart/form-data">
                    <h1 align="left" style="font-size: large; font-style: normal;border-top: 1px solid #b9b9b9;border-spacing: 1px;">
                        <Strong>Principal Developer Name:</Strong> <%=pd_name%>
                    </h1>                    
                    <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                    <input id="biodata" name="biodata" type="hidden" value="Principal Developer"/>
                    <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                    <div style="float: left;height: 250px" >
                        <strong>About you:</strong>(<u style="color: red">Not more than 250 words</u>)<br>
                        <textarea cols="4" rows="9" id="pd_bio" name="pd_bio" style="width: 295px;margin-left: 0px"><%=about_pd%></textarea>
                        <br>
                        <input type="submit" onclick="document.getElementById('pd_info').submit();" class="action" value="Submit">                
                    </div>
                </form>    
                <form action="${pageContext.request.contextPath}/image_upload_java" id="pd_info1" name="pd_info1" method="post" enctype="multipart/form-data">    
                    <dir style="float: right;height: 250px">
                        <strong>Upload Image:</strong>(<u style="color: red">Passport Size</u>)<br>
                        <input type="file" name="upload1" id="upload1" required="required" size="10px" style="overflow: hidden" onchange="return ValidateFileUpload('1')"/>
                        <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                        <input id="biodata" name="biodata" type="hidden" value="Principal Developer"/>
                        <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                        <div style="height: 160px">
                            <%if (about_pd != "" || about_pd != null) {%>
                            <img class="image_width" id="photo_pd" alt="" src="<%= request.getContextPath()%>/image_retrive.jsp?user_id=<%=user_id1%>&type=pd" width="65%" height="150" align="middle"/>
                            <%} else {%>
                            <img class="image_width" id="photo_pd" alt="" src="" width="100" height="150" />
                            <%}%>    
                        </div>
                        <input type="submit" onclick="document.getElementById('pd_info1').submit();" class="action" value="Upload">
                    </dir>    
                </form>
                <br>        
                <form action="${pageContext.request.contextPath}/image_upload_java" id="co1_info" name="co1_info" method="post" enctype="multipart/form-data">
                    <h1 align="left" style="font-size: large; font-style: normal;border-top: 1px solid #b9b9b9;border-spacing: 1px;">
                        <Strong>Co-Developer 1 Name:</strong> <%=co1_name%>
                    </h1>                    
                    <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                    <input id="biodata1" name="biodata" type="hidden" value="Co-Developer 1"/>
                    <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                    <div style="float: left;height: 250px" >
                        <strong>About you:</strong>(<u style="color: red">Not more than 250 words</u>)<br>
                        <textarea cols="4" rows="9" id="co1_bio" name="co1_bio" style="width: 295px;margin-left: 0px"><%=about_co1%></textarea>
                        <br>
                        <input type="submit" onclick="document.getElementById('pd_info').submit();" class="action" value="Submit"> 
                    </div>
                </form>    
                <form action="${pageContext.request.contextPath}/image_upload_java" id="co1_info1" name="co1_info1" method="post" enctype="multipart/form-data">    
                    <dir style="float: right;height: 250px">
                        <strong>Upload Image:</strong>(<u style="color: red">Passport Size</u>)<br>
                        <input type="file" name="upload2" id="upload2" required="required" onchange="return ValidateFileUpload('2')"/>
                        <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                        <input id="biodata1" name="biodata" type="hidden" value="Co-Developer 1"/>
                        <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                        <div style="height: 160px">
                            <%if (about_co1 != "" || about_co1 != null) {%>
                            <img class="image_width" id="photo_co1" alt="" src="<%= request.getContextPath()%>/image_retrive.jsp?user_id=<%=user_id1%>&type=co1" width="100" height="150" align="middle"/>
                            <%} else {%>
                            <img class="image_width" id="photo_co1" alt="" src="" width="100" height="150" />
                            <%}%>
                            <input type="submit" onclick="document.getElementById('co1_info1').submit();" class="action" value="Upload">
                        </div>    
                    </dir>    
                </form>
                <%if ("No".equals(co2_name) || "NA".equals(co2_name)) {%>
                <%} else {%>
                <form action="${pageContext.request.contextPath}/image_upload_java" id="co2_info" name="co2_info" method="post" enctype="multipart/form-data">
                    <h1 align="left" style="font-size: large; font-style: normal;border-top: 1px solid #b9b9b9;border-spacing: 1px;">
                        <Strong>Co-Developer 2 Name:</strong> <%=co2_name%>
                    </h1>                    
                    <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                    <input id="biodata2" name="biodata" type="hidden" value="Co-Developer 2"/>
                    <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                    <div style="float: left;height: 250px" >
                        <strong>About you:</strong>(<u style="color: red">Not more than 250 words</u>)<br>
                        <textarea cols="4" rows="9" id="co2_bio" name="co2_bio" style="width: 295px;margin-left: 0px"><%=about_co2%></textarea>
                        <br>
                        <input type="submit" onclick="document.getElementById('co2_info').submit();" class="action" value="Submit"> 
                    </div>
                </form>
                <form action="${pageContext.request.contextPath}/image_upload_java" id="co2_info1" name="co2_info1" method="post" enctype="multipart/form-data">    
                    <dir style="float: right;height: 250px">
                        <strong>Upload Image:</strong>(<u style="color: red">Passport Size</u>)<br>
                        <input type="file" name="upload3" id="upload3" required="required" onchange="return ValidateFileUpload('3')"/>
                        <input id="user_id2" name="user_id2" type="hidden" value="<%=user_id1%>"/> 
                        <input id="biodata2" name="biodata" type="hidden" value="Co-Developer 2"/>
                        <input id="course_name" name="course_name" type="hidden" value="<%=course%>"/>
                        <div style="height: 160px">
                            <%if (about_co2 != "" || about_co2 != null) {%>
                            <img class="image_width" id="photo_co2" alt="" src="<%= request.getContextPath()%>/image_retrive.jsp?user_id=<%=user_id1%>&type=co2" width="100" height="150" align="middle"/>
                            <%} else {%>
                            <img class="image_width" id="photo_co2" alt="" src="" width="100" height="150" />
                            <%}%>
                            <input type="submit" onclick="document.getElementById('co2_info1').submit();" class="action" value="Upload">    
                        </div>    
                    </dir>    
                </form>

                <%}
                    }%>
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
            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>