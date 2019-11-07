<%-- 
    Document   : addstudentbyclass
    Created on : Dec 25, 2018, 7:10:12 PM
    Author     : Truong ND
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Thêm sinh viên</h1>
        
        <form method="post" name="form4" action="AddStudentbyClass">
            <table>
                <tr>
                    <td align="left">Mã sinh viên: </td>
                    <td><input width="400" type="text" name="txtmasv" size="40" id="txtmasv"/></td>
                </tr>
                <tr>
                    <td align="left">Họ và tên: </td>
                    <td><input width="400" type="text" name="txthoten" size="40" id="txthoten"/></td>
                </tr>
                <tr>
                    <td align="left">Ngày sinh: </td>
                    <td><input width="400" type="text" name="txtngaysinh" size="40" id="txtngaysinh"/></td>
                </tr>
                <tr>
                    <td align="left">Lớp khóa học: </td>
                    <td><input width="400" type="text" name="txtlopkhoahoc" size="40" id="txtlopkhoahoc"/></td>
                </tr>
                <tr>
                    <td align="left">Ghi chú: </td>
                    <td><input width="400" type="text" name="txtghichu" size="40" id="txtghichu"/></td>
                </tr>
                <tr>
                    <td align="left">Mã môn học: </td>
                    <td><input width="400" type="text" name="txtmamonhoc" size="40" id="txtmamonhoc"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Add Student" onclick="checkFormStudent()"/>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
    </body>
</html>
