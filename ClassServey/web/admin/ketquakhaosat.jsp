<%-- 
    Document   : ketquakhaosat
    Created on : Dec 27, 2018, 8:32:14 PM
    Author     : Trường Nguyễn
--%>

<%@page import="DTO.ketquadanhgia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ketquadanhgia bean = (ketquadanhgia) request.getAttribute("ketquadanhgia");
        %>
        <a href="Home">Trang chủ</a>
        Tên học phần : <%= bean.getTen_mon_hoc() %><br>
        Mã học phần : <%= bean.getMa_mon_hoc() %><br>
        Tên giảng viên : <%= bean.getTen_giang_vien() %><br>
        Sỗ lượng sinh viên đánh giá : <%= bean.getSo_luong_sv() %><br>
        
        <table border="1">
            <tr>
                <th>STT</th>
                <th>Tiêu chí</th>
                <th>Kết quả</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Giảng đường đáp ứng yêu cầu môn học</td>
                <td><%= bean.getOption1() %></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Các trang thiết bị đáp ứng yêu cầu giảng dạy và học tập</td>
                <td><%= bean.getOption2() %></td>
            </tr>
            <tr>
                <td>3</td>
                <td>Bạn được hỗ trợ kịp thời trong quá trình học môn này</td>
                <td><%= bean.getOption3() %></td>
            </tr>
            <tr>
                <td>4</td>
                <td>Mục tiêu môn học nêu rõ kiến thức và kỹ năng người học cần đạt được</td>
                <td><%= bean.getOption4() %></td>
            </tr>
            <tr>
                <td>5</td>
                <td>Thời lượng môn học được phân bổ hợp lý cho các hình thức học tập</td>
                <td><%= bean.getOption5() %></td>
            </tr>
            <tr>
                <td>6</td>
                <td>Các tài liệu phục vụ môn học được cập nhật</td>
                <td><%= bean.getOption6() %></td>
            </tr>
            <tr>
                <td>7</td>
                <td>Môn học góp phần trang bị kiến thức nghề nghiệp cho bạn</td>
                <td><%= bean.getOption7() %></td>
            </tr>
            
        </table>
    </body>
</html>
