/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.ketquadanhgia;
import DTO.phieudanhgia;
import Utils.DatabaseUtils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Trường Nguyễn
 */
public class ketquadanhgiaDAO {
    public static ArrayList<ketquadanhgia> getListByMa(){
        ArrayList<ketquadanhgia> listkq = new ArrayList<>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from resultsurvey ";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                ketquadanhgia bean = new ketquadanhgia();
                
                bean.setTen_mon_hoc(rs.getString("ma_sv"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setTen_giang_vien(rs.getString("ten_giang_vien"));
                bean.setSo_luong_sv(rs.getString("so_luong_sv_danhgia"));
                bean.setOption1(rs.getString("option1"));
                bean.setOption2(rs.getString("option2"));
                bean.setOption3(rs.getString("option3"));
                bean.setOption4(rs.getString("option4"));
                bean.setOption5(rs.getString("option5"));
                bean.setOption6(rs.getString("option6"));
                bean.setOption7(rs.getString("option7"));
                
                listkq.add(bean);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listkq;
    }
    
    public static int create(ketquadanhgia bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            //tao cau lenh sql va doi tuong Statement
            String sql = "insert into resultsurvey (ten_mon_hoc, ma_mon_hoc, ten_giang_vien, so_luong_sv_danhgia, option1, option2, option3, option4, option5, option6, option7) values ('" + bean.getTen_mon_hoc() + "','" + bean.getMa_mon_hoc()+ "','" + bean.getTen_giang_vien() + "','" + bean.getSo_luong_sv() + "','" + bean.getOption1() + "','" + bean.getOption2() + "','" + bean.getOption3() +"','"+ bean.getOption4() +"','"+ bean.getOption5() +"','"+ bean.getOption6() +"','"+ bean.getOption7() +"')";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    public static int delete(String _ma_mon) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "delete from resultsurvey where ma_mon_hoc = '" + _ma_mon +"'";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    public static ketquadanhgia getKQPhieuDanhGia(String _ma) {
        ketquadanhgia bean = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from resultsurvey where ma_mon_hoc = '" + _ma+"'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()) {
                bean = new ketquadanhgia();
   
                bean.setTen_mon_hoc(rs.getString("ten_mon_hoc"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setTen_giang_vien(rs.getString("ten_giang_vien"));
                bean.setSo_luong_sv(rs.getString("so_luong_sv_danhgia"));
                bean.setOption1(rs.getString("option1"));
                bean.setOption2(rs.getString("option2"));
                bean.setOption3(rs.getString("option3"));
                bean.setOption4(rs.getString("option4"));
                bean.setOption5(rs.getString("option5"));
                bean.setOption6(rs.getString("option6"));
                bean.setOption7(rs.getString("option7"));
                
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return bean;
    }
}
