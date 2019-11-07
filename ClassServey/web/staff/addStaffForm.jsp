<%-- 
    Document   : addStaffForm
    Created on : Dec 6, 2018, 12:04:26 AM
    Author     : Truong ND
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../.js/checkFormUpdateStaff.js"></script>
    </head>
    <body>
        <h1>Thêm giảng viên </h1>
        
        <form method="post" name="form4" action="AddStaffServlet">
            <table>
                <tr>
                    <td align="left">Tên đăng nhập: </td>
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
                    <td></td>
                    <td>
                        <input type="submit" value="Add Staff" onclick="checkFormSaff()"/>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
    </body>
</html>
