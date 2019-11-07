/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.staffDTO;
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
public class staffDAO {
    //lay danh sach giang vien
    public static ArrayList<staffDTO> getList(){
        ArrayList<staffDTO> listStaff = new ArrayList<>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from staffinfo";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                staffDTO staff = new staffDTO();
                
                staff.setUsername(rs.getString("ten_dang_nhap"));
                staff.setPassword(rs.getString("mat_khau"));
                staff.setFullname(rs.getString("ho_ten"));
                staff.setEmail(rs.getString("vnu_email"));
                
                listStaff.add(staff);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listStaff;
    }
    
    //them giang vien
    public static int create(staffDTO bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            //tao cau lenh sql va doi tuong Statement
            String sql = "insert into staffinfo (ten_dang_nhap, mat_khau, ho_ten, vnu_email) values ('" + bean.getUsername() + "','" + bean.getPassword() + "','" + bean.getFullname() + "','" + bean.getEmail() + "')";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    // xoa giang vien
    public static int delete(String _username) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "delete from staffinfo where ten_dang_nhap = '" + _username +"'";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    //update giang vien
    public static int update(staffDTO bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "update staffinfo set mat_khau='" + bean.getPassword()+ "',ho_ten='"+ bean.getFullname()+"',vnu_email='"+ bean.getEmail() +"' where ten_dang_nhap= '" + bean.getUsername()+"'";
            
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
            
            
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return records;
    }
    
    // lay thong tin giang vien theo ten_dang_nhap
    public static staffDTO getStaffByUsername(String _username) {
        staffDTO staff = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from staffinfo where ten_dang_nhap = '" + _username+"'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()) {
                staff = new staffDTO();
   
                staff.setUsername(rs.getString("ten_dang_nhap"));
                staff.setPassword(rs.getString("mat_khau"));
                staff.setFullname(rs.getString("ho_ten"));
                staff.setEmail(rs.getString("vnu_email"));
                
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return staff;
    }
    public static boolean checkStaffLogin(String _username, String _password){
        boolean isValid = false;
        try{
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from staffinfo where ten_dang_nhap = '" + _username+"' and mat_khau= '"+ _password + "'";
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
