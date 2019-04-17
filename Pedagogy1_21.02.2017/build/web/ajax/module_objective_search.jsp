<%--
    Document   : course_objective_search
    Created on : Jul 8, 2015, 7:05:34 PM
    Author     : PRASANTA
--%>

<%@page import="java.util.ArrayList"%>
<%--
    Document   : admin-panel2
    Created on : Jul 1, 2015, 1:05:40 PM
    Author     : PRASANTA
--%>

<%@page import="java.util.Date"%>
<%@page contentType="application/json" pageEncoding="UTF-8" import="cetiitkgp.db.DBManager, java.text.SimpleDateFormat, java.util.Calendar, java.sql.ResultSet, java.sql.SQLException, atg.taglib.json.util.JSONArray, atg.taglib.json.util.JSONException, atg.taglib.json.util.JSONObject" %><%

            String action = request.getParameter("action");
            String id = request.getParameter("identifier");
            String module_id = request.getParameter("module");
            String database = request.getParameter("db");

            Boolean errorFlag = false;
            if (action != null || id != null || module_id != null || database != null) {
                if (!action.equals("details")) {
                    errorFlag = true;
                }
                if (!database.equals("moduleobjective")) {
                    errorFlag = true;
                }

                if (errorFlag == true) {
                    out.println("{error: \"Unexpected argument format.\"}");
                    return;
                }

                if (database.equals("moduleobjective")) {
                    database = "moduleobjective";
                }

                DBManager dbm = new DBManager();
                dbm.initConnectionAndStatement();

                JSONArray jsonArray = new JSONArray();
                ArrayList<Integer> user_list = new ArrayList<Integer>();
                ArrayList<Integer> course_list = new ArrayList<Integer>();
                ResultSet rs1 = null;
                ResultSet rs2 = null;
                ResultSet rs3 = null;
                ResultSet rs4 = null;
                ResultSet rs5 = null;
                String USER_ID = null;
                String DISCIPLINE = null;
                if (action.equals("details") && database.equals("moduleobjective") && module_id != null) {
                    try {
                       dbm.createPreparedStatement("SELECT * FROM course where COURSE_ID=?");
                                    dbm.PREPARED_STATEMENT.setString(1, id);
                                    rs2 = dbm.PREPARED_STATEMENT.executeQuery();
                                    while(rs2.next()){
                                    USER_ID = rs2.getString("USER_ID");
                                     }rs2.close();

                       dbm.createPreparedStatement("SELECT * FROM register_user where USER_ID=?");
                                    dbm.PREPARED_STATEMENT.setString(1, USER_ID);
                                    rs3 = dbm.PREPARED_STATEMENT.executeQuery();
                                    while(rs3.next()){
                                    DISCIPLINE = rs3.getString("DISCIPLINE");
                                     }rs3.close();

                     dbm.createPreparedStatement("SELECT * FROM register_user where DISCIPLINE=?");
                                    dbm.PREPARED_STATEMENT.setString(1, DISCIPLINE);
                                    rs4 = dbm.PREPARED_STATEMENT.executeQuery();
                                    while(rs4.next()){
                                    if (!user_list.contains(rs4.getInt("USER_ID"))) {
                                        user_list.add(rs4.getInt("USER_ID"));
                                    }
                                     }rs4.close();
                     for (int x1 = 0; x1 < user_list.size(); x1++) {
                     dbm.createPreparedStatement("SELECT * FROM course where USER_ID=?");
                                    dbm.PREPARED_STATEMENT.setInt(1, user_list.get(x1));
                                    rs5 = dbm.PREPARED_STATEMENT.executeQuery();
                                    while(rs5.next()){
                                    if (!course_list.contains(rs5.getInt("COURSE_ID"))) {
                                        course_list.add(rs5.getInt("COURSE_ID"));
                                    }
                                     }rs5.close();
                                     }

                            for (int x2 = 0; x2 < course_list.size(); x2++) {


                                    dbm.createPreparedStatement("SELECT * FROM moduleobjective where COURSE_ID=?");
                                    dbm.PREPARED_STATEMENT.setInt(1, course_list.get(x2));
                                    rs1 = dbm.PREPARED_STATEMENT.executeQuery();
                                    if (rs1.first()) {
                                        do {
                                            JSONObject jObj = new JSONObject();

                                            jObj.put("mobj_id", rs1.getInt("MOBJ_ID"));
                                            jObj.put("objective", rs1.getString("OBJECTIVE"));
                                            jsonArray.add(jObj);
                                        } while (rs1.next());
                                    }rs1.close();
                                    }
                        out.println(jsonArray.toString());
                        dbm.free();
                        return;
                    } catch (Exception ex) {
                        out.println("{error: \"Database error1. There might be an error in the SQL.\"}");
                    } finally {
                    }
                    return;
                }}

%>

