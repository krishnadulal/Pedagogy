<%-- 
    Document   : get
    Created on : Sep 18, 2013, 11:56:38 AM
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



                    String extension = request.getParameter("extension");
                    String filepath = request.getParameter("filename");
                    String filename = "" + filepath + "";
                    String file[]=filename.split("\\/");
                    String name=file[6];
                    if (extension.equals("pdf")) {
                        response.setContentType("application/pdf");
                    } else if (extension.equals("doc")) {
                        response.setContentType("application/msword");
                    } else if (extension.equals("jpg") || extension.equals("jpeg")) {
                        response.setContentType("image/jpeg");
                    } else if (extension.equals("txt")) {
                        response.setContentType("text/plain");
                    } else if (extension.equals("docx")) {
                        response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
                    }
                    String disHeader = "Attachment; Filename=\""+name+"\"";
                    response.setHeader("Content-Disposition", disHeader);
                    File fileToDownload = new File(filename);

                    InputStream in = null;
                    ServletOutputStream outs = response.getOutputStream();

                    try {
                        in = new BufferedInputStream(new FileInputStream(fileToDownload));
                        int ch;
                        while ((ch = in.read()) != -1) {
                            outs.print((char) ch);
                        }
                    } finally {
                        if (in != null) {
                            in.close(); // very important
                        }
                    }

                    outs.flush();
                    outs.close();
                    in.close();




        %>
    </body>
</html>
