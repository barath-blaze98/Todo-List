<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<!-- <link rel="stylesheet" href="http://localhost:8080/TodoList/src/main/webapp/jsp/fullcalendar.css">
<script src="http://localhost:8080/TodoList/src/main/webapp/jsp/jquery.min.js"></script>
<script src="http://localhost:8080/TodoList/src/main/webapp/jsp/moment.min.js"></script>
<script src="http://localhost:8080/TodoList/src/main/webapp/jsp/fullcalendar.js"></script>
-->




<link href='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script src='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.min.js'></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Calender</title>
<style type="text/css">
.fc-title
{
font-size:13.5px;

}

h2
{
color:#3380cc;
}
body
{
padding-top:15px;
padding-right:15px;
padding-left:70px;
padding-bottom:80px;
}
#container
{
    width: 1200px;
}
.fc-unthemed td.fc-today 
{
    background: #e6e6e6;
}
</style>
</head>
<body>
<div class="back"><a class="btn btn-primary" href="list">Back</a></div>
<br>
<div id="container"></div>

<script type="text/javascript">
$(document).ready(function () {
	
	
	var events=[];
	$('#container').fullCalendar({
		header : {
			left : 'prev,next today',
			center : 'title',
			right : 'month,agendaDay,listWeek'
		},

		height: 900,
		navLinks : true, // can click day/week names to navigate views
		editable : false,
		selectable: false,
        selectHelper: true,
        eventColor: '##0099cc',
		eventLimit : true, // allow "more" link when too many events
		eventLimitClick : 'popover',
		events: 'http://localhost:8080/TodoList/todocal',
		
		eventRender: function(event, element) 
		{
			
		//element.find('.fc-title').append(" "+"<br>"+" Person to Meet : "+ event.whomtomeet+"<br>"+" Location : "+ event.location);

		
		},
		 eventMouseover: function (data, event, view) 
		 {

	            tooltip = '<div class="tooltiptopicevent" style="width:auto;height:auto;font-family: system-ui; color:white;font-size:11.5px;border-radius:6px;background:#262626;position:absolute;z-index:10000;padding:10px 15px 10px 15px ;  line-height: 200%;">' + '<strong>Title</strong> : ' + data.title + '</br>' + '<b>Person to Meet</b> : '  + data.whomtomeet +'</br>' + '<b>Purpose</b> : '  + data.purpose + '</br>' + '<b>Location</b> : '  + data.location + '</div>';


	            $("body").append(tooltip);
	            $(this).mouseover(function (e) {
	                $(this).css('z-index', 10000);
	                $('.tooltiptopicevent').fadeIn('500');
	                $('.tooltiptopicevent').fadeTo('10', 1.9);
	            }).mousemove(function (e) {
	                $('.tooltiptopicevent').css('top', e.pageY + 10);
	                $('.tooltiptopicevent').css('left', e.pageX + 20);
	            });


	        },
	        eventMouseout: function (data, event, view) {
	            $(this).css('z-index', 8);

	            $('.tooltiptopicevent').remove();

	        },
	        dayClick: function () {
	            tooltip.hide()
	        },
	        eventResizeStart: function () {
	            tooltip.hide()
	        },
	        eventDragStart: function () {
	            tooltip.hide()
	        },
	        viewDisplay: function () {
	            tooltip.hide()
	        },
	       
	});
});
</script>
</body>
</html>