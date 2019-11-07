<%-- 
    Document   : header
    Created on : Dec 28, 2018, 4:23:14 PM
    Author     : Trường Nguyễn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    <body>
        <%
            String current;
            String admin = (String) session.getAttribute("admin");
            String student = (String) session.getAttribute("student");
            String staff = (String) session.getAttribute("staff");
            if (admin != null) {
                current = admin;
            } else if (student != null) {
                current = student;
            } else if (staff != null) {
                current = staff;
            } else {
                current = "Khách";
            }
        %>
        <header class="main-header">
            <!-- Logo -->
            <a href=".../.../Quantri.jsp" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini">
                    UET
                </span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">
                    Trường Đại học Công nghệ - UET
                </span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" style="max-height:100px;">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button" style="font-size: 25px;">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="name-sys"> Hệ thống đánh giá môn học UET</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="Images/user.png" class="user-image" alt="User Image">
                                <span class="hidden-uname"><%= current %></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="Images/user.png" class="img-circle" alt="User Image">

                                    <p>
                                        <%= current %>
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="LogoutServlet" class="btn btn-default btn-flat">Logout</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </body>
</html>
