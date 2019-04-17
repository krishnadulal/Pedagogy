<%-- 
    Document   : DownloadFile
    Created on : Jan 19, 2015, 11:54:43 AM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PEDAGOGY (MAIN PHASE)</title>
    </head>
    <body>
        <%

            int BUFSIZE = 4096;
            String filePath;
            {
                filePath = getServletContext().getRealPath("") + File.separator + "a.pdf";
                //System.out.println("kanhiii"+filePath);
                File file = new File(filePath);
                int length = 0;
                ServletOutputStream outStream = response.getOutputStream();
                response.setContentType("application/pdf");
                response.setContentLength((int) file.length());
                String fileName = (new File(filePath)).getName();
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

                byte[] byteBuffer = new byte[BUFSIZE];
                DataInputStream in = new DataInputStream(new FileInputStream(file));

                while ((in != null) && ((length = in.read(byteBuffer)) != -1)) {
                    outStream.write(byteBuffer, 0, length);
                }
                in.close();
                outStream.close();
            }
        %>
    </body>
</html>
