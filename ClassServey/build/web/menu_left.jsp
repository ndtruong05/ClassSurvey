<%-- 
    Document   : menu-left
    Created on : Dec 28, 2018, 4:24:52 PM
    Author     : Trường Nguyễn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu left</title>
    </head>
    <body>
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
                    <li class="active">
                        <a href="Quantri.jsp">
                            <i class="fa fa-dashboard"></i> <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Subject/listSubjects.jsp">
                            <i class="fa fa-book"></i>
                            <span>Danh sách môn học</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Student/listStudents.jsp">
                            <i class="fa fa-graduation-cap"></i> 
                            <span>Danh sách sinh viên</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Lecturer/listLecturers.jsp">
                            <i class="fa fa-user-md"></i>
                            <span>Danh sách giảng viên</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Semester/listSemesters.jsp">
                            <i class="fa fa-calendar-times-o"></i>
                            <span>Danh sách học kỳ</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Survey/listSurveys.jsp">
                            <i class="fa fa-file-excel-o"></i>
                            <span>Danh sách cuộc khảo sát</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/Question/listQuestions.jsp">
                            <i class="fa fa-question-circle-o"></i>
                            <span>Danh sách câu hỏi</span>
                        </a>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
    </body>
</html>
