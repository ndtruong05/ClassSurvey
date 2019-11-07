/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.studentDTO;
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
public class studentDAO {
    // lay danh sach sinh vien
    public static ArrayList<studentDTO> getList(){
        ArrayList<studentDTO> listStudent = new ArrayList<studentDTO>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from studentinfo";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                studentDTO student = new studentDTO();
                student.setSTT(rs.getInt("stt"));
                student.setUsername(rs.getString("ma_sinh_vien"));
                student.setPassword(rs.getString("mat_khau"));
                student.setFullname(rs.getString("ho_ten"));
                student.setVnuemail(rs.getString("vnu_email"));
                student.setTraining(rs.getString("khoa_dao_tao"));
                listStudent.add(student);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listStudent;
    }
    
    //them sinh vien
    public static int create(studentDTO bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            //tao cau lenh sql va doi tuong Statement
            String sql = "insert into studentinfo (ma_sinh_vien, mat_khau, ho_ten, vnu_email, khoa_dao_tao) values ('" + bean.getUsername() + "','" + bean.getPassword() + "','" + bean.getFullname() + "','" + bean.getVnuemail() + "','"+ bean.getTraining() + "')";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
            con.close();
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
            
            String sql = "delete from studentinfo where ma_sinh_vien = '" + _username +"'";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    //update sinh vien
    public static int update(studentDTO bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "update studentinfo set mat_khau='" + bean.getPassword()+ "',ho_ten='"+ bean.getFullname()+"',vnu_email='"+ bean.getVnuemail() +"',khoa_dao_tao='"+ bean.getTraining()+"' where ma_sinh_vien= '" + bean.getUsername()+ "'";
            
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
            
            
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return records;
    }
    
    // lay thong tin sinh vien
    public static studentDTO getStudentByUsername(String _username) {
        studentDTO student = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from studentinfo where ma_sinh_vien = '" + _username + "'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()) {
                student = new studentDTO();
                student.setSTT(rs.getInt("stt"));
                student.setUsername(rs.getString("ma_sinh_vien"));
                student.setPassword(rs.getString("mat_khau"));
                student.setFullname(rs.getString("ho_ten"));
                student.setVnuemail(rs.getString("vnu_email"));
                student.setTraining(rs.getString("khoa_dao_tao"));
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return student;
    }
    
    public static boolean checkStudentLogin(String _username, String _password){
        boolean isValid = false;
        try{
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from studentinfo where ma_sinh_vien like '%" + _username+ "' and mat_khau = '" + _password + "'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()){
                isValid = true;
            }else{
                isValid = false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return isValid;
    }
}
