/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.studentByClass;
import DTO.studentDTO;
import java.io.FileInputStream;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Truong ND
 */
public class importStudentByClass {

    public static void importFileExcel(String filename) throws Exception {
        FileInputStream inpfile;
        inpfile = new FileInputStream(filename);

        XSSFWorkbook wb = new XSSFWorkbook(inpfile);
        XSSFSheet sheet = wb.getSheetAt(0);
        DataFormatter formatter = new DataFormatter();
        Row row;
        String _ma_mon = formatter.formatCellValue(sheet.getRow(8).getCell(2));
        for (int i = 11; i <= sheet.getLastRowNum(); i++) {
            row = (Row) sheet.getRow(i);
            String _ma_sv = null;
            String _ho_ten = null;
            String _ngay_sinh = null;
            String _lop_mon_hoc = null;
            String _ghi_chu;
            if (row.getCell(1) != null) {
                _ma_sv = formatter.formatCellValue(row.getCell(1));
            }
            if (row.getCell(2) != null) {
                _ho_ten = formatter.formatCellValue(row.getCell(2));
            }
            if (row.getCell(3) != null) {
                _ngay_sinh = formatter.formatCellValue(row.getCell(3));
            }
            if (row.getCell(4) != null) {
                _lop_mon_hoc = formatter.formatCellValue(row.getCell(4));
            }
            _ghi_chu = formatter.formatCellValue(row.getCell(5));

            String[] a = _ngay_sinh.split("/");
            String ngay_sinh = a[0] + "-" + a[1] + "-" + a[2];
            studentByClass student = new studentByClass();
            student.setMa_sv(_ma_sv);
            student.setHo_ten(_ho_ten);
            student.setNgay_sinh(ngay_sinh);
            student.setLop_mon_hoc(_lop_mon_hoc);
            student.setGhi_chu(_ghi_chu);
            student.setMa_mon_hoc(_ma_mon);

            if (!student.getMa_sv().equals("")) {
                studentByClassDAO.create(student);
            }

        }

        inpfile.close();

    }
}
