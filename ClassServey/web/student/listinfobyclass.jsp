<%-- 
    Document   : listinfobyclass
    Created on : Dec 26, 2018, 4:56:40 PM
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
        <form method="post" action="Transfer2">
            <table>
                <tr>
                    <td>Mã sinh viên :</td>
                    <td><%= bean.getMa_sv() %></td>
                </tr>
                <tr>
                    <td>Họ và tên :</td>
                    <td><%= bean.getHo_ten() %></td>
                </tr>
                <tr>
                    <td>Ngày sinh :</td>
                    <td><%= bean.getNgay_sinh() %></td>
                </tr>
                <tr>
                    <td>Lớp khóa học :</td>
                    <td><%= bean.getLop_mon_hoc() %></td>
                </tr>
                <tr>
                    <td>Ghi chú :</td>
                    <td><%= bean.getGhi_chu() %></td>
                </tr>
            </table>
        </form>
    </body>
</html>
