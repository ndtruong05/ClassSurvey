<%-- 
    Document   : updateStudentForm
    Created on : Nov 20, 2018, 11:52:36 PM
    Author     : Truong ND
--%>

<%@page import="DTO.studentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../.js/checkFormUpdateStudent.js"></script>
    </head>
    <body>
        <h1>Update Student</h1>
        <%
            studentDTO student = (studentDTO)request.getAttribute("student");
        %>
        <form method="post" name="form1" action="UpdateStudentServlet">
            <table>
                <tr>
                    <td align="left">STT: </td>
                    <td><input width="400" type="text" name="txtstt" size="40" id="txtStt" value="<%= student.getSTT()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Mã sinh viên: </td>
                    <td><input width="400" type="text" name="txtusername" size="40" id="txtUsername" value="<%= student.getUsername()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Mật khẩu: </td>
                    <td><input width="400" type="password" name="txtpassword" size="40" id="txtPassword" value="<%= student.getPassword()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Họ và tên: </td>
                    <td><input width="400" type="text" name="txtfullname" size="40" id="txtFullname" value="<%= student.getFullname()%>"/></td>
                </tr>
                <tr>
                    <td align="left">VNU email: </td>
                    <td><input width="400" type="text" name="txtvnuemail" size="40" id="txtVnuemail" value="<%= student.getVnuemail()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Khóa đào tạo: </td>
                    <td><input width="400" type="text" name="txttraining" size="40" id="txtTrainin" value="<%= student.getTraining()%>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Update Student" onclick="checkFormStudent()"/>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
