<%-- 
    Document   : danhsachsvlmh
    Created on : Dec 27, 2018, 6:40:09 PM
    Author     : Trường Nguyễn
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.studentByClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sách phiếu đánh giá sinh viên</h1>
        <a href="Home">Trang chủ</a>
        <%
            //lay ve danh sach sinh vien
            ArrayList<studentByClass> list = (ArrayList<studentByClass>) request.
                    getAttribute("listStudentByClass");
            String ma_mon = (String) request.getAttribute("ma_mon_hoc");
        %>
        <table border="1">
            <tr>
                <th>STT</th>
                <th>Mã sinh viên</th>
                <th>Họ và Tên</th>
                <th>Ngày Sinh</th>
                <th>Lớp khóa học</th>
                <th>Ghi chú</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for (int i = 0; i < list.size(); i++) {
                    studentByClass student = list.get(i);
            %>
            <tr>
                <td><%= i + 1%></td>
                <td><%= student.getMa_sv()%></td>
                <td><%= student.getHo_ten()%></td>
                <td><%= student.getNgay_sinh()%></td>
                <td><%= student.getLop_mon_hoc()%></td>
                <td><%= student.getGhi_chu()%></td>
                <td>
                    <form action="PhieuDanhGiaSV" method="post">
                        <input type="hidden" name="txtmasv" value="<%= student.getMa_sv() %>">
                        <input type="hidden" name="txttensv" value="<%= student.getHo_ten() %>">
                        <input type="submit" value="Xem">
                    </form>
                </td>
                <td>
                    <form action="XoaPhieuDanhGia" method="post">
                        <input type="hidden" name="txtmasv" value="<%= student.getMa_sv() %>">
                        <input type="hidden" name="txttensv" value="<%= student.getHo_ten() %>">
                        <input type="submit" value="Xóa">
                    </form>
                </td>

            </tr>
            <% }%>
        </table>
    </body>
</html>
