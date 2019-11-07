<%-- 
    Document   : danhsachlmh
    Created on : Dec 27, 2018, 6:37:04 PM
    Author     : Trường Nguyễn
--%>

<%@page import="DTO.lopmonhoc"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="Home">Trang chủ</a>
        <%
            ArrayList<lopmonhoc> list = (ArrayList<lopmonhoc>)request.getAttribute("list");
        %>
        <h1>Danh sách môn học</h1>

            <table>
                <tr>
                    <th>STT</th>
                    <th>Mã Môn Học</th>
                    <th>Tên Môn Học</th>
                    <th></th>
                </tr>
                <%
                    for(int i = 0; i < list.size(); i++) {    
                        lopmonhoc lop = list.get(i);
                %>
                <tr>
                    <td><%= i+1 %></td>
                    <td><%= lop.getMa_mon_hoc() %></td>
                    <td><%= lop.getTen_mon_hoc() %></td>
                    <td><form method="post" action="DanhSachSVLMH">
                        <input type="hidden" name="txtclass" value="<%= lop.getMa_mon_hoc() %>">
                        <input type="submit" value="Xem">
                    </form>
                    </td>
                </tr>
                <% } %>
            </table>
    </body>
</html>
