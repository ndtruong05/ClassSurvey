/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.studentbyclass;

import DAO.studentByClassDAO;
import DTO.studentByClass;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Truon
 */
public class UpdateInfo extends HttpServlet {

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
            if(request.getCharacterEncoding() == null){
                request.setCharacterEncoding("UTF-8");
            }
            // cap nhat thong tin sinh vien theo lop mh
            String ma_sv = request.getParameter("txtmasv");
            String ho_ten = request.getParameter("txthoten");
            String ngay_sinh = request.getParameter("txtngaysinh");
            String lop_khoa_hoc = request.getParameter("txtlopkhoahoc");
            String ghi_chu = request.getParameter("txtghichu");
            
            studentByClass bean = new studentByClass();
            bean.setMa_sv(ma_sv);
            bean.setHo_ten(ho_ten);
            bean.setNgay_sinh(ngay_sinh);
            bean.setLop_mon_hoc(lop_khoa_hoc);
            bean.setGhi_chu(ghi_chu);
            
            studentByClassDAO.update(bean);
            
            RequestDispatcher dispatch = getServletContext().
                    getRequestDispatcher("/student/trangchusv.jsp");
            dispatch.forward(request, response);
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
