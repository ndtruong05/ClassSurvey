<%-- 
    Document   : phieudanhgiasv
    Created on : Dec 27, 2018, 6:17:01 PM
    Author     : Trường Nguyễn
--%>

<%@page import="DTO.phieudanhgia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            phieudanhgia bean = (phieudanhgia) request.getAttribute("phieudanhgia");
            String ten_sv = (String) request.getAttribute("tensv");

        %>

        <h1>Phiếu đánh giá</h1>
        <table>
            <tr>
                <th>
                    Mã Sinh Viên
                </th>
                <th>Họ Tên</th>
                <th>Mã môn học</th>
                <th>Ngày tạo</th>
                <th>Giảng đường đáp ứng yêu cầu môn học</th>
                <th>Các trang thiết bị đáp ứng yêu cầu giảng dạy và học tập</th>
                <th>Bạn được hỗ trợ kịp thời trong quá trình học môn này</th>
                <th>Mục tiêu môn học nêu rõ kiến thức và kỹ năng người học cần đạt được</th>
                <th>Thời lượng môn học được phân bổ hợp lý cho các hình thức học tập</th>
                <th>Các tài liệu phục vụ môn học được cập nhật</th>
                <th>Môn học góp phần trang bị kiến thức nghề nghiệp cho bạn</th>
            </tr>
            <tr>
                <td><%= bean.getMa_sv() %></td>
                <td><%= ten_sv %></td>
                <td><%= bean.getMa_mon_hoc() %></td>
                <td><%= bean.getNgay_tao() %></td>
                <td><%= bean.getOption1() %></td>
                <td><%= bean.getOption2() %></td>
                <td><%= bean.getOption3() %></td>
                <td><%= bean.getOption4() %></td>
                <td><%= bean.getOption5() %></td>
                <td><%= bean.getOption6() %></td>
                <td><%= bean.getOption7() %></td>
            </tr>
        </table>
    </body>
</html>
