/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.staffDTO;
import java.io.FileInputStream;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Truong ND
 */
public class importFileStaff {
    public static void importFileExcelStaff(String filename) throws Exception {
        FileInputStream inpfile;
        inpfile = new FileInputStream(filename);

        XSSFWorkbook wb = new XSSFWorkbook(inpfile);
        XSSFSheet sheet = wb.getSheetAt(0);
        DataFormatter formatter = new DataFormatter();
        Row row;
        for (int i = 1; i <= sheet.getLastRowNum(); i++) {
            row = (Row) sheet.getRow(i);
            
            String _username = null;
            String _pass = null;
            String _name = null;
            String _email = null;
           
            if (row.getCell(1) != null) {
                _username = formatter.formatCellValue(row.getCell(1));
            }
            if (row.getCell(2) != null) {
                _pass = formatter.formatCellValue(row.getCell(2));
            }
            if (row.getCell(3) != null) {
                _name = formatter.formatCellValue(row.getCell(3));
            }
            if (row.getCell(4) != null) {
                _email = formatter.formatCellValue(row.getCell(4));
            }

            staffDTO staff = new staffDTO();
            staff.setUsername(_username);
            staff.setPassword(_pass);
            staff.setFullname(_name);
            staff.setEmail(_email);

            if(!staff.getUsername().equals("")){
                staffDAO.create(staff);
            }

        }
        inpfile.close();
    }
}
