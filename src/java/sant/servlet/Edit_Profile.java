/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sant.servlet;

import com.dao.UserDao;
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
import sant.entity.Message;
import sant.entity.User;
import sant.helper.ConnectionProvider;
import sant.helper.Helper;

/**
 *
 * @author SANT JI
 */
@MultipartConfig
public class Edit_Profile extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Edit profiles</title>");            
            out.println("</head>");
            out.println("<body>");
//           fetch data from user
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String password=request.getParameter("password");
            Part part=request.getPart("file");
             
            String imgname=part.getSubmittedFileName();
             HttpSession s=request.getSession();
            User user =(User)s.getAttribute("currentuser");
            user.setUname(name);
            user.setUemail(email);
            user.setUphone(phone);
            user.setUpassword(password);
            String oldfile=user.getProfile();
            user.setProfile(imgname);
            
            
            
           UserDao user1=new UserDao(ConnectionProvider.getConnection());
           boolean a=user1.Updateuser(user);
            if(a){
               
                String path=request.getRealPath("/")+"pics"+File.separator+user.getProfile();
                 String path1=request.getRealPath("/")+"pics"+File.separator+oldfile;
                       if(!oldfile.equals("default.png")){
                                Helper.deleteFile(path1);
                       }
                  if(Helper.saveFile(part.getInputStream(),path))
                  {
                       out.print("profile Update Successfully !!");
                       Message msg=new Message("profile Update Successfully !!","success","alert-success");
                
                     s.setAttribute("msg",msg);
                    
                  }
              }else{
                
                Message msg=new Message("wrong details !!","error","alert-danger");
                
                     s.setAttribute("msg",msg);
            }
                  
             response.sendRedirect("Profile.jsp");
            
            
            out.println("</body>");
            out.println("</html>");
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
