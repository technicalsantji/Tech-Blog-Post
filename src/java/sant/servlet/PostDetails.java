/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sant.servlet;

import com.dao.PostDao;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import sant.entity.User;
import sant.entity.Post;
import sant.helper.ConnectionProvider;
import sant.helper.Helper;

/**
 *
 * @author SANT JI
 */
@MultipartConfig
public class PostDetails extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
//          fetch the data from user 
            
                 int cid=Integer.parseInt(request.getParameter("cid"));
                 String title=request.getParameter("title");
                 String content=request.getParameter("content");
                 String code=request.getParameter("code");
                 Part file=request.getPart("pic");
                 
                 HttpSession session=request.getSession();
              User user =(User) session.getAttribute("currentuser");
              
              Post p=new Post(title,content,code,file.getSubmittedFileName(),null,cid,user.getId());
              PostDao dao=new PostDao(ConnectionProvider.getConnection());
             if(dao.savepost(p)) {
                 String path=request.getRealPath("/")+"b_pic"+File.separator+file.getSubmittedFileName();
                 Helper.saveFile(file.getInputStream(), path);
                 out.print("done");
             }else{
                   out.print("post error");
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
