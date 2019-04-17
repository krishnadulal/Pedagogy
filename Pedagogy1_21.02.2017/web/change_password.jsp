<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
    request.setCharacterEncoding("UTF-8");
    String login = request.getParameter("LOGIN");
    String Newpass = request.getParameter("new");
    //String conpass=request.getParameter("confirm");
    String user_id = request.getParameter("user_id");
    String password = request.getParameter("PASSWORD_ID");
    String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
    Connection connection = null;
    PreparedStatement pstatement = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    ResultSet rs = null;
    String pass = null;
    int updateQuery2 = 0;
    try {
        connection = DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");

        String queryString1 = "update register_user set PASSWORD='" + Newpass + "' where USER_ID='" + user_id + "'";
        pstatement = connection.prepareStatement(queryString1);
        updateQuery2 = pstatement.executeUpdate();
        if (updateQuery2 != 0) {%>
<jsp:forward page="login_id.jsp">
    <jsp:param name="LOGIN" value="<%=login%>"/>
    <jsp:param name="PASSWORD_ID" value="<%=password%>"/>
    <jsp:param name="PASSWORD" value="<%=Newpass%>"/>
    <jsp:param name="USER_ID" value="<%=user_id%>"/>
</jsp:forward>

<%
        }
    } catch (Exception e) {
        out.println(e);
    } finally {
    
        pstatement.close();
        connection.close();
    }
%>