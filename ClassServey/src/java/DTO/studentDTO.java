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
public class studentDTO {
    private int STT;
    private String username;
    private String password;
    private String fullname;
    private String vnuemail;
    private String training;

    public studentDTO() {
    }

    public studentDTO(int STT, String username, String password, String fullname, String vnuemail, String training) {
        this.STT = STT;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.vnuemail = vnuemail;
        this.training = training;
    }

    public int getSTT() {
        return STT;
    }

    public void setSTT(int STT) {
        this.STT = STT;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getVnuemail() {
        return vnuemail;
    }

    public void setVnuemail(String vnuemail) {
        this.vnuemail = vnuemail;
    }

    public String getTraining() {
        return training;
    }

    public void setTraining(String training) {
        this.training = training;
    }
    
    
}
