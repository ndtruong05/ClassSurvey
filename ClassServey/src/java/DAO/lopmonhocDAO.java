/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.lopmonhoc;
import Utils.DatabaseUtils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Truon
 */
public class lopmonhocDAO {
    public static ArrayList<lopmonhoc> getList(){
        ArrayList<lopmonhoc> listClass = new ArrayList<lopmonhoc>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from lop_mon_hoc";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                lopmonhoc bean = new lopmonhoc();
                
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setTen_mon_hoc(rs.getString("ten_mon_hoc"));
                bean.setTen_giang_vien(rs.getString("ten_giang_vien"));
                bean.setMa_giang_vien(rs.getString("ma_giang_vien"));
                
                listClass.add(bean);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listClass;
    }
    
    public static ArrayList<lopmonhoc> getListbyMagv(String _ma_gv){
        ArrayList<lopmonhoc> listClass = new ArrayList<lopmonhoc>();
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from lop_mon_hoc where ma_giang_vien='" + _ma_gv + "'";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            while(rs.next()) {
                lopmonhoc bean = new lopmonhoc();
                
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setTen_mon_hoc(rs.getString("ten_mon_hoc"));
                bean.setTen_giang_vien(rs.getString("ten_giang_vien"));
                bean.setMa_giang_vien(rs.getString("ma_giang_vien"));
                
                listClass.add(bean);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listClass;
    }
    public static lopmonhoc getLopbyMamon(String _ma_mon){
        lopmonhoc bean = null;
        try {
            //tao ket noi den database
            Connection con = DatabaseUtils.getConnection();
            String sql = "select * from lop_mon_hoc where ma_mon_hoc='" + _ma_mon + "'";
            //tao doi tuong statement
            Statement sta = con.createStatement();
            //thuc hien cau lenh truy van mysql
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()) {
                bean = new lopmonhoc();
                
                bean.setMa_mon_hoc(rs.getString("ma_mon_hoc"));
                bean.setTen_mon_hoc(rs.getString("ten_mon_hoc"));
                bean.setTen_giang_vien(rs.getString("ten_giang_vien"));
                bean.setMa_giang_vien(rs.getString("ma_giang_vien"));

            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return bean;
    }
    
    
}
