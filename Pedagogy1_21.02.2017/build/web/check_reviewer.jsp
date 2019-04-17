<%--
    Document   : check
    Created on : Jul 3, 2013, 5:46:15 PM
    Author     : Prasanta
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Page</title>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%

                    String email1 = request.getParameter("email1");
                    String user_id = request.getParameter("user_id");
                    String course_id = null;
                    // String login = request.getParameter("login");
                    String pass = request.getParameter("pass");
                    String r1_e = request.getParameter("r1_e");
                    String r1_p = request.getParameter("r1_p");
                    String r2_e = request.getParameter("r2_e");
                    String r2_p = request.getParameter("r2_p");
                    String r3_e = request.getParameter("r3_e");
                    String r3_p = request.getParameter("r3_p");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    String resultString = "select * from course WHERE USER_ID='" + user_id + "'  ";
                    pstatement = connection.prepareStatement(resultString);

                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        course_id = rs.getString(1);

                    }
                    rs.close();

                    if ((email1 != null || pass != null) && (email1 != "" || pass != "")) {


                        if ((email1.equals(r1_e) && pass.equals(r1_p)) || (email1.equals(r2_e) && pass.equals(r2_p)) || (email1.equals(r3_e) && pass.equals(r3_p))) {%>

        <jsp:forward page="coursename.jsp">
            <jsp:param name="COURSE_ID" value="<%=course_id%>"/>
            <jsp:param name="USER_ID" value="<%=user_id%>"/>
            <jsp:param name="email" value="<%=email1%>"/>
            <jsp:param name="pass" value="<%=pass%>"/>
        </jsp:forward>


        <%                                //  response.sendRedirect("IDEMAIN.jsp");
                        } //response.sendRedirect("login.jsp");
                    }
        %>
    </body>
</html>