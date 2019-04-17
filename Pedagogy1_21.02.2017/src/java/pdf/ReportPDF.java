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

import com.mysql.jdbc.Statement;
import java.awt.Color;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prasanta
 */
public class ReportPDF extends HttpServlet {

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
        response.addHeader("Content-Disposition", "attachment; filename=Full_Report");
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
            ResultSet rs7 = null;
            ResultSet rs8 = null;
            ResultSet rs9 = null;
            
            String course_name = request.getParameter("COURSE_NAME");
            String user_id = request.getParameter("USER_ID");
            
            
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
                

                PdfPTable table = new PdfPTable(2);
                Font font = new Font(Font.HELVETICA, 12, Font.BOLDITALIC);
                Font font1 = new Font(Font.HELVETICA, 12, Font.BOLDITALIC,Color.RED);
                Font font2 = new Font(Font.HELVETICA, 12, Font.BOLDITALIC,Color.GREEN);
                table.setHorizontalAlignment(Element.ALIGN_CENTER);
                table.setWidthPercentage(100);
                PdfPCell cell;
                Phrase k = new Phrase("1    Mission :", font);
                table.addCell(k);


                if (rs1.getString(3) == null || rs1.getString(3).equals("")) {

                    cell = new PdfPCell(new Phrase("NO"));
                } else {

                    cell = new PdfPCell(new Phrase("YES"));

                }
                //cell.setColspan(0);
                table.addCell(cell);


                PdfPCell cell2;
                Phrase l = new Phrase("2    Vision:", font);
                table.addCell(l);
                if (null != rs1.getString(4) && 0 != rs1.getString(4).length()) {
                    cell2 = new PdfPCell(new Phrase("YES"));
                } else {
                    cell2 = new PdfPCell(new Phrase("NO"));
                }
                //cell2.setColspan(2);
                table.addCell(cell2);


                PdfPCell cell3;
                Phrase m = new Phrase("3    Program Educational Objectives :", font);
                table.addCell(m);
                if (null != rs1.getString(5) && 0 != rs1.getString(5).length()) {
                    cell3 = new PdfPCell(new Phrase("YES"));
                } else {
                    cell3 = new PdfPCell(new Phrase("NO"));
                }
                //cell3.setColspan(2);
                table.addCell(cell3);


                PdfPCell cell5;
                Phrase o = new Phrase("4    Course Overview:", font);
                table.addCell(o);
                if (null != rs1.getString(6) && 0 != rs1.getString(6).length()) {
                    cell5 = new PdfPCell(new Phrase("YES"));
                } else {
                    cell5 = new PdfPCell(new Phrase("NO"));
                }
                //cell5.setColspan(2);
                table.addCell(cell5);


                int aa = 0;
                String res2 = "SELECT * FROM courseobjective WHERE COURSE_ID='" + rs1.getString(1) + "'";
                pstatement = connection.prepareStatement(res2);
                rs2 = pstatement.executeQuery();
                rs2.last();
                aa = rs2.getRow();
                rs2.beforeFirst();
                rs2.next();
                String couobj = String.valueOf(aa);

                Phrase o1 = new Phrase("5    Course Objectives: ", font);
                table.addCell(o1);
                PdfPCell cell6 = new PdfPCell(new Phrase(couobj));
                //cell6.setColspan(3);
                table.addCell(cell6);

                document.add(table);
                rs2.close();

                PdfPTable table1 = new PdfPTable(2);
                table1.setWidthPercentage(100);
                table1.setHorizontalAlignment(Element.ALIGN_CENTER);


                int aa1 = 0;
                String res3 = "SELECT * FROM module WHERE COURSE_ID='" + rs1.getString(1) + "'";
                pstatement = connection.prepareStatement(res3);
                rs3 = pstatement.executeQuery();


                rs3.last();
                aa1 = rs3.getRow();
                rs3.beforeFirst();

                String couobj1 = String.valueOf(aa1);



                Phrase p = new Phrase("6    No. of Course Modules:", font);
                table1.addCell(p);
                PdfPCell cell7 = new PdfPCell(new Phrase(couobj1));
                //cell7.setColspan(3);
                table1.addCell(cell7);
                int zz = 1;
                while (rs3.next()) {
                    Phrase n_zz = new Phrase(" ", font);
                    table1.addCell(n_zz);
                    PdfPCell cell21 = new PdfPCell(new Phrase());
                    //cell11.setColspan(3);
                    table1.addCell(cell21);


                    Phrase q_zz = new Phrase("6." + zz + "      Module Name: ", font);
                    table1.addCell(q_zz);
                    PdfPCell cell8 = new PdfPCell(new Phrase(rs3.getString(2)));
                    //cell8.setColspan(3);
                    table1.addCell(cell8);


                    PdfPCell cell9;
                    Phrase r_zz = new Phrase("6." + zz + ".1   Module's Overview: ", font);
                    table1.addCell(r_zz);
                    if (null != rs3.getString(3) && 0 != rs3.getString(3).length()) {
                        cell9 = new PdfPCell(new Phrase("YES"));
                    } else {
                        cell9 = new PdfPCell(new Phrase("NO"));
                    }
                    //cell9.setColspan(3);
                    table1.addCell(cell9);

                    int aa2 = 0;
                    String res4 = "SELECT * FROM moduleobjective WHERE COURSE_ID='" + rs1.getString(1) + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                    pstatement = connection.prepareStatement(res4);
                    rs4 = pstatement.executeQuery();
                    rs4.last();
                    aa2 = rs4.getRow();
                    String couobj2 = String.valueOf(aa2);


                    Phrase s_zz = new Phrase("6." + zz + ".2   Module's Objectives:  ", font);
                    table1.addCell(s_zz);
                    PdfPCell cell10 = new PdfPCell(new Phrase(couobj2));
                    //cell10.setColspan(3);
                    table1.addCell(cell10);
                    rs4.close();

                    int aa3 = 0;
                    String res5 = "SELECT * FROM unit WHERE COURSE_ID='" + rs1.getString(1) + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                    pstatement = connection.prepareStatement(res5);
                    rs5 = pstatement.executeQuery();
                    rs5.last();
                    aa3 = rs5.getRow();
                    rs5.beforeFirst();
                    String couobj3 = String.valueOf(aa3);

                    Phrase z_zz = new Phrase("6." + zz + ".3   No. of Units: ", font);
                    table1.addCell(z_zz);
                    PdfPCell cell4 = new PdfPCell(new Phrase(couobj3));
                    //cell4.setColspan(3);
                    table1.addCell(cell4);

                    int pp = 1;
                    while (rs5.next()) {
                        Phrase m_pp = new Phrase(" ", font);
                        table1.addCell(m_pp);
                        PdfPCell cell20 = new PdfPCell(new Phrase());
                        //cell11.setColspan(3);
                        table1.addCell(cell20);

                        Phrase t_pp = new Phrase("6." + zz + ".3." + pp + "     Unit Name: ", font);
                        table1.addCell(t_pp);
                        PdfPCell cell11 = new PdfPCell(new Phrase(rs5.getString(2)));
                        //cell11.setColspan(3);
                        table1.addCell(cell11);


                        PdfPCell cell12;
                        Phrase u_pp = new Phrase("6." + zz + ".3." + pp + ".1  Unit's Summary :  ", font);
                        table1.addCell(u_pp);
                        if (null != rs5.getString(4) && 0 != rs5.getString(4).length()) {
                            cell12 = new PdfPCell(new Phrase("YES"));
                        } else {
                            cell12 = new PdfPCell(new Phrase("NO"));
                        }
                        //cell12.setColspan(3);
                        table1.addCell(cell12);

                        int aa4 = 0;
                        String res6 = "SELECT * FROM unitobjective WHERE COURSE_ID='" + rs1.getString(1) + "' AND MODULE_ID='" + rs3.getString(1) + "' AND UNIT_ID='" + rs5.getString(1) + "'";
                        pstatement = connection.prepareStatement(res6);
                        rs6 = pstatement.executeQuery();
                        rs6.last();
                        aa4 = rs6.getRow();
                        String couobj4 = String.valueOf(aa4);

                        Phrase v_pp = new Phrase("6." + zz + ".3." + pp + ".2  Unit's Objectives:  ", font);
                        table1.addCell(v_pp);
                        PdfPCell cell13 = new PdfPCell(new Phrase(couobj4));
                        //cell13.setColspan(3);
                        table1.addCell(cell13);
                        rs6.close();

                        int aa5 = 0;
                        String res7 = "SELECT * FROM unitproblem WHERE COURSE_ID='" + rs1.getString(1) + "' AND MODULE_ID='" + rs3.getString(1) + "' AND UNIT_ID='" + rs5.getString(1) + "'";
                        pstatement = connection.prepareStatement(res7);
                        rs7 = pstatement.executeQuery();
                        rs7.last();
                        aa5 = rs7.getRow();
                        String couobj5 = String.valueOf(aa5);
                        rs7.beforeFirst();
                        Phrase w_pp = new Phrase("6." + zz + ".3." + pp + ".3  Unit Level Problems:   ", font);
                        table1.addCell(w_pp);
                        PdfPCell cell14 = new PdfPCell(new Phrase(couobj5));
                        //cell14.setColspan(3);
                        table1.addCell(cell14);
                        if (aa5 != 0) {
                            int prob2 = 1;
                            ArrayList<String> list21 = new ArrayList<String>();
                            ArrayList<String> list22 = new ArrayList<String>();
                            ArrayList<String> list23 = new ArrayList<String>();
                            Phrase z21 = new Phrase("6." + zz + ".3." + pp + ".3.1    No. of Unit Objectives linked with problem:  ", font);
                            table1.addCell(z21);
                            while (rs7.next()) {
                                String ext2[] = rs7.getString(7).split("\\.");
                                for (int x2 = 0; x2 < ext2.length; x2++) {
                                    if (!list21.contains(ext2[x2])) {
                                        list21.add(ext2[x2]);
                                    }
                                }
                                if (rs7.getString(9) == null || rs7.getString(9).equals("")) {
                                    list23.add("Problem " + prob2 + "");
                                }
                                prob2++;
                            }
                            int xx2 = list21.size();
                            String count2 = String.valueOf(xx2);
                            PdfPCell cell26 = new PdfPCell(new Phrase(count2));
                            //cell17.setColspan(3);
                            table1.addCell(cell26);

                            Phrase z22 = new Phrase("6." + zz + ".3." + pp + ".3.2    Unit Objectives not linked with problem:  ", font);
                            table1.addCell(z22);
                            for (int y2 = 1; y2 <= aa4; y2++) {
                                if (!list21.contains("Objective" + y2 + "")) {
                                    list22.add("Objective" + y2 + "");
                                }
                            }
                            String array21 = list22.toString();
                            if (list22.isEmpty()) {
                                array21 = "Completed";
                                PdfPCell cell27 = new PdfPCell(new Phrase(array21,font2));
                                table1.addCell(cell27);
                            }else{
                            PdfPCell cell27 = new PdfPCell(new Phrase(array21,font1));
                            //cell17.setColspan(3);
                            table1.addCell(cell27);}

                            Phrase z23 = new Phrase("6." + zz + ".3." + pp + ".3.3    Unit level Solution Not added:  ", font);
                            table1.addCell(z23);
                            String array22 = list23.toString();
                            if (list23.isEmpty()) {
                                array22 = "Completed";
                                PdfPCell cell28 = new PdfPCell(new Phrase(array22,font2));
                            //cell17.setColspan(3);
                            table1.addCell(cell28);
                            }else{
                            PdfPCell cell28 = new PdfPCell(new Phrase(array22,font1));
                            //cell17.setColspan(3);
                            table1.addCell(cell28);}
                        }
                        rs7.close();

                        pp++;
                    }
                    rs5.close();

                    Phrase h_zz = new Phrase(" ", font);
                    table1.addCell(h_zz);
                    PdfPCell cell22 = new PdfPCell(new Phrase());
                    //cell11.setColspan(3);
                    table1.addCell(cell22);

                    int aa6 = 0;
                    String res8 = "SELECT * FROM moduleproblem WHERE COURSE_ID='" + rs1.getString(1) + "' AND MODULE_ID='" + rs3.getString(1) + "'";
                    pstatement = connection.prepareStatement(res8);
                    rs8 = pstatement.executeQuery();
                    rs8.last();
                    aa6 = rs8.getRow();
                    String couobj6 = String.valueOf(aa6);
                    rs8.beforeFirst();
                    Phrase x_zz = new Phrase("6." + zz + ".4   Module Level Problems: ", font);
                    table1.addCell(x_zz);
                    PdfPCell cell15 = new PdfPCell(new Phrase(couobj6));
                    //cell15.setColspan(3);
                    table1.addCell(cell15);
                    if (aa6 != 0) {
                        int prob1 = 1;
                        ArrayList<String> list11 = new ArrayList<String>();
                        ArrayList<String> list12 = new ArrayList<String>();
                        ArrayList<String> list13 = new ArrayList<String>();
                        Phrase z11 = new Phrase("6." + zz + ".4.1    No. of Module Objectives linked with problem:  ", font);
                        table1.addCell(z11);
                        while (rs8.next()) {
                            String ext1[] = rs8.getString(6).split("\\.");
                            for (int x1 = 0; x1 < ext1.length; x1++) {
                                if (!list11.contains(ext1[x1])) {
                                    list11.add(ext1[x1]);
                                }
                            }
                            if (rs8.getString(8) == null || rs8.getString(8).equals("")) {
                                list13.add("Problem " + prob1 + "");
                            }
                            prob1++;
                        }
                        int xx1 = list11.size();
                        String count1 = String.valueOf(xx1);
                        PdfPCell cell23 = new PdfPCell(new Phrase(count1));
                        //cell17.setColspan(3);
                        table1.addCell(cell23);

                        Phrase z12 = new Phrase("6." + zz + ".4.2    Module Objectives not linked with problem:  ", font);
                        table1.addCell(z12);
                        for (int y1 = 1; y1 <= aa2; y1++) {
                            if (!list11.contains("Objective" + y1 + "")) {
                                list12.add("Objective" + y1 + "");
                            }
                        }
                        String array11 = list12.toString();
                        if (list12.isEmpty()) {
                            array11 = "Completed";
                            PdfPCell cell24 = new PdfPCell(new Phrase(array11, font2));
                        //cell17.setColspan(3);
                        table1.addCell(cell24);
                        }else{
                        PdfPCell cell24 = new PdfPCell(new Phrase(array11, font1));
                        //cell17.setColspan(3);
                        table1.addCell(cell24);}

                        Phrase z13 = new Phrase("6." + zz + ".4.3    Module level Solution Not added:  ", font);
                        table1.addCell(z13);
                        String array12 = list13.toString();
                        if (list13.isEmpty()) {
                            array12 = "Completed";
                            PdfPCell cell25 = new PdfPCell(new Phrase(array12, font2));
                        //cell17.setColspan(3);
                        table1.addCell(cell25);
                        }else{
                        PdfPCell cell25 = new PdfPCell(new Phrase(array12, font1));
                        //cell17.setColspan(3);
                        table1.addCell(cell25);}
                    }
                    rs8.close();


                    PdfPCell cell16;
                    if (aa6 != 0) {
                        Phrase y_zz = new Phrase("6." + zz + ".5   Module's Learning Strategy:  ", font);
                        table1.addCell(y_zz);
                    } else {
                        Phrase y_zz = new Phrase("6." + zz + ".5   Module's Learning Strategy:  ", font);
                        table1.addCell(y_zz);
                    }
                    if (null != rs3.getString(4) && 0 != rs3.getString(4).length()) {
                        cell16 = new PdfPCell(new Phrase("YES"));
                    } else {
                        cell16 = new PdfPCell(new Phrase("NO"));
                    }

                    //cell16.setColspan(3);
                    table1.addCell(cell16);



                    zz++;
                }
                document.add(table1);

                rs3.close();

                PdfPTable table2 = new PdfPTable(2);
                table2.setWidthPercentage(100);
                table2.setHorizontalAlignment(Element.ALIGN_CENTER);

                Phrase i = new Phrase(" ", font);
                table2.addCell(i);
                PdfPCell cell23 = new PdfPCell(new Phrase());
                //cell11.setColspan(3);
                table2.addCell(cell23);

                int aa7 = 0;
                String res9 = "SELECT * FROM courseproblem WHERE COURSE_ID='" + rs1.getString(1) + "'";
                pstatement = connection.prepareStatement(res9);
                rs9 = pstatement.executeQuery();
                rs9.last();
                aa7 = rs9.getRow();
                rs9.beforeFirst();
                String couobj7 = String.valueOf(aa7);

                Phrase z = new Phrase("7    Course Problems:  ", font);
                table2.addCell(z);
                PdfPCell cell17 = new PdfPCell(new Phrase(couobj7));
                //cell17.setColspan(3);
                table2.addCell(cell17);
                if (aa7 != 0) {
                    int prob = 1;
                    ArrayList<String> list1 = new ArrayList<String>();
                    ArrayList<String> list2 = new ArrayList<String>();
                    ArrayList<String> list3 = new ArrayList<String>();
                    Phrase z1 = new Phrase("7.1    No. of Course Objectives linked with problem:  ", font);
                    table2.addCell(z1);
                    while (rs9.next()) {
                        String ext[] = rs9.getString(5).split("\\.");
                        for (int x = 0; x < ext.length; x++) {
                            if (!list1.contains(ext[x])) {
                                list1.add(ext[x]);
                            }
                        }
                        if (rs9.getString(7) == null || rs9.getString(7).equals("")) {
                            list3.add("Problem " + prob + "");
                        }
                        prob++;
                    }

                    int xx = list1.size();
                    String count = String.valueOf(xx);
                    PdfPCell cell18 = new PdfPCell(new Phrase(count));
                    //cell17.setColspan(3);
                    table2.addCell(cell18);

                    Phrase z2 = new Phrase("7.2    Course Objectives not linked with problem:  ", font);
                    table2.addCell(z2);
                    for (int y = 1; y <= aa; y++) {
                        if (!list1.contains("Objective" + y + "")) {
                            list2.add("Objective" + y + "");
                        }
                    }
                    String array = list2.toString();
                    if (list2.isEmpty()) {
                        array = "Completed";
                        PdfPCell cell19 = new PdfPCell(new Phrase(array, font2));
                    //cell17.setColspan(3);
                    table2.addCell(cell19);
                    }else{
                    PdfPCell cell19 = new PdfPCell(new Phrase(array, font1));
                    //cell17.setColspan(3);


                    table2.addCell(cell19);}

                    Phrase z3 = new Phrase("7.3    Course level Solution Not added:  ", font);
                    table2.addCell(z3);
                    String array1 = list3.toString();
                    if (list3.isEmpty()) {
                        array1 = "Completed";
                        PdfPCell cell20 = new PdfPCell(new Phrase(array1, font2));
                    //cell17.setColspan(3);
                    table2.addCell(cell20);
                    }else{
                    PdfPCell cell20 = new PdfPCell(new Phrase(array1, font1));
                    //cell17.setColspan(3);
                    table2.addCell(cell20);}
                }
                document.add(table2);
                rs9.close();
                rs1.close();

                
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
