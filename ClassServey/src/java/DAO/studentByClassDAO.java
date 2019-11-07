/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.studentByClass;
import Utils.DatabaseUtils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Truong ND
 */
public class studentByClassDAO {
    // lay danh sach sinh vien
    public static ArrayList<studentByClass> getList(){
        ArrayList<studentByClass> listStudentbyClass = new ArrayList<studentByClass>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from sinhvien_theo_lop";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                studentByClass student = new studentByClass();
                
                student.setMa_sv(rs.getString("ma_sv"));
                student.setHo_ten(rs.getString("ho_ten"));
                student.setNgay_sinh(rs.getString("ngay_sinh"));
                student.setLop_mon_hoc(rs.getString("lop_khoa_hoc"));
                student.setGhi_chu(rs.getString("ghi_chu"));
                student.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                listStudentbyClass.add(student);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listStudentbyClass;
    }
    
    //them sinh vien
    public static int create(studentByClass bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            //tao cau lenh sql va doi tuong Statement
            String sql = "insert into sinhvien_theo_lop (ma_sv, ho_ten, ngay_sinh, lop_khoa_hoc, ghi_chu, ma_mon_hoc) values ('" + bean.getMa_sv() + "','" + bean.getHo_ten() + "','" + bean.getNgay_sinh() + "','" + bean.getLop_mon_hoc() + "','"+ bean.getGhi_chu() + "','"+ bean.getMa_mon_hoc()+"')";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    // xoa sinh vien
    public static int delete(String _username) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "delete from sinhvien_theo_lop where ma_sv = '" + _username +"'";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    //update sinh vien
    public static int update(studentByClass bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "update sinhvien_theo_lop set ho_ten='" + bean.getHo_ten()+ "',ngay_sinh='"+ bean.getNgay_sinh()+"',lop_khoa_hoc='"+ bean.getLop_mon_hoc() +"',ghi_chu='"+ bean.getGhi_chu()+"' where ma_sv= '" + bean.getMa_sv()+ "'";
            
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
            
            
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return records;
    }
    
    // lay thong tin sinh vien
    public static ArrayList<studentByClass> getStudentByClass(String _ma_mon) {
        ArrayList<studentByClass> listStudent = new ArrayList<studentByClass>();
        studentByClass student = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from sinhvien_theo_lop where ma_mon_hoc = '" + _ma_mon + "'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                student = new studentByClass();
                
                student.setMa_sv(rs.getString("ma_sv"));
                student.setHo_ten(rs.getString("ho_ten"));
                student.setNgay_sinh(rs.getString("ngay_sinh"));
                student.setLop_mon_hoc(rs.getString("lop_khoa_hoc"));
                student.setGhi_chu(rs.getString("ghi_chu"));
                student.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                listStudent.add(student);
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return listStudent;
    }
    
    public static studentByClass getStudentByMa (String _ma){
        studentByClass bean = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from sinhvien_theo_lop where ma_sv = '" + _ma + "'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                bean = new studentByClass();
                
                bean.setMa_sv(rs.getString("ma_sv"));
                bean.setHo_ten(rs.getString("ho_ten"));
                bean.setNgay_sinh(rs.getString("ngay_sinh"));
                bean.setLop_mon_hoc(rs.getString("lop_khoa_hoc"));
                bean.setGhi_chu(rs.getString("ghi_chu"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return bean;
    }
    
}
