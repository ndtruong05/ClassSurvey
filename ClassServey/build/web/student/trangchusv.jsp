<%-- 
    Document   : trangchusv
    Created on : Dec 24, 2018, 5:17:46 AM
    Author     : Truong ND
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
            String masv = (String) session.getAttribute("student");
        %>
        <h1>Xin chào <%= masv%></h1>
        <form action="ListInfo">
            <table>
                <tr><input type="hidden" value="<%= masv%>" name="txtmasv"></tr>
                <tr>
                <input type="submit" value="Xem Hồ Sơ">
                </tr>
            </table>
        </form><br><br>
        <form action="EditInfo">
            <table>
                <tr><input type="hidden" value="<%= masv%>" name="txtmasv"></tr>
                <tr>
                <input type="submit" value="Sửa Thông Tin Cá Nhân">
                </tr>
            </table>
        </form><br><br>
        <form method="post" action="Transfer1">
            <table>
                <tr>Phát triển ứng dụng web</tr>
                <tr><input type="hidden" value="<%= "Phát triển ứng dụng web"%>" name="txtsubject"></tr>
                <tr><input type="hidden" value="<%= "INT3306 1"%>" name="txtclass"></tr>
                <tr><input type="hidden" value="<%= masv%>" name="txtmasv"></tr>
                <tr>
                    <input type = "submit" value="Đánh giá">
                </tr>
            </table>
        </form>
    </body>
</html>
