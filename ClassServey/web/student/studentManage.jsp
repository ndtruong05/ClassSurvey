<%-- 
    Document   : studentManage
    Created on : Nov 20, 2018, 10:43:56 PM
    Author     : Truong ND
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.studentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sách tài khoản sinh viên</h1>
        <% 
            //lay ve danh sach sinh vien
            ArrayList<studentDTO> list = (ArrayList<studentDTO>)request.
                    getAttribute("listStudent");
        %>
        <table border="1">
            <tr>
                <th>STT</th>
                <th>Mã sinh viên</th>
                <th>Mật khẩu</th>
                <th>Họ và tên</th>
                <th>VNU email</th>
                <th>Khóa đào tạo</th>
                <th></th>
                <th></th>
            </tr>
            <%
            for(int i = 0; i < list.size(); i++) {    
                studentDTO student = list.get(i);
            %>
            <tr>
                <td><%= i+1 %></td>
                <td><%= student.getUsername() %></td>
                <td><%= student.getPassword() %></td>
                <td><%= student.getFullname() %></td>
                <td><%= student.getVnuemail() %></td>
                <td><%= student.getTraining() %></td>
                <td><a href="EditStudentServlet?ma_sinh_vien=<%= student.getUsername() %>">Update</a></td>
                <td><a href="DeleteStudentServlet?ma_sinh_vien=<%= student.getUsername() %>" onclick="return confirm('Bạn có thực sự muốn xóa ?');">Delete</a></td>
            </tr>
            <% } %>
        </table>
        <a href="TransferStudentServlet">Thêm sinh viên</a>
        <form action="ImportExcelServlet" method="post">
            <table>
                <tr>Nhập file excel</tr>
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
