<%-- 
    Document   : listSubjects
    Created on : Dec 28, 2018, 11:00:26 PM
    Author     : Trường Nguyễn
--%>

<%@page import="DTO.lopmonhoc"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hệ thống đánh giá môn học - Trường Đại học Công nghệ</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="../../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="../../bower_components/morris.js/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../../bower_components/jvectormap/jquery-jvectormap.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="../../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../../bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <!-- Change Css -->
        <link rel="stylesheet" href="../../dist/css/custom.css">
        <link rel="shortcut icon" href="../../Images/logo-uet.png">
        <!-- Google Font -->
        <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
        <style>
            .table-bordered>tbody>tr>th, .table-bordered>tbody>tr>td, .table-bordered>thead>tr>th {
                border: 1px solid #a6a6a6;
            }

            table.table-bordered.dataTable tbody td {
                border-bottom-width: 1px;
            }
            table.table-bordered.dataTable td, table.table-bordered.dataTable th {
                border-left-width: 1px;
            }
            table.table-bordered.dataTable td:last-child, table.table-bordered.dataTable th:last-child {
                border-right-width: 1px;
            }

        </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

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
            <%                
                ArrayList<lopmonhoc> list = (ArrayList<lopmonhoc>) request.getAttribute("list");
            %>
            <header class="main-header">
                <!-- Logo -->
                <a href="../../index.jsp" class="logo">
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
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button" style="font-size:25px;">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="name-sys"> Hệ thống đánh giá môn học UET</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../../Images/user.png" class="user-image" alt="User Image">
                                    <span class="hidden-uname">Username</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../../Images/user.png" class="img-circle" alt="User Image">

                                        <p>
                                            Username - Web Developer
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="../../profile.jsp" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="../../login.jsp" class="btn btn-default btn-flat">Logout</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li>
                            <a href="../../Quantri.jsp">
                                <i class="fa fa-dashboard"></i> 
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                <i class="fa fa-book"></i>
                                <span>Danh sách môn học</span>
                            </a>
                        </li>
                        <li>
                            <a href="../Student/listStudents.jsp">
                                <i class="fa fa-graduation-cap"></i> 
                                <span>Danh sách sinh viên</span>
                            </a>
                        </li>
                        <li>
                            <a href="../Lecturer/listLecturers.jsp">
                                <i class="fa fa-user-md"></i>
                                <span>Danh sách giảng viên</span>
                            </a>
                        </li>
                        <li>
                            <a href="../Semester/listSemesters.jsp">
                                <i class="fa fa-calendar-times-o"></i>
                                <span>Danh sách học kỳ</span>
                            </a>
                        </li>
                        <li>
                            <a href="../Survey/listSurveys.jsp">
                                <i class="fa fa-file-excel-o"></i>
                                <span>Danh sách cuộc khảo sát</span>
                            </a>
                        </li>
                        <li>
                            <a href="../Question/listQuestions.jsp">
                                <i class="fa fa-question-circle-o"></i>
                                <span>Danh sách câu hỏi</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Danh sách môn học
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../../index.jsp"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Danh sách môn học</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box">
                                <div class="box-body">
                                    <div class="row" style="padding-bottom:10px;">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputFile">Import file</label>
                                                <input type="file" id="exampleInputFile">
                                                <button type="submit" class="btn btn-dropbox" style="margin-top:10px;">Thực hiện</button>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-md-offset-4">
                                            <div class="form-group">
                                                <a class="btn btn-primary" href="addSubject.jsp" style="margin-top:15px;">
                                                    Thêm môn học
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width:5%">No.</th>
                                                <th>Môn học</th>
                                                <th style="width: 10%">Mã môn học</th>
                                                <th style="width: 8%">Giảng viên</th>
                                                <th style="width: 12%">Tác vụ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (int i = 0; i < list.size(); i++) {
                                                    lopmonhoc lop = list.get(i);
                                            %>
                                            <tr>
                                                <td><%= i+1 %></td>
                                                <td><%= lop.getMa_mon_hoc() %></td>
                                                <td><%= lop.getTen_mon_hoc() %></td>
                                                <td><%= lop.getTen_mon_hoc() %></td>
                                                <td>
                                                    <div class="text-left">
                                                        <a class="btn btn-social-icon btn-github" title="Detail" href="detailSubject.jsp">
                                                            <i class="fa fa-eye"></i>
                                                        </a>
                                                        <a class="btn btn-social-icon btn-dropbox" title="Edit" href="editSubject.jsp">
                                                            <i class="fa fa-pencil"></i>
                                                        </a>
                                                        <a class="btn btn-social-icon btn-google" title="Delete">
                                                            <i class="fa fa-trash"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <% } %>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                        </div>
                    </div>
                    <!-- /.box -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    Version 1.0
                </div>
                <strong style="font-size: 16px;">
                    Trường Đại học Công nghệ<br>
                    Đại học Quốc gia Hà Nội<br>
                </strong>
                <strong style="color:green;line-height:2;">
                    Copyright &copy; 2018
                </strong>
            </footer>

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="../../bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="../../bower_components/raphael/raphael.min.js"></script>
        <script src="../../bower_components/morris.js/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="../../bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
        <!-- daterangepicker -->
        <script src="../../bower_components/moment/min/moment.min.js"></script>
        <script src="../../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="../../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../../bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="../../dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../dist/js/demo.js"></script>
        <!-- DataTables -->
        <script src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script>
            $(function () {
                $('#example1').DataTable({
                    'paging': true,
                    'lengthChange': true,
                    'searching': true,
                    'ordering': false,
                    'info': true,
                    'autoWidth': false
                });
            });
        </script>

    </body>
</html>
