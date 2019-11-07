/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin;

import DAO.ketquadanhgiaDAO;
import DAO.phieudanhgiaDAO;
import DTO.ketquadanhgia;
import DTO.phieudanhgia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Trường Nguyễn
 */
public class KhaoSatPhieuDanhGia extends HttpServlet {

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
            if (request.getCharacterEncoding() == null) {
                request.setCharacterEncoding("UTF-8");
            }
            //lay ra danh sach phieu danh gia theo ma mon hoc
            String ma_mon = request.getParameter("txtclass");
            String ten_mon = request.getParameter("txtnameclass");
            String ten_giang_vien = request.getParameter("txtgv");

            ArrayList<phieudanhgia> phieudanhgia = phieudanhgiaDAO.getlistbyMa(ma_mon);
            int soluong = phieudanhgia.size();

            ketquadanhgia bean = new ketquadanhgia();
            String opt1;
            String opt2;
            String opt3;
            String opt4;
            String opt5;
            String opt6;
            String opt7;

            int sum1 = 0;
            int sum2 = 0;
            int sum3 = 0;
            int sum4 = 0;
            int sum5 = 0;
            int sum6 = 0;
            int sum7 = 0;

            for (int i = 0; i < soluong; i++) {
                phieudanhgia pdg = phieudanhgia.get(i);

                int op1 = Integer.parseInt(pdg.getOption1());
                int op2 = Integer.parseInt(pdg.getOption2());
                int op3 = Integer.parseInt(pdg.getOption3());
                int op4 = Integer.parseInt(pdg.getOption4());
                int op5 = Integer.parseInt(pdg.getOption5());
                int op6 = Integer.parseInt(pdg.getOption6());
                int op7 = Integer.parseInt(pdg.getOption7());

                sum1 = sum1 + op1;
                sum2 = sum2 + op2;
                sum3 = sum3 + op3;
                sum4 = sum4 + op4;
                sum5 = sum5 + op5;
                sum6 = sum6 + op6;
                sum7 = sum7 + op7;

            }
            
            opt1 = String.valueOf(sum1 / soluong);
            opt2 = String.valueOf(sum2 / soluong);
            opt3 = String.valueOf(sum3 / soluong);
            opt4 = String.valueOf(sum4 / soluong);
            opt5 = String.valueOf(sum5 / soluong);
            opt6 = String.valueOf(sum6 / soluong);
            opt7 = String.valueOf(sum7 / soluong);
            
            bean.setTen_mon_hoc(ten_mon);
            bean.setMa_mon_hoc(ma_mon);
            bean.setTen_giang_vien(ten_giang_vien);
            bean.setSo_luong_sv(String.valueOf(soluong));
            bean.setOption1(opt1);
            bean.setOption2(opt2);
            bean.setOption3(opt3);
            bean.setOption4(opt4);
            bean.setOption5(opt5);
            bean.setOption6(opt6);
            bean.setOption7(opt7);
            
            //tao phieu danh gia
            ketquadanhgiaDAO.create(bean);

            //chuyen den servlet liet ke danh sach sinh vien lop mon hoc
            RequestDispatcher dispatch = getServletContext().
                    getRequestDispatcher("/ListClassAdmin");
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
