<%-- 
    Document   : listStudent
    Created on : Dec 25, 2018, 3:28:17 PM
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
        <%
            //lay ve danh sach sinh vien
            ArrayList<studentByClass> list = (ArrayList<studentByClass>) request.getAttribute("List");
            if(list == null){
                System.out.println("YES");
            }else{
                System.out.println("NO");
            }
        %>

        <table border="1">
            <tr>
                <th>STT</th>
                <th>Mã sinh viên</th>
                <th>Họ và Tên</th>
                <th>Ngày Sinh</th>
                <th>Lớp khóa học</th>
                <th>Ghi chú</th>
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

            </tr>
            <% }%>
        </table>
    </body>
</html>
