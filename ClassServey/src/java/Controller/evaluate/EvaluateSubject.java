/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.evaluate;

import DAO.phieudanhgiaDAO;
import DTO.phieudanhgia;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Truon
 */
public class EvaluateSubject extends HttpServlet {

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
            // lay ve cac gia tri cua form danh gia
            String ma_sv = request.getParameter("txtsubject");
            String ma_mon = request.getParameter("txtclass");
            String option1 = request.getParameter("optradio1");
            String option2 = request.getParameter("optradio2");
            String option3 = request.getParameter("optradio3");
            String option4 = request.getParameter("optradio4");
            String option5 = request.getParameter("optradio5");
            String option6 = request.getParameter("optradio6");
            String option7 = request.getParameter("optradio7");

            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss a");
            Date date = new Date();
            String ngay_tao = formatter.format(date);
            
            //tao phieu danh gia
            phieudanhgia bean = new phieudanhgia();
            
            bean.setMa_sv(ma_sv);
            bean.setMa_mon_hoc(ma_mon);
            bean.setOption1(option1);
            bean.setOption2(option2);
            bean.setOption3(option3);
            bean.setOption4(option4);
            bean.setOption5(option5);
            bean.setOption6(option6);
            bean.setOption7(option7);
            bean.setNgay_tao(ngay_tao);
            
            phieudanhgiaDAO.create(bean);
            
            //chuyen ve trang chu sv
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
