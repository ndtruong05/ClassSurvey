<%-- 
    Document   : updateStaffForm
    Created on : Dec 5, 2018, 11:51:01 PM
    Author     : Truong ND
--%>

<%@page import="DTO.staffDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Staff</h1>
        <%
            staffDTO staff = (staffDTO)request.getAttribute("staff");
        %>
        <form method="post" name="form3" action="UpdateStaffServlet">
            <table>
                <tr>
                    <td align="left">Tên đăng nhập: </td>
                    <td><input width="400" type="text" name="txtusername" size="40" id="txtUsername" value="<%= staff.getUsername()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Mật khẩu: </td>
                    <td><input width="400" type="password" name="txtpassword" size="40" id="txtPassword" value="<%= staff.getPassword()%>"/></td>
                </tr>
                <tr>
                    <td align="left">Họ và tên: </td>
                    <td><input width="400" type="text" name="txtfullname" size="40" id="txtFullname" value="<%= staff.getFullname()%>"/></td>
                </tr>
                <tr>
                    <td align="left">VNU email: </td>
                    <td><input width="400" type="text" name="txtvnuemail" size="40" id="txtVnuemail" value="<%= staff.getEmail()%>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Update Staff" onclick="checkFormStaff()"/>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
