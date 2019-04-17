/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pdf;

import com.lowagie.text.Chunk;
import javax.servlet.*;
import javax.servlet.http.*;

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
import java.awt.Color;

import java.io.*;

public class PDFServlet extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        Document document = new Document();

        String coursename = request.getParameter("coursename");
        String department = request.getParameter("department");
        String institution = request.getParameter("institution");
        String briefcoursedescription = request.getParameter("briefcoursedescription");
        String nameofthecourse = request.getParameter("nameofthecourse");
        String semester = request.getParameter("semester");
        String principaldevelopername = request.getParameter("principaldevelopername");
        String codeveloper1name = request.getParameter("codeveloper1name");
        String codeveloper2name = request.getParameter("codeveloper2name");
        String principaldeveloperdesignation = request.getParameter("principaldeveloperdesignation");
        String codeveloper1designation = request.getParameter("codeveloper1designation");
        String codeveloper2designation = request.getParameter("codeveloper2designation");
        String principaldeveloperinstitution = request.getParameter("principaldeveloperinstitution");
        String codeveloper1institution = request.getParameter("codeveloper1institution");
        String codeveloper2institution = request.getParameter("codeveloper2institution");
        String principaldeveloperdepartment = request.getParameter("principaldeveloperdepartment");
        String codeveloper1department = request.getParameter("codeveloper1department");
        String codeveloper2department = request.getParameter("codeveloper2department");
        String principaldeveloperemail = request.getParameter("principaldeveloperemail");
        String codeveloper1email = request.getParameter("codeveloper1email");
        String codeveloper2email = request.getParameter("codeveloper2email");
        String principaldevelopermobile = request.getParameter("principaldevelopermobile");
        String codeveloper1mobile = request.getParameter("codeveloper1mobile");
        String codeveloper2mobile = request.getParameter("codeveloper2mobile");
        String principaldeveloperoffice = request.getParameter("principaldeveloperoffice");
        String codeveloper1office = request.getParameter("codeveloper1office");
        String codeveloper2office = request.getParameter("codeveloper2office");
        String principaldeveloperres = request.getParameter("principaldeveloperres");
        String codeveloper1res = request.getParameter("codeveloper1res");
        String codeveloper2res = request.getParameter("codeveloper2res");
        String principaldeveloper3years = request.getParameter("principaldeveloper3years");
        String codeveloper13years = request.getParameter("codeveloper13years");
        String codeveloper23years = request.getParameter("codeveloper23years");
        String reviewer1name = request.getParameter("reviewer1name");
        String reviewer2name = request.getParameter("reviewer2name");
        String reviewer3name = request.getParameter("reviewer3name");
        String reviewer1designation = request.getParameter("reviewer1designation");
        String reviewer2designation = request.getParameter("reviewer2designation");
        String reviewer3designation = request.getParameter("reviewer3designation");
        String reviewer1institution = request.getParameter("reviewer1institution");
        String reviewer2institution = request.getParameter("reviewer2institution");
        String reviewer3institution = request.getParameter("reviewer3institution");
        String reviewer1department = request.getParameter("reviewer1department");
        String reviewer2department = request.getParameter("reviewer2department");
        String reviewer3department = request.getParameter("reviewer3department");
        String reviewer1email = request.getParameter("reviewer1email");
        String reviewer2email = request.getParameter("reviewer2email");
        String reviewer3email = request.getParameter("reviewer3email");
        String reviewer1mobile = request.getParameter("reviewer1mobile");
        String reviewer2mobile = request.getParameter("reviewer2mobile");
        String reviewer3mobile = request.getParameter("reviewer3mobile");
        String reviewer1office = request.getParameter("reviewer1office");
        String reviewer2office = request.getParameter("reviewer2office");
        String reviewer3office = request.getParameter("reviewer3office");
        String reviewer1res = request.getParameter("reviewer1res");
        String reviewer2res = request.getParameter("reviewer2res");
        String reviewer3res = request.getParameter("reviewer3res");
        String institutecoordinatorname = request.getParameter("institutecoordinatorname");
        String coursecoordinatorinstitution = request.getParameter("coursecoordinatorinstitution");
        String coursecoordinatoremail = request.getParameter("coursecoordinatoremail");
        String coursecoordinatormobile = request.getParameter("coursecoordinatormobile");
        response.setContentType("application/pdf"); // Code 1
        response.addHeader("Content-Disposition", "attachment; filename=EOI_Pedagogy_MainPhase");
        try {
            PdfWriter.getInstance(document,
                    response.getOutputStream());
            document.open();
            Paragraph pr = new Paragraph("Expression of Interest", FontFactory.getFont(FontFactory.defaultEncoding, 20, Font.BOLD, new Color(0, 0, 0)));
            pr.setAlignment(Element.ALIGN_CENTER);
            Paragraph pr1 = new Paragraph("National Mission Project on Pedagogy", FontFactory.getFont(FontFactory.defaultEncoding, 20, Font.BOLD, new Color(0, 0, 0)));
            pr1.add(new Chunk("(Main Phase)"));
            pr1.setAlignment(Element.ALIGN_CENTER);
            pr1.add(new Chunk("\n\n"));
            document.add(pr);
            document.add(pr1);
            PdfPTable table = new PdfPTable(4);
            Font font = new Font(Font.HELVETICA, 12, Font.BOLDITALIC);
            table.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.setWidthPercentage(100);
            PdfPCell cell;
            Phrase k = new Phrase("Course Name :", font);
            table.addCell(k);
            cell = new PdfPCell(new Phrase(coursename));
            cell.setColspan(3);
            table.addCell(cell);
            Phrase l = new Phrase("Department:", font);
            table.addCell(l);
            PdfPCell cell2 = new PdfPCell(new Phrase(department));
            cell2.setColspan(3);
            table.addCell(cell2);
            Phrase m = new Phrase("Institution :", font);
            table.addCell(m);
            PdfPCell cell3 = new PdfPCell(new Phrase(institution));
            cell3.setColspan(3);
            table.addCell(cell3);
            Phrase n = new Phrase("Brief Course Description :", font);
            table.addCell(n);
            PdfPCell cell4 = new PdfPCell(new Phrase(briefcoursedescription));
            cell4.setColspan(3);
            table.addCell(cell4);
            Phrase o = new Phrase("Name of the Course :", font);
            table.addCell(o);
            PdfPCell cell5 = new PdfPCell(new Phrase(nameofthecourse));
            cell5.setColspan(3);
            table.addCell(cell5);
            Phrase o1 = new Phrase("Semester in which it is usually offered :", font);
            table.addCell(o1);
            PdfPCell cell6 = new PdfPCell(new Phrase(semester));
            cell6.setColspan(3);
            table.addCell(cell6);
            // Code 4
            document.add(table);
            PdfPTable table1 = new PdfPTable(4);
            table1.setWidthPercentage(100);
            table1.setHorizontalAlignment(Element.ALIGN_CENTER);
            Phrase p = new Phrase("Team Composition", font);
            table1.addCell(p);
            Phrase q = new Phrase("Principal Developer", font);
            table1.addCell(q);
            Phrase r = new Phrase("Co-Developer 1", font);
            table1.addCell(r);
            Phrase s = new Phrase("Co-Developer 2", font);
            table1.addCell(s);
            Phrase t = new Phrase("Name :", font);
            table1.addCell(t);
            table1.addCell(principaldevelopername);
            table1.addCell(codeveloper1name);
            table1.addCell(codeveloper2name);
            Phrase u = new Phrase("Designation :", font);
            table1.addCell(u);
            table1.addCell(principaldeveloperdesignation);
            table1.addCell(codeveloper1designation);
            table1.addCell(codeveloper2designation);
            Phrase v = new Phrase("Institution :", font);
            table1.addCell(v);
            table1.addCell(principaldeveloperinstitution);
            table1.addCell(codeveloper1institution);
            table1.addCell(codeveloper2institution);
            Phrase w = new Phrase("Department :", font);
            table1.addCell(w);
            table1.addCell(principaldeveloperdepartment);
            table1.addCell(codeveloper1department);
            table1.addCell(codeveloper2department);
            Phrase x = new Phrase("E-mail ID :", font);
            table1.addCell(x);
            table1.addCell(principaldeveloperemail);
            table1.addCell(codeveloper1email);
            table1.addCell(codeveloper2email);
            Phrase y = new Phrase("Mobile :", font);
            table1.addCell(y);
            table1.addCell(principaldevelopermobile);
            table1.addCell(codeveloper1mobile);
            table1.addCell(codeveloper2mobile);
            Phrase z = new Phrase("Office :", font);
            table1.addCell(z);
            table1.addCell(principaldeveloperoffice);
            table1.addCell(codeveloper1office);
            table1.addCell(codeveloper2office);
            Phrase a = new Phrase("Res :", font);
            table1.addCell(a);
            table1.addCell(principaldeveloperres);
            table1.addCell(codeveloper1res);
            table1.addCell(codeveloper2res);
            Phrase b = new Phrase("Course taught 3 years or more :", font);
            table1.addCell(b);
            table1.addCell(principaldeveloper3years);
            table1.addCell(codeveloper13years);
            table1.addCell(codeveloper23years);
//            PdfPCell ce7 = new PdfPCell(new Phrase("."));
//            ce7.setColspan(4);
//            table1.addCell(ce7);
            document.add(table1);
            PdfPTable table2 = new PdfPTable(4);
            table2.setWidthPercentage(100);
            table2.setHorizontalAlignment(Element.ALIGN_CENTER);
            Phrase p1 = new Phrase("Reviewer Panel :", font);
            table2.addCell(p1);
            Phrase q1 = new Phrase("Reviewer 1", font);
            table2.addCell(q1);
            Phrase r1 = new Phrase("Reviewer 2", font);
            table2.addCell(r1);
            Phrase s1 = new Phrase("Reviewer 3", font);
            table2.addCell(s1);
            Phrase t1 = new Phrase("Name :", font);
            table2.addCell(t1);
            table2.addCell(reviewer1name);
            table2.addCell(reviewer2name);
            table2.addCell(reviewer3name);
            Phrase u1 = new Phrase("Designation :", font);
            table2.addCell(u1);
            table2.addCell(reviewer1designation);
            table2.addCell(reviewer2designation);
            table2.addCell(reviewer3designation);
            Phrase v1 = new Phrase("Institution :", font);
            table2.addCell(v1);
            table2.addCell(reviewer1institution);
            table2.addCell(reviewer2institution);
            table2.addCell(reviewer3institution);
            Phrase w1 = new Phrase("Department :", font);
            table2.addCell(w1);
            table2.addCell(reviewer1department);
            table2.addCell(reviewer2department);
            table2.addCell(reviewer3department);
            Phrase x1 = new Phrase("E-mail ID :", font);
            table2.addCell(x1);
            table2.addCell(reviewer1email);
            table2.addCell(reviewer2email);
            table2.addCell(reviewer3email);
            Phrase y1 = new Phrase("Mobile :", font);
            table2.addCell(y1);
            table2.addCell(reviewer1mobile);
            table2.addCell(reviewer2mobile);
            table2.addCell(reviewer3mobile);
            Phrase z1 = new Phrase("Office :", font);
            table2.addCell(z1);
            table2.addCell(reviewer1office);
            table2.addCell(reviewer2office);
            table2.addCell(reviewer3office);
            Phrase a1 = new Phrase("Res :", font);
            table2.addCell(a1);
            table2.addCell(reviewer1res);
            table2.addCell(reviewer2res);
            table2.addCell(reviewer3res);
//            PdfPCell cel7 = new PdfPCell(new Phrase("."));
//            cel7.setColspan(4);
//            table2.addCell(cel7);
            document.add(table2);
            PdfPTable table3 = new PdfPTable(4);
            table3.setWidthPercentage(100);
            table3.setHorizontalAlignment(Element.ALIGN_CENTER);
            Phrase k1 = new Phrase("Name of Institute Co-ordinator :", font);
            table3.addCell(k1);
            PdfPCell c = new PdfPCell(new Phrase(institutecoordinatorname));
            c.setColspan(3);
            table3.addCell(c);
            Phrase l1 = new Phrase("Institution :", font);
            table3.addCell(l1);
            PdfPCell c2 = new PdfPCell(new Phrase(coursecoordinatorinstitution));
            c2.setColspan(3);
            table3.addCell(c2);
            Phrase m1 = new Phrase("E-mail ID :", font);
            table3.addCell(m1);
            PdfPCell c3 = new PdfPCell(new Phrase(coursecoordinatoremail));
            c3.setColspan(3);
            table3.addCell(c3);
            Phrase n1 = new Phrase("Mobile :", font);
            table3.addCell(n1);
            PdfPCell c4 = new PdfPCell(new Phrase(coursecoordinatormobile));
            c4.setColspan(3);
            table3.addCell(c4);
            document.add(table3);

            document.close();
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }
}
