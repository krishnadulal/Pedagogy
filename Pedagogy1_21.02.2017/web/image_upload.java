package image;

import cetiitkgp.db.DBManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * @author Vishal.Gilbile
 * @author Prasanta Sen
 * @author Anirban Chakrbaorty
 */
@MultipartConfig(location = "/tmp", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class image_upload extends HttpServlet {

    String biodata, pd_info, co1_info, co2_info, user_id;
    FileItem flItem = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user_id = request.getParameter("user_id2");
        biodata = request.getParameter("biodata");
        pd_info = request.getParameter("pd_bio");
        co1_info = request.getParameter("co1_bio");
        co2_info = request.getParameter("co2_bio");

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();
        DBManager dbm = new DBManager();
        ResultSet rs = null;

        try {
            long maxFileSize = (2 * 1024 * 1024);
            int maxMemSize = (2 * 1024 * 1024);
//         final String path = "/tmp";
            boolean isMultiPart = ServletFileUpload.isMultipartContent(request);
            if (isMultiPart) {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                System.out.println(upload);
                List items = upload.parseRequest(request);

                Iterator<?> iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem fileItem = (FileItem) iter.next();
                    if (fileItem.isFormField()) {

                        processFormField(fileItem);
                    } else {
                        flItem = fileItem;
                    }
                }
                dbm.initConnectionAndStatement();
                rs = dbm.execQuery("SELECT * FROM `biodata` WHERE `USER_ID`=" + user_id);
                if (rs.first()) {
                    if (biodata.equals("Principal Developer")) {
                        dbm.createPreparedStatement("UPDATE `biodata` SET `ABOUT_PD`=?, `PD_IMAGE`=? WHERE `USER_ID`=" + user_id);
                        dbm.PREPARED_STATEMENT.setString(1, pd_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(2, flItem.getInputStream(), (int) flItem.getSize());
                    } else if (biodata.equals("Co-Developer 1")) {
                        dbm.createPreparedStatement("UPDATE `biodata` SET `ABOUT_CO1`=?, `CO1_IMAGE`=? WHERE `USER_ID`=" + user_id);
                        dbm.PREPARED_STATEMENT.setString(1, co1_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(2, flItem.getInputStream(), (int) flItem.getSize());
                    } else if (biodata.equals("Co-Developer 2")) {
                        dbm.createPreparedStatement("UPDATE `biodata` SET `ABOUT_CO2`=?, `CO2_IMAGE`=? WHERE `USER_ID`=" + user_id);
                        dbm.PREPARED_STATEMENT.setString(1, co2_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(2, flItem.getInputStream(), (int) flItem.getSize());
                    }
                } else {
                    if (biodata.equals("Principal Developer")) {
                        dbm.createPreparedStatement("INSERT INTO `biodata` (`USER_ID`, `ABOUT_PD`, `PD_IMAGE`) values(?, ?, ?)");
                        dbm.PREPARED_STATEMENT.setString(1, user_id);
                        dbm.PREPARED_STATEMENT.setString(2, pd_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(3, flItem.getInputStream(), (int) flItem.getSize());
                    } else if (biodata.equals("Co-Developer 1")) {
                        dbm.createPreparedStatement("INSERT INTO `biodata` (`USER_ID`, `ABOUT_CO1`, `CO1_IMAGE`) values(?, ?, ?)");
                        dbm.PREPARED_STATEMENT.setString(1, user_id);
                        dbm.PREPARED_STATEMENT.setString(2, co1_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(3, flItem.getInputStream(), (int) flItem.getSize());
                    } else if (biodata.equals("Co-Developer 2")) {
                        dbm.createPreparedStatement("INSERT INTO `biodata` (`USER_ID`, `ABOUT_CO2`, `CO2_IMAGE`) values(?, ?, ?)");
                        dbm.PREPARED_STATEMENT.setString(1, user_id);
                        dbm.PREPARED_STATEMENT.setString(2, co2_info);
                        dbm.PREPARED_STATEMENT.setBinaryStream(3, flItem.getInputStream(), (int) flItem.getSize());
                    }
                }
                int update = dbm.PREPARED_STATEMENT.executeUpdate();

                dbm.free();

                if (update > 0) {
                    response.sendRedirect(request.getContextPath() + "/biodata.jsp");
                } else {
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Error Adding Employee</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h2>Error Adding Employee Data</h2>");
                    out.println("</body>");
                    out.println("</html>");
                }
            }
        } catch (Exception ex) {
            out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                dbm.free();
                out.close();
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processFormField(FileItem item) {
        //String na = item.getFieldName();
        if (item.getFieldName().equals("biodata")) {
            biodata = item.getString();
        } else if (item.getFieldName().equals("pd_bio")) {
            pd_info = item.getString();
        }else if (item.getFieldName().equals("co1_bio")) {
            co1_info = item.getString();
        }else if (item.getFieldName().equals("co2_bio")) {
            co2_info = item.getString();
        } else if (item.getFieldName().equals("user_id2")) {
            user_id = item.getString();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
