/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Truon
 */
public class lopmonhoc {
    private String ma_mon_hoc;
    private String ten_mon_hoc;
    private String ten_giang_vien;
    private String ma_giang_vien;

    public lopmonhoc() {
    }

    public lopmonhoc(String ma_mon_hoc, String ten_mon_hoc, String ten_giang_vien, String ma_giang_vien) {
        this.ma_mon_hoc = ma_mon_hoc;
        this.ten_mon_hoc = ten_mon_hoc;
        this.ten_giang_vien = ten_giang_vien;
        this.ma_giang_vien = ma_giang_vien;
    }

    public String getMa_mon_hoc() {
        return ma_mon_hoc;
    }

    public void setMa_mon_hoc(String ma_mon_hoc) {
        this.ma_mon_hoc = ma_mon_hoc;
    }

    public String getTen_mon_hoc() {
        return ten_mon_hoc;
    }

    public void setTen_mon_hoc(String ten_mon_hoc) {
        this.ten_mon_hoc = ten_mon_hoc;
    }

    public String getTen_giang_vien() {
        return ten_giang_vien;
    }

    public void setTen_giang_vien(String ten_giang_vien) {
        this.ten_giang_vien = ten_giang_vien;
    }

    public String getMa_giang_vien() {
        return ma_giang_vien;
    }

    public void setMa_giang_vien(String ma_giang_vien) {
        this.ma_giang_vien = ma_giang_vien;
    }
    
    
}
