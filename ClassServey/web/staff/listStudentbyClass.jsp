<%-- 
    Document   : listStudentbyClass
    Created on : Dec 25, 2018, 11:42:08 AM
    Author     : Truong ND
--%>

<%@page import="DTO.studentByClass"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sách sinh viên</h1>
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
                <td><form method="post" action="XoaSVTheoLop">
                        <input type="hidden" name="txtmasv" value="<%= student.getMa_sv() %>">
                        <input type="hidden" value="<%= ma_mon %>" name="txtclass">
                        <input type="submit" value="Xóa">
                    </form>
                </td>
            </tr>
            <% }%>
        </table>
        <br>
        <a href="StransferTo">Thêm sinh viên</a>
        <br><br>
        <form action="ImportStudentByClass" method="post">
            <table>
                <tr>Nhập file excel</tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="txtfilename"/></td>
                    <tr><input type="hidden" value="<%= ma_mon %>" name="txtclass"></tr>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="import"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
