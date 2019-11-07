<%-- 
    Document   : Quantri
    Created on : Dec 24, 2018, 4:42:05 AM
    Author     : Truong ND
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hệ thống đánh giá môn học - Trường Đại học Công nghệ</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- fullCalendar -->
        <link rel="stylesheet" href="bower_components/fullcalendar/dist/fullcalendar.min.css">
        <link rel="stylesheet" href="bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <!-- Change Css -->
        <link rel="stylesheet" href="dist/css/custom.css">
        <link rel="shortcut icon" href="Images/logo-uet.png">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
    </head>
    <body class="hold-transition skin-blue sidebar-mini>
         <div class="wrapper">

            <jsp:include page="header.jsp"></jsp:include>
            
            <jsp:include page="menu_left.jsp"></jsp:include>
            <!-- Content Wrapper. Contains page content -->
            
            <jsp:include page="content.jsp"></jsp:include>
            <!-- /.content-wrapper -->
            
            <jsp:include page="footer.jsp"></jsp:include>
            
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
        
        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Sparkline -->
        <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <!-- daterangepicker -->
        <script src="bower_components/moment/min/moment.min.js"></script>
        <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- fullCalendar -->
        <script src="bower_components/moment/moment.js"></script>
        <script src="bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
        
        <script>
            $(function () {

              /* initialize the external events
               -----------------------------------------------------------------*/
              function init_events(ele) {
                ele.each(function () {

                  // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                  // it doesn't need to have a start or end
                  var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                  }

                  // store the Event Object in the DOM element so we can get to it later
                  $(this).data('eventObject', eventObject)

                  // make the event draggable using jQuery UI
                  $(this).draggable({
                    zIndex        : 1070,
                    revert        : true, // will cause the event to go back to its
                    revertDuration: 0  //  original position after the drag
                  })

                })
              }

              init_events($('#external-events div.external-event'))

              /* initialize the calendar
               -----------------------------------------------------------------*/
              //Date for the calendar events (dummy data)
              var date = new Date()
              var d    = date.getDate(),
                  m    = date.getMonth(),
                  y    = date.getFullYear()
              $('#calendar').fullCalendar({
                header    : {
                  left  : 'prev',
                  center: 'title',
                  right : 'next'
                },
                buttonText: {
                  today: 'today',
                  month: 'month',
                  week : 'week',
                  day  : 'day'
                },
                editable  : true,
                droppable : true, // this allows things to be dropped onto the calendar !!!
                drop      : function (date, allDay) { // this function is called when something is dropped

                  // retrieve the dropped element's stored Event Object
                  var originalEventObject = $(this).data('eventObject')

                  // we need to copy it, so that multiple events don't have a reference to the same object
                  var copiedEventObject = $.extend({}, originalEventObject)

                  // assign it the date that was reported
                  copiedEventObject.start           = date
                  copiedEventObject.allDay          = allDay
                  copiedEventObject.backgroundColor = $(this).css('background-color')
                  copiedEventObject.borderColor     = $(this).css('border-color')

                  // render the event on the calendar
                  // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                  $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

                  // is the "remove after drop" checkbox checked?
                  if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove()
                  }

                }
              })

              /* ADDING EVENTS */
              var currColor = '#3c8dbc' //Red by default
              //Color chooser button
              var colorChooser = $('#color-chooser-btn')
              $('#color-chooser > li > a').click(function (e) {
                e.preventDefault()
                //Save color
                currColor = $(this).css('color')
                //Add color effect to button
                $('#add-new-event').css({ 'background-color': currColor, 'border-color': currColor })
              })
              $('#add-new-event').click(function (e) {
                e.preventDefault()
                //Get value and make sure it is not null
                var val = $('#new-event').val()
                if (val.length == 0) {
                  return
                }

                //Create events
                var event = $('<div />')
                event.css({
                  'background-color': currColor,
                  'border-color'    : currColor,
                  'color'           : '#fff'
                }).addClass('external-event')
                event.html(val)
                $('#external-events').prepend(event)

                //Add draggable funtionality
                init_events(event)

                //Remove event from text input
                $('#new-event').val('')
              })
            })
        </script>
        <a href="AdminHome">Trang chủ</a>
        <a href="ListStudentServlet">Quản lý tài khoản sinh viên</a><br><br>
        <a href="ListStaffServlet">Quản lý tài khoản giảng viên</a><br><br>
        <a href="ListClassAdmin">Quản lý phiếu khảo sát</a><br><br>
        <a href="ListClassToSurVey">Quản lý cuộc khảo sát</a>
    </body>
</html>
