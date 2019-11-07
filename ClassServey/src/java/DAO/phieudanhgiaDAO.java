/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.phieudanhgia;
import Utils.DatabaseUtils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Truon
 */
public class phieudanhgiaDAO {
    public static ArrayList<phieudanhgia> getList(){
        ArrayList<phieudanhgia> listdanhgia = new ArrayList<>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from phieu_danh_gia";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                phieudanhgia bean = new phieudanhgia();
                
                bean.setMa_sv(rs.getString("ma_sv"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setOption1(rs.getString("option1"));
                bean.setOption2(rs.getString("option2"));
                bean.setOption3(rs.getString("option3"));
                bean.setOption4(rs.getString("option4"));
                bean.setOption5(rs.getString("option5"));
                bean.setOption6(rs.getString("option6"));
                bean.setOption7(rs.getString("option7"));
                bean.setNgay_tao(rs.getString("ngay_tao"));
                
                listdanhgia.add(bean);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listdanhgia;
    }
    
    public static int create(phieudanhgia bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            //tao cau lenh sql va doi tuong Statement
            String sql = "insert into phieu_danh_gia (ma_sv, ma_mon_hoc, option1, option2, option3, option4, option5, option6, option7, ngay_tao) values ('" + bean.getMa_sv() + "','" + bean.getMa_mon_hoc() + "','" + bean.getOption1() + "','" + bean.getOption2() + "','" + bean.getOption3() +"','"+ bean.getOption4() +"','"+ bean.getOption5() +"','"+ bean.getOption6() +"','"+ bean.getOption7() +"','"+ bean.getNgay_tao() +"')";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    public static int delete(String _username) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "delete from phieu_danh_gia where ma_sv = '" + _username +"'";
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return records;
    }
    
    public static int update(phieudanhgia bean) {
        int records = 0;
        try {
            Connection con = DatabaseUtils.getConnection();
            
            String sql = "update phieu_danh_gia set option1='" + bean.getOption1()+ "',option2='"+ bean.getOption2()+"',option3='"+ bean.getOption3()+"',option4='"+ bean.getOption4()+"',option5='"+ bean.getOption5()+"',option6='"+ bean.getOption6()+"',option7='"+ bean.getOption7()+"',ngay_tao='"+ bean.getNgay_tao() +"' where ma_sv= '" + bean.getMa_sv()+"'";
            
            
            Statement sta = con.createStatement();
            records = sta.executeUpdate(sql);
            
            
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return records;
    }
    
    public static phieudanhgia getPhieuDanhGia(String _ma) {
        phieudanhgia bean = null;
        try {
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from phieu_danh_gia where ma_sv = '" + _ma+"'";
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()) {
                bean = new phieudanhgia();
   
                bean.setMa_sv(rs.getString("ma_sv"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setOption1(rs.getString("option1"));
                bean.setOption2(rs.getString("option2"));
                bean.setOption3(rs.getString("option3"));
                bean.setOption4(rs.getString("option4"));
                bean.setOption5(rs.getString("option5"));
                bean.setOption6(rs.getString("option6"));
                bean.setOption7(rs.getString("option7"));
                bean.setNgay_tao(rs.getString("ngay_tao"));
                
            }           
        } catch(Exception e) {
            e.printStackTrace();
        }
        return bean;
    }
    
    public static ArrayList<phieudanhgia> getlistbyMa(String _ma_mon){
        ArrayList<phieudanhgia> listdanhgia = new ArrayList<>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from phieu_danh_gia where ma_mon_hoc = '"+ _ma_mon +"'";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                phieudanhgia bean = new phieudanhgia();
                
                bean.setMa_sv(rs.getString("ma_sv"));
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setOption1(rs.getString("option1"));
                bean.setOption2(rs.getString("option2"));
                bean.setOption3(rs.getString("option3"));
                bean.setOption4(rs.getString("option4"));
                bean.setOption5(rs.getString("option5"));
                bean.setOption6(rs.getString("option6"));
                bean.setOption7(rs.getString("option7"));
                bean.setNgay_tao(rs.getString("ngay_tao"));
                
                listdanhgia.add(bean);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listdanhgia;
    }
}
