<%-- 
    Document   : thongbao
    Created on : Dec 27, 2018, 10:10:20 PM
    Author     : Trường Nguyễn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ma_mon = (String) request.getAttribute("ma_mon");
        %>
        <h1>thành công</h1>
        <form method="post" action="ListStudentByClass">
            <tr><input type="hidden" value="<%= ma_mon %>" name="txtclass"></tr>
            <input type="submit" value="Trở về">
        </form>
    </body>
</html>
