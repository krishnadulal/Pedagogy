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
        <%          String email_id = request.getParameter("email_id");
                    String email1 = request.getParameter("email1");
                    String email2 = request.getParameter("email2");
                    String password_id = request.getParameter("password_id");
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");
                    String user_id = request.getParameter("user_id");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    String course_id = null;
                    String login = "login";
                    String password1 = "password";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    String resultString = "select * from course WHERE USER_ID='" + user_id + "'  ";
                    pstatement = connection.prepareStatement(resultString);

                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        course_id = rs.getString(1);
                    }
                    rs.close();

                    if ((email != null || password != null) && (email != "" || password != "")) {


                        if (email.equals(email_id) && password.equals(password_id)) {%>

        <jsp:forward page="coursename.jsp">
            <jsp:param name="COURSE_ID" value="<%=course_id%>"/>
            <jsp:param name="EMAIL_ID" value="<%=email_id%>"/>
            <jsp:param name="email1" value="<%=email1%>"/>
            <jsp:param name="email2" value="<%=email2%>"/>
            <jsp:param name="USER_ID" value="<%=user_id%>"/>
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password1%>"/>
        </jsp:forward>
        <%                                //  response.sendRedirect("IDEMAIN.jsp");
                        }
                    }
        %>
    </body>
</html>