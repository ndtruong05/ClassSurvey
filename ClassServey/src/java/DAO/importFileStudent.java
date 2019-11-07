/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.studentDTO;
import java.io.*;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Truong ND
 */
public class importFileStudent {

    public static void importFileExcel(String filename) throws Exception {
        FileInputStream inpfile;
        inpfile = new FileInputStream(filename);

        XSSFWorkbook wb = new XSSFWorkbook(inpfile);
        XSSFSheet sheet = wb.getSheetAt(0);
        DataFormatter formatter = new DataFormatter();
        Row row;
        for (int i = 1; i <= sheet.getLastRowNum(); i++) {
            row = (Row) sheet.getRow(i);
            int _stt = 0;
            String test;
            String _username = null;
            String _pass = null;
            String _name = null;
            String _email = null;
            String _training = null;

            if (row.getCell(0) != null) {
                test = formatter.formatCellValue(row.getCell(0));
                if (!test.equals("")) {
                    _stt = Integer.parseInt(test);
                }
            }
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
            if (row.getCell(5) != null) {
                _training = formatter.formatCellValue(row.getCell(5));
            }

            studentDTO student = new studentDTO();
            student.setSTT(_stt);
            student.setUsername(_username);
            student.setPassword(_pass);
            student.setFullname(_name);
            student.setVnuemail(_email);
            student.setTraining(_training);

            if(!student.getUsername().equals("")){
                studentDAO.create(student);
            }

        }

        inpfile.close();

    }
}
