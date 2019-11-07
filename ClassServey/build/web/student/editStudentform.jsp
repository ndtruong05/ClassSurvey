<%-- 
    Document   : editStudentform
    Created on : Dec 26, 2018, 5:13:18 PM
    Author     : Truon
--%>

<%@page import="DTO.studentByClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            studentByClass bean = (studentByClass)request.getAttribute("sinhvien");
        %>
        

        <h1>Thông tin sinh viên</h1>
        <form method="post" action="UpdateInfo">
            <table>
                <tr>
                    <td>Mã sinh viên :</td>
                    <td><input type="text" name="txtmasv" value="<%= bean.getMa_sv() %>"></td>
                </tr>
                <tr>
                    <td>Họ và tên :</td>
                    <td><input type="text" name="txthoten" value="<%= bean.getHo_ten() %>"></td>
                </tr>
                <tr>
                    <td>Ngày sinh :</td>
                    <td><input type="text" name="txtngaysinh" value="<%= bean.getNgay_sinh() %>"></td>
                </tr>
                <tr>
                    <td>Lớp khóa học :</td>
                    <td><input type="text" name="txtlopkhoahoc" value="<%= bean.getLop_mon_hoc() %>"></td>
                </tr>
                <tr>
                    <td>Ghi chú :</td>
                    <td><input type="text" name="txtghichu" value="<%= bean.getGhi_chu() %>"></td>
                </tr>
                <tr>
                <input type="submit" value="Cập nhật">
                </tr>
            </table>
        </form>
    </body>
</html>
