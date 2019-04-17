<%-- 
    Document   : unitsolution_database
    Created on : Sep 11, 2013, 10:27:55 AM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PEDAGOGY(MAIN PHASE)</title>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%
                    request.setCharacterEncoding("UTF-8");
                    String id = request.getParameter("COURSE_ID");
                    String uprob_id = request.getParameter("UPROB_ID");
                    String module_id = request.getParameter("MODULE_ID");
                    String unit_id = request.getParameter("UNIT_ID");
                    String l = "U_";
                    String m = l.concat(id);
                    String a = m.concat(".");
                    String b = a.concat(module_id);
                    String c = b.concat(".");
                    String d = c.concat(unit_id);
                    String e = d.concat(".");
                    String Filename = e.concat(uprob_id);
                    File file;
                    String format = "none";
                    int maxFileSize = 100000 * 1024;
                    int maxMemSize = 100000 * 1024;
                    ServletContext context = pageContext.getServletContext();
                    //String filePath = context.getInitParameter("file-upload");
                    String solution = null;
                    File file1 = null;
                    FileInputStream fis = null;
                    String sourse = "/home/pedagogy/pedagogy/Pedagogy1_18.09.13/solution/";

                    //String fullpath = null;
                    //String replace2 = null;
                    // Verify the content type

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    // maximum size that will be stored in memory
                    factory.setSizeThreshold(maxMemSize);
                    // Location to save data that is larger than maxMemSize.
                    factory.setRepository(new File("C:\\Temp"));

                    // Create a new file upload handler
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    //FileUpload upload=new FileUpload(factory);
                    // maximum file size to be uploaded.
                    upload.setSizeMax(maxFileSize);
                    try {
                        // Parse the request to get file items.
                        List fileItems = upload.parseRequest(request);
                        // Process the uploaded file items
                        Iterator i = fileItems.iterator();
                        while (i.hasNext()) {
                            FileItem fi = (FileItem) i.next();
                            if (!fi.isFormField()) {
                                // Get the uploaded file parameters
                                String fieldName = fi.getFieldName();
                                String fileName = fi.getName();
                                int index = fileName.lastIndexOf(".");
                                if (index > 0) {
                                    format = fileName.substring(index + 1);
                                    format = format.toLowerCase();
                                }

                                String fileextn = Filename.concat(".");
                                String fn1 = fileextn.concat(format);
                                //String replace1 = filePath.concat(fn1);
                                String fn = fileName.replaceAll(fileName, fn1);

                                solution = sourse.concat(fn);
                                boolean isInMemory = fi.isInMemory();
                                long sizeInBytes = fi.getSize();
                                // Write the file
                                if (fn.lastIndexOf("/") >= 0) {
                                    file = new File(sourse
                                            + fn.substring(fn.lastIndexOf("/")));

                                } else {
                                    file = new File(sourse
                                            + fn.substring(fn.lastIndexOf("/") + 1));

                                }

                                fi.write(file);

                            }
                        }
                    } catch (Exception ex) {
                        System.out.println(ex);
                    }


                    //file1 = new File("" + solution + "");

                   // fis = new FileInputStream(file1);
                    //request.setCharacterEncoding("UTF-8");



                    String email = request.getParameter("email");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String login = request.getParameter("LOGIN");
                    String password_id = request.getParameter("PASSWORD_ID");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    int updateQuery2 = 0;
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        String queryString1 = "UPDATE unitproblem SET SOLUTION_FILE=? WHERE UPROB_ID='" + uprob_id + "' AND COURSE_ID='" + id + "' AND MODULE_ID='" + module_id + "' AND UNIT_ID='" + unit_id + "' ";

                        pstatement = connection.prepareStatement(queryString1);
                        pstatement.setString(1, solution);
                        updateQuery2 = pstatement.executeUpdate();
                        if (updateQuery2 != 0) {
                            String queryString10 = "UPDATE course SET TIME_CHECK=now() WHERE COURSE_ID=" + id + "";
                            pstatement = connection.prepareStatement(queryString10);

                            pstatement.executeUpdate();
        %>
        <jsp:forward page="unit_problem.jsp">
            <jsp:param name="COURSE_ID" value="<%=id%>"/>
            <jsp:param name="MODULE_ID" value="<%=module_id%>"/>
            <jsp:param name="UNIT_ID" value="<%=unit_id%>"/>
            <jsp:param name="UPROB_ID" value="<%=uprob_id%>"/>
            <jsp:param name="email" value="<%=email%>"/>
            <jsp:param name="email1" value="<%=email1%>"/>
            <jsp:param name="email2" value="<%=email2%>"/>
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="SOLUTION" value="<%=solution%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password_id%>"/>
        </jsp:forward>

        <%                                  }
                    } catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());

                    } finally {
                        // close all the connections.
                        pstatement.close();

                        connection.close();
                    }

        %>
    </body>
</html>

