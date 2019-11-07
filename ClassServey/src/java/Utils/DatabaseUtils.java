/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Truong ND
 */
public class DatabaseUtils {
    public static Connection getConnection() {
        Connection con = null;
        try {
            //B1: load driver
            Class.forName("com.mysql.jdbc.Driver");
            //B2: Mo connection
            con = DriverManager.
                    getConnection("jdbc:mysql://localhost:3306/classsurvey?useUnicode=true&characterEncoding=utf-8", "root", "");
        } catch(Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
