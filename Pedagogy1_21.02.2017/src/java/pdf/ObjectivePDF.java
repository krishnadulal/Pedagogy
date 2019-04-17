/**
 *
 * @author Prasanta
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pdf;

import com.lowagie.text.Chunk;
import javax.servlet.*;
//import java.sql.*;
import javax.servlet.http.*;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfWriter;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.mysql.jdbc.Connection;

import java.awt.Color;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prasanta
 */
public class ObjectivePDF extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        Document document = new Document();

        response.setContentType("application/pdf"); // Code 1
        response.addHeader("Content-Disposition", "attachment; filename=Objective_Report");
        // declare object of Statement interface that uses for executing sql statements.
        try {
            Connection connection = null;
            PreparedStatement pstatement = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            ResultSet rs2 = null;
            ResultSet rs3 = null;
            ResultSet rs4 = null;
            ResultSet rs5 = null;
            ResultSet rs6 = null;

            String course_name = request.getParameter("COURSE_NAME");
            String user_id = request.getParameter("USER_ID");
            String course_id = null;

            String connectionURL = "jdbc:mysql://localhost:3306/pedagogy_new?useUnicode=true&characterEncoding=UTF-8";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = (Connection) DriverManager.getConnection(connectionURL, "root", "Pedagogy_cet123");
            try {

                PdfWriter.getInstance(document,
                        response.getOutputStream());
                document.open();

                String res = "SELECT * FROM register_user WHERE USER_ID='" + user_id + "'";
                pstatement = connection.prepareStatement(res);
                rs = pstatement.executeQuery();
                rs.next();


                Paragraph pr1 = new Paragraph("National Mission Project on Pedagogy", FontFactory.getFont(FontFactory.defaultEncoding, 20, Font.BOLD, new Color(0, 0, 0)));
                pr1.add(new Chunk("(Main Phase)"));
                pr1.setAlignment(Element.ALIGN_CENTER);


                document.add(pr1);
                Paragraph pr2 = new Paragraph("Course Name : " + rs.getString(2) + "", FontFactory.getFont(FontFactory.defaultEncoding, 16, Font.NORMAL, new Color(0, 0, 0)));
                pr2.setAlignment(Element.ALIGN_CENTER);
                document.add(pr2);
                Paragraph pr3 = new Paragraph("Principal Developer : " + rs.getString(5) + "", FontFactory.getFont(FontFactory.defaultEncoding, 16, Font.NORMAL, new Color(0, 0, 0)));
                pr3.setAlignment(Element.ALIGN_CENTER);
                document.add(pr3);
                document.add(Chunk.NEWLINE);

                rs.close();

                String res1 = "SELECT * FROM course WHERE USER_ID='" + user_id + "'";
                pstatement = connection.prepareStatement(res1);
                rs1 = pstatement.executeQuery();
                rs1.next();
                course_id = rs1.getString(1);
                rs1.close();


                document.add(Chunk.NEWLINE);
                Paragraph pr4 = new Paragraph("Checklist of Action verb used in the Objective ", FontFactory.getFont(FontFactory.defaultEncoding, 18, Font.BOLD, new Color(0, 0, 0)));
                pr4.setAlignment(Element.ALIGN_CENTER);
                document.add(pr4);
                document.add(Chunk.NEWLINE);

                PdfPTable table = new PdfPTable(1);
                Font font = new Font(Font.HELVETICA, 11, Font.BOLDITALIC);
                Font font1 = new Font(Font.HELVETICA, 13, Font.BOLDITALIC, Color.BLUE);
                Font font2 = new Font(Font.HELVETICA, 14, Font.BOLDITALIC, Color.magenta);
                Font font3 = new Font(Font.HELVETICA, 14, Font.BOLDITALIC, new Color(0, 127, 255));
                table.setHorizontalAlignment(Element.ALIGN_CENTER);
                table.setWidthPercentage(100);

                int c_count = 1;
                int c_count1 = 1;
                String data = null;
                String que = "SELECT * FROM courseobjective WHERE COURSE_ID='" + course_id + "'";
                pstatement = connection.prepareStatement(que);
                rs2 = pstatement.executeQuery();
                if (rs2.first()) {
                    Phrase c_obj1 = new Phrase("Course Level Objective", font1);
                    table.addCell(c_obj1);
                } else {
                    Phrase c_obj1 = new Phrase("No Course Level Objective", font1);
                    table.addCell(c_obj1);
                }
                rs2.beforeFirst();
                while (rs2.next()) {
                    String[] temp = rs2.getString(4).split(":-");
                    String[] temp1 = rs2.getString(4).split(":");
                    String action_verb = temp1[1].toLowerCase();
                    String action[] = action_verb.split(" ");
                    int match = -1;
                    if (temp.length == 1) {
                        data = "";
                    } else {
                        if(action.length == 1){
                        data = temp[1];
                        String objective = data.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                        match = objective.indexOf(action_verb);
                        System.out.print(match);}else{
                        data = temp[1];
                        String objective = data.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                        match = objective.indexOf("examples");
                        }
                    }
                    if (match == -1) {
                        Phrase c_obj = new Phrase("" + rs2.getString(4) + "", font);
                        table.addCell(c_obj);
                        c_count++;
                    } else {
                        c_count1++;
                    }
                }
                rs2.close();
                if (c_count == 1 && c_count1 != 1) {
                    Phrase c_obj2 = new Phrase("Completed", font);
                    table.addCell(c_obj2);
                }
                int m_cou = 1;
                String que2 = "SELECT * FROM module WHERE COURSE_ID='" + course_id + "'";
                pstatement = connection.prepareStatement(que2);
                rs3 = pstatement.executeQuery();

                while (rs3.next()) {
                    Phrase n_zz = new Phrase(" ", font);
                    table.addCell(n_zz);


                    Phrase q_zz = new Phrase("" + m_cou + "  Module Name:- " + rs3.getString(2) + "", font3);
                    table.addCell(q_zz);

                    String data1 = null;
                    int m_count = 1;
                    int m_count1 = 1;
                    String que3 = "SELECT * FROM moduleobjective WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                    pstatement = connection.prepareStatement(que3);
                    rs4 = pstatement.executeQuery();
                    if (rs4.first()) {
                        Phrase m_obj1 = new Phrase("Module Level Objective", font1);
                        table.addCell(m_obj1);
                    } else {
                        Phrase c_obj1 = new Phrase("No Module Level Objective", font1);
                        table.addCell(c_obj1);
                    }
                    rs4.beforeFirst();
                    while (rs4.next()) {
                        String[] var = rs4.getString(4).split(":-");
                        String[] var1 = rs4.getString(4).split(":");
                        String action_verb1 = var1[1].toLowerCase();
                        String action1[] = action_verb1.split(" ");
                        int match1 = -1;
                        if (var.length == 1) {
                            data1 = "";
                        } else {
                            if(action1.length == 1){
                            data1 = var[1];
                            String objective1 = data1.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                            match1 = objective1.indexOf(action_verb1);
                            System.out.print(match1);}else{
                            data1 = var[1];
                            String objective1 = data1.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                            match1 = objective1.indexOf("examples");
                            }
                        }
                        if (match1 == -1) {
                            Phrase m_obj = new Phrase("" + rs4.getString(4) + "", font);
                            table.addCell(m_obj);
                            m_count++;
                        } else {
                            m_count1++;
                        }
                    }
                    rs4.close();
                    if (m_count == 1 && m_count1 != 1) {
                        Phrase c_obj2 = new Phrase("Completed", font);
                        table.addCell(c_obj2);
                    }
                    int u_cou = 1;
                    String que4 = "SELECT * FROM unit WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                    pstatement = connection.prepareStatement(que4);
                    rs5 = pstatement.executeQuery();

                    while (rs5.next()) {
                        Phrase u_zz = new Phrase(" ", font);
                        table.addCell(u_zz);


                        Phrase u_zz1 = new Phrase("" + m_cou + "." + u_cou + "  Unit Name:- " + rs5.getString(2) + "", font2);
                        table.addCell(u_zz1);

                        int u_count = 1;
                        int u_count1 = 1;
                        String data2 = null;
                        String que5 = "SELECT * FROM unitobjective WHERE COURSE_ID='" + course_id + "' AND MODULE_ID='" + rs3.getString(1) + "'AND UNIT_ID='" + rs5.getString(1) + "'";
                        pstatement = connection.prepareStatement(que5);
                        rs6 = pstatement.executeQuery();
                        if (rs6.first()) {
                            Phrase u_obj1 = new Phrase("Unit Level Objective", font1);
                            table.addCell(u_obj1);
                        } else {
                            Phrase u_obj1 = new Phrase("No Unit Level Objective", font1);
                            table.addCell(u_obj1);
                        }
                        rs6.beforeFirst();
                        while (rs6.next()) {
                            String[] u_var = rs6.getString(4).split(":-");
                            String[] u_var1 = rs6.getString(4).split(":");
                            String action_verb2 = u_var1[1].toLowerCase();
                            String action2[] = action_verb2.split(" ");
                            int match2 = -1;
                            if (u_var.length == 1) {
                                data2 = "";
                            } else {
                                if(action2.length == 1){
                                data2 = u_var[1];
                                String objective2 = data2.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                                match2 = objective2.indexOf(action_verb2);
                                System.out.print(match2);}else{
                                data2 = u_var[1];
                                String objective2 = data2.toLowerCase().replaceAll("[^a-zA-Z0-9]", " ");
                                match2 = objective2.indexOf("examples");
                                }
                            }
                            if (match2 == -1) {
                                Phrase u_obj = new Phrase("" + rs6.getString(4) + "", font);
                                table.addCell(u_obj);
                                u_count++;
                            } else {
                                u_count1++;
                            }
                        }
                        rs6.close();
                        if (u_count == 1 && u_count1 != 1) {
                            Phrase c_obj2 = new Phrase("Completed", font);
                            table.addCell(c_obj2);
                        }
                        u_cou++;
                    }
                    rs5.close();
                    m_cou++;
                }
                rs3.close();

                document.add(table);

            } catch (DocumentException ex) {
                System.out.println("Unable to connect to Database." + ex.getMessage());
            } finally {
                // close all the connections.

                document.close();
                //pstatement.close();
                connection.close();

            }
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());

        }
    }
}
