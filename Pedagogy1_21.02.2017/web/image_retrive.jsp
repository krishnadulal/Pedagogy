<%-- 
    Document   : image_retrive
    Created on : Feb 6, 2015, 11:23:58 AM
    Author     : Prasanta

    Last Modified
    by: Anirban Chakraborty
    on: Mar 11, 2015, 4:22 PM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.OutputStream, java.sql.ResultSet, cetiitkgp.db.DBManager"%>
<%
    request.setCharacterEncoding("UTF-8");
    String user_id = request.getParameter("user_id");
    String type = request.getParameter("type");

    if(user_id == null && type == null ){
        response.sendError( HttpServletResponse.SC_NOT_FOUND, "Image not found" );
    }
    
    DBManager dbm = new DBManager();
    dbm.initConnectionAndStatement();
    ResultSet rs = null;
    
    String queryString = null;
    OutputStream oImage = null;
    try {        
        queryString = "select * from biodata where USER_ID=?";       
        dbm.createPreparedStatement(queryString);
        dbm.PREPARED_STATEMENT.setInt(1, Integer.parseInt(user_id));
        rs = dbm.PREPARED_STATEMENT.executeQuery();
        if (rs.first()) {
            if(user_id!=null && type.equals("pd")){
            byte barray[] = rs.getBytes("PD_IMAGE");
            response.setContentType("image/gif");
            oImage = response.getOutputStream();
            oImage.write(barray);
            oImage.flush();
            oImage.close();
            }else if(user_id!=null && type.equals("co1")){
            byte barray[] = rs.getBytes("CO1_IMAGE");
            response.setContentType("image/gif");
            oImage = response.getOutputStream();
            oImage.write(barray);
            oImage.flush();
            oImage.close();    
            }else if(user_id!=null && type.equals("co2")){
            byte barray[] = rs.getBytes("CO2_IMAGE");
            response.setContentType("image/gif");
            oImage = response.getOutputStream();
            oImage.write(barray);
            oImage.flush();
            oImage.close();    
            }    
        }
        rs.close();
    } catch (Exception ex) {
        out.print("Image not found.");
    } finally {
        dbm.free();
    }
%>