<%-- 
    Document   : staffManage
    Created on : Dec 5, 2018, 11:41:59 PM
    Author     : Truong ND
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.staffDTO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../.js/checkFormUpdateStaff.js"></script>
    </head>
    <body>
        <h1>Danh sách tài khoản giảng viên</h1>
        <% 
            //lay ve danh sach sinh vien
            ArrayList<staffDTO> list = (ArrayList<staffDTO>)request.
                    getAttribute("listStaff");
        %>
        <table border="1">
            <tr>
                <th>STT</th>
                <th>Tên đăng nhập</th>
                <th>Mật khẩu</th>
                <th>Họ và tên</th>
                <th>VNU email</th>
                <th></th>
                <th></th>
            </tr>
            <%
            for(int i = 0; i < list.size(); i++) {    
                staffDTO staff = list.get(i);
            %>
            <tr>
                <td><%= i %></td>
                <td><%= staff.getUsername() %></td>
                <td><%= staff.getPassword() %></td>
                <td><%= staff.getFullname() %></td>
                <td><%= staff.getEmail() %></td>
                <td><a href="EditStaffServlet?ten_dang_nhap=<%= staff.getUsername() %>">Update</a></td>
                <td><a href="DeleteStaffServlet?ten_dang_nhap=<%= staff.getUsername() %>" onclick="return confirm('Bạn có thực sự muốn xóa ?');">Delete</a></td>
            </tr>
            <% } %>
        </table>
        <a href="TransferStaffServlet">Thêm giảng viên</a>
        <form action="ImportStaffServlet" method="post">
            <table>
                <tr>Nhập file Excel</tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="txtfilename"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="import"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
