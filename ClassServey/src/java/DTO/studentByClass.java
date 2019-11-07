/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Truong ND
 */
public class studentByClass {
    private String ma_sv;
    private String ho_ten;
    private String ngay_sinh;
    private String lop_mon_hoc;
    private String ghi_chu;
    private String ma_mon_hoc;

    public studentByClass() {
    }

    public studentByClass(String ma_sv, String ho_ten, String ngay_sinh, String lop_mon_hoc, String ghi_chu, String ma_mon_hoc) {
        this.ma_sv = ma_sv;
        this.ho_ten = ho_ten;
        this.ngay_sinh = ngay_sinh;
        this.lop_mon_hoc = lop_mon_hoc;
        this.ghi_chu = ghi_chu;
        this.ma_mon_hoc = ma_mon_hoc;
    }

    public String getMa_sv() {
        return ma_sv;
    }

    public void setMa_sv(String ma_sv) {
        this.ma_sv = ma_sv;
    }

    public String getHo_ten() {
        return ho_ten;
    }

    public void setHo_ten(String ho_ten) {
        this.ho_ten = ho_ten;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getLop_mon_hoc() {
        return lop_mon_hoc;
    }

    public void setLop_mon_hoc(String lop_mon_hoc) {
        this.lop_mon_hoc = lop_mon_hoc;
    }

    public String getGhi_chu() {
        return ghi_chu;
    }

    public void setGhi_chu(String ghi_chu) {
        this.ghi_chu = ghi_chu;
    }

    public String getMa_mon_hoc() {
        return ma_mon_hoc;
    }

    public void setMa_mon_hoc(String ma_mon_hoc) {
        this.ma_mon_hoc = ma_mon_hoc;
    }
    
    
    
}
