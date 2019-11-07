/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin;

import DAO.staffDAO;
import DAO.studentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Truong ND
 */
public class LoginServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            //lay ve username, password tu form dang nhap
            String username = request.getParameter("txtusername");
            String password = request.getParameter("txtpassword");
            
            int x = 0;

            if (studentDAO.checkStudentLogin(username, password)) {
                x = 1;
            }
            if (staffDAO.checkStaffLogin(username, password)) {
                x = 2;
            }

            if (username.equals("admin") && password.equals("admin")) {
                x = 3;
            }
            if (x == 3) {
                //khoi tao session
                HttpSession session = request.getSession();
                //thiet lap gia tri trong session
                session.setAttribute("admin", username);
                //chuyen den trang chu admin
                RequestDispatcher dispatch = getServletContext().
                        getRequestDispatcher("/Quantri.jsp");
                dispatch.forward(request, response);
            } else if (x == 1) {
                //khoi tao session
                HttpSession session = request.getSession();
                //thiet lap gia tri trong session
                session.setAttribute("student", username);

                //chuyen den trang chu sinh vien
                RequestDispatcher dispatch = getServletContext().
                        getRequestDispatcher("/student/trangchusv.jsp");
                dispatch.forward(request, response);
            } else if (x == 2) {
                //khoi tao session
                HttpSession session = request.getSession();
                //thiet lap gia tri trong session
                session.setAttribute("staff", username);
                
                //chuyen den trang chu giang vien
                RequestDispatcher dispatch = getServletContext().
                        getRequestDispatcher("/staff/trangchugv.jsp");
                dispatch.forward(request, response);
            } else {
                RequestDispatcher dispatch = getServletContext().
                        getRequestDispatcher("/index.jsp");
                dispatch.forward(request, response);
            }
        }finally {
            out.close();
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
