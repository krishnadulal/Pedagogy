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
    </head>
    <script type="text/javascript" language=JavaScript>
        var message="Sorry, right-click has been disabled";        
        function clickIE() {if (document.all) {(message);return false;}}
        function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all))
            {                 if (e.which==2||e.which==3) {(message);return false;}}}
        if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
        else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
        document.oncontextmenu=new Function("return false")
    </script>
    <body>
        <%
                    String login = request.getParameter("login");
                    String password = request.getParameter("password");

                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;
                    PreparedStatement pstatement = null;
                    ResultSet rs = null;
                    String login_id = null;
                    String password_id = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    String resultString = "select * from admin_login";
                    pstatement = connection.prepareStatement(resultString);

                    rs = pstatement.executeQuery();
                    while (rs.next()) {
                        login_id = rs.getString(2);
                        password_id = rs.getString(3);
                    }
                    rs.close();

                    if ((login != null || password != null) && (login != "" || password != "")) {


                        if (login.equals(login_id) && password.equals(password_id)) {%>

        <jsp:forward page="main_page.jsp">
            <jsp:param name="LOGIN" value="<%=login%>"/>
            <jsp:param name="PASSWORD_ID" value="<%=password%>"/>
        </jsp:forward>


        <%                                //  response.sendRedirect("IDEMAIN.jsp");
                        } //response.sendRedirect("login.jsp");
                    }
        %>
    </body>
</html>