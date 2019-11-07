<%-- 
    Document   : trangchugv
    Created on : Dec 24, 2018, 5:15:13 AM
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
            String ma_gv = (String) session.getAttribute("staff");
        %>
        <form   method="post" action="ListSurvey">
            <table>
                <tr>
                    <input type="hidden" name="txtmagv" value="<%= ma_gv %>">
                </tr>
                <tr>
                    <input type="submit" value="xem danh sách các cuộc khảo sát">
                </tr>
            </table>
        </form>
        <form method="post" action="ListClass">
            <table>
                <tr>
                    <input type="hidden" name="txtmagv" value="<%= ma_gv %>" />
                </tr>
                <tr>
                    <input type="submit" value="Xem danh sach lớp">
                </tr>
            </table>
        </form>
    </body>
</html>
