<%-- 
    Document   : rr1
    Created on : 22 Aug, 2013, 1:09:16 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PEDAGOGY MAIN PHASE</title>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <%
                    String email = request.getParameter("email");
                    String user_id = request.getParameter("USER_ID");
                    String password = request.getParameter("password");
                    request.setCharacterEncoding("UTF-8");
                    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
                    Connection connection = null;

                    ResultSet rs = null;
                    Statement statement = null;
                    PreparedStatement pstatement = null;

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
                    try {
                        if(password!=null)
                            {

                        if (email.equals("r1")) {
                            String queryString = "UPDATE  register_user SET R1_PASSWORD = '" + password + "' WHERE  USER_ID=" + user_id + " ";

                            pstatement = connection.prepareStatement(queryString);
                            pstatement.executeUpdate();
                            out.println(" Reviewer1 Password Change Successfully");
                        } else if (email.equals("r2")) {
                            String queryString = "UPDATE  register_user SET R2_PASSWORD = '" + password + "' WHERE  USER_ID=" + user_id + " ";

                            pstatement = connection.prepareStatement(queryString);
                            pstatement.executeUpdate();
                            out.println(" Reviewer2 Password Change Successfully");
                        } else if (email.equals("r3")) {
                            String queryString = "UPDATE  register_user SET R3_PASSWORD = '" + password + "' WHERE  USER_ID=" + user_id + " ";

                            pstatement = connection.prepareStatement(queryString);
                            pstatement.executeUpdate();
                            out.println(" Reviewer3 Password Change Successfully");
                        }
                        pstatement.close();
                        
}
                        else
                            {
                        String resultString = " SELECT * FROM register_user WHERE USER_ID=" + user_id + " ";
                        statement = connection.createStatement();
                        rs = statement.executeQuery(resultString);

                        while (rs.next()) {


        %>

        <form action="rr1.jsp" method="get">
            <%if (email.equals("r1")) {%>
            <b>Email:-</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input readonly type="text" name="emailid" value="<%=rs.getString(20)%>" /><br>
            <input type="hidden" name="email" value="r1" /><br>
            <%} else if (email.equals("r2")) {%>
            <b>Email:-</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input readonly type="text" name="emailid" value="<%=rs.getString(24)%>" /><br>
            <input type="hidden" name="email" value="r2" /><br>
            <%} else if (email.equals("r3")) {%>
            <b>Email:-</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input readonly type="text" name="emailid" value="<%=rs.getString(28)%>" /><br>
            <input type="hidden" name="email" value="r3" /><br>
            <%}%>
            <b> Password:-</b><input type="password" name="password" value="" /><br>
            <input type="hidden" name="USER_ID" value="<%=user_id%>"/>
            <input type="submit" value="Create" />
        </form>


        <%}
                        statement.close();
                        }
                    } catch (Exception ex) {
                        out.println("Unable to connect to Database." + ex.getMessage());
                    } finally {

                        
                        connection.close();
                        
                    }
        %>
    </body>
</html>
