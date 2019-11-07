<%-- 
    Document   : themphieudanhgia
    Created on : Dec 26, 2018, 2:57:56 PM
    Author     : Truon
--%>

<%@page import="org.eclipse.jdt.internal.compiler.parser.Parser"%>
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
            String mon_hoc = (String) request.getAttribute("mon_hoc");
            String masv = (String) session.getAttribute("student");
        %>
        <h1>Đánh giá môn <%= mon_hoc%> <%= ma_mon%></h1>
        <form method="post" action="EvaluateSubject">
            <table border="1">
                <th></th>
                <th style="padding: 5px">
                    <label class="radio-inline" style="padding: 5px">1</label>
                    <label class="radio-inline" style="padding: 5px">2</label>
                    <label class="radio-inline" style="padding: 5px">3</label>
                    <label class="radio-inline" style="padding: 5px">4</label>
                    <label class="radio-inline" style="padding: 5px">5</label>
                    <label class="radio-inline" style="padding: 5px">6</label>
                    <label class="radio-inline" style="padding: 5px">7</label>
                </th>
                <tr style="padding: 5px">
                    <td>Giảng đường đáp ứng yêu cầu môn học</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio1" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Các trang thiết bị đáp ứng yêu cầu giảng dạy và học tập</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio2" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Bạn được hỗ trợ kịp thời trong quá trình học môn này</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio3" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Mục tiêu môn học nêu rõ kiến thức và kỹ năng người học cần đạt được</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio4" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Thời lượng môn học được phân bổ hợp lý cho các hình thức học tập</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio5" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Các tài liệu phục vụ môn học được cập nhật</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio6" value="7">
                        </label>
                    </td>
                </tr>
                <tr style="padding: 5px">
                    <td>Môn học góp phần trang bị kiến thức nghề nghiệp cho bạn</td>
                    <td>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="1">    
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="2">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="3">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="4">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="5">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="6">
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="optradio7" value="7">
                        </label>
                    </td>
                </tr>
                <tr><input type="hidden" value="<%= ma_mon%>" name="txtclass"></tr>
                <tr><input type="hidden" value="<%= masv%>" name="txtsubject"></tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="gửi"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
