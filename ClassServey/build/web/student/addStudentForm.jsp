<%-- 
    Document   : addStudentForm
    Created on : Nov 21, 2018, 12:23:58 AM
    Author     : Truong ND
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../.js/checkFormUpdateStudent.js"></script>
    </head>
    <body>
        <h1>Thêm sinh viên</h1>
        
        <form method="post" name="form2" action="AddStudentServlet">
            <table>
                <tr>
                    <td align="left">STT: </td>
                    <td><input width="400" type="text" name="txtstt" size="40" id="txtStt"/></td>
                </tr>
                <tr>
                    <td align="left">Mã sinh viên: </td>
                    <td><input width="400" type="text" name="txtusername" size="40" id="txtUsername"/></td>
                </tr>
                <tr>
                    <td align="left">Mật khẩu: </td>
                    <td><input width="400" type="password" name="txtpassword" size="40" id="txtPassword"/></td>
                </tr>
                <tr>
                    <td align="left">Họ và tên: </td>
                    <td><input width="400" type="text" name="txtfullname" size="40" id="txtFullname"/></td>
                </tr>
                <tr>
                    <td align="left">VNU email: </td>
                    <td><input width="400" type="text" name="txtvnuemail" size="40" id="txtVnuemail"/></td>
                </tr>
                <tr>
                    <td align="left">Khóa đào tạo: </td>
                    <td><input width="400" type="text" name="txttraining" size="40" id="txtTrainin"/></td>
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
