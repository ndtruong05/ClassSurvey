<%-- 
    Document   : checkImport
    Created on : Dec 26, 2018, 11:55:46 PM
    Author     : Truon
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
            String ma_mon = (String)request.getAttribute("ma_mon_hoc");
        %>
        <h4>Thêm dữ liệu thành công</h4>
        <form method="post" action="ListStudentByClass">
            <tr><input type="hidden" value="<%= ma_mon%>" name="txtclass"></tr>
            <tr>
            <input type="submit" value="Trở về">
            </tr>
        </form>
    </body>
</html>
