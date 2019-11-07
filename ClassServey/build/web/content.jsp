<%-- 
    Document   : content
    Created on : Dec 28, 2018, 4:26:39 PM
    Author     : Trường Nguyễn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content</title>
        <style>
            .fc-widget-header:first-of-type, .fc-widget-content:first-of-type {
                border-left: 1px solid #ddd;
            }
            .fc-widget-header:last-of-type, .fc-widget-content:last-of-type {
                border-right: 1px solid #ddd;
            }
            .fc-unthemed td.fc-today {
                background: #49daf6;
            }
            .fc-basic-view .fc-body .fc-row {
                max-height: 100px !important;
            }
            .fc-scroller {
                max-height: 600px !important;
            }
            .fc-day-number {
                font-size: 30px;
            }
            .fc-widget-header {
                height: 40px;
            }
            .fc-day-header {
                 vertical-align: middle !important;
                 font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Dashboard
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Quantri.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <i class="fa fa-calendar"></i>
                                <h3 class="box-title">Calendar</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!--The calendar -->
                                <div id="calendar"></div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /. box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
    </body>
</html>
