<%-- 
    Document   : logout
    Created on : Jul 3, 2013, 9:36:23 PM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
    <%
    if(session.getAttribute("username")==null && session.getAttribute("password") == null)
    response.sendRedirect("main_page.jsp");
    else
    {
    session.setAttribute("username",null);
    session.setAttribute("password", null);
    session.invalidate();%>
        <jsp:forward page="main_page.jsp"/>
        <%
    //response.sendRedirect("login.jsp");
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>
        <h1>OUT</h1>
    </body>
</html>
