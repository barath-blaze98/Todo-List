<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script src='https://www.jqueryscript.net/demo/Full-Size-Drag-Drop-Calendar-Plugin-FullCalendar/fullcalendar.min.js'></script>

<title>Insert title here</title>
</head>
<body>
	<div id="container" class="fc fc-unthemed fc-ltr">
		<div class="fc-toolbar fc-header-toolbar">
			<div class="fc-left">
				<div class="fc-button-group">
					<button type="button"
						class="fc-prev-button fc-button fc-state-default fc-corner-left"
						aria-label="prev">
						<span class="fc-icon fc-icon-left-single-arrow"></span>
					</button>
					<button type="button"
						class="fc-next-button fc-button fc-state-default fc-corner-right"
						aria-label="next">
						<span class="fc-icon fc-icon-right-single-arrow"></span>
					</button>
				</div>
				<button type="button"
					class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled"
					disabled="false">today</button>
			</div>
			<div class="fc-right">
				<div class="fc-button-group">
					<button type="button"
						class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button>
					<button type="button"
						class="fc-agendaWeek-button fc-button fc-state-default">week</button>
					<button type="button"
						class="fc-agendaDay-button fc-button fc-state-default">day</button>
					<button type="button"
						class="fc-listWeek-button fc-button fc-state-default fc-corner-right">list</button>
				</div>
			</div>
			<div class="fc-center">
				<h2>November 2019</h2>
			</div>
			<div class="fc-clear"></div>
		</div>
		<div class="fc-view-container" style="">
			<div class="fc-view fc-month-view fc-basic-view" style="">
				<table class="">
					<thead class="fc-head">
						<tr>
							<td class="fc-head-container fc-widget-header"><div
									class="fc-row fc-widget-header">
									<table class="">
										<thead>
											<tr>
												<th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th>
												<th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th>
												<th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th>
												<th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th>
												<th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th>
												<th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th>
												<th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th>
											</tr>
										</thead>
									</table>
								</div></td>
						</tr>
					</thead>
					<tbody class="fc-body">
						<tr>
							<td class="fc-widget-content"><div
									class="fc-scroller fc-day-grid-container"
									style="overflow: hidden; height: 693px;">
									<div class="fc-day-grid fc-unselectable">
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 115px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td
																class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																data-date="2019-10-27"></td>
															<td
																class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																data-date="2019-10-28"></td>
															<td
																class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																data-date="2019-10-29"></td>
															<td
																class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
																data-date="2019-10-30"></td>
															<td
																class="fc-day fc-widget-content fc-thu fc-other-month fc-past"
																data-date="2019-10-31"></td>
															<td class="fc-day fc-widget-content fc-fri fc-past"
																data-date="2019-11-01"></td>
															<td class="fc-day fc-widget-content fc-sat fc-past"
																data-date="2019-11-02"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-other-month fc-past"
																data-date="2019-10-27"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-10-27&quot;,&quot;type&quot;:&quot;day&quot;}">27</a></td>
															<td class="fc-day-top fc-mon fc-other-month fc-past"
																data-date="2019-10-28"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-10-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td>
															<td class="fc-day-top fc-tue fc-other-month fc-past"
																data-date="2019-10-29"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-10-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td>
															<td class="fc-day-top fc-wed fc-other-month fc-past"
																data-date="2019-10-30"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-10-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td>
															<td class="fc-day-top fc-thu fc-other-month fc-past"
																data-date="2019-10-31"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-10-31&quot;,&quot;type&quot;:&quot;day&quot;}">31</a></td>
															<td class="fc-day-top fc-fri fc-past"
																data-date="2019-11-01"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td>
															<td class="fc-day-top fc-sat fc-past"
																data-date="2019-11-02"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 115px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td class="fc-day fc-widget-content fc-sun fc-past"
																data-date="2019-11-03"></td>
															<td class="fc-day fc-widget-content fc-mon fc-past"
																data-date="2019-11-04"></td>
															<td class="fc-day fc-widget-content fc-tue fc-past"
																data-date="2019-11-05"></td>
															<td class="fc-day fc-widget-content fc-wed fc-past"
																data-date="2019-11-06"></td>
															<td class="fc-day fc-widget-content fc-thu fc-past"
																data-date="2019-11-07"></td>
															<td class="fc-day fc-widget-content fc-fri fc-past"
																data-date="2019-11-08"></td>
															<td class="fc-day fc-widget-content fc-sat fc-past"
																data-date="2019-11-09"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-past"
																data-date="2019-11-03"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td>
															<td class="fc-day-top fc-mon fc-past"
																data-date="2019-11-04"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td>
															<td class="fc-day-top fc-tue fc-past"
																data-date="2019-11-05"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td>
															<td class="fc-day-top fc-wed fc-past"
																data-date="2019-11-06"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td>
															<td class="fc-day-top fc-thu fc-past"
																data-date="2019-11-07"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td>
															<td class="fc-day-top fc-fri fc-past"
																data-date="2019-11-08"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-08&quot;,&quot;type&quot;:&quot;day&quot;}">8</a></td>
															<td class="fc-day-top fc-sat fc-past"
																data-date="2019-11-09"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-09&quot;,&quot;type&quot;:&quot;day&quot;}">9</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 115px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td class="fc-day fc-widget-content fc-sun fc-past"
																data-date="2019-11-10"></td>
															<td class="fc-day fc-widget-content fc-mon fc-past"
																data-date="2019-11-11"></td>
															<td class="fc-day fc-widget-content fc-tue fc-past"
																data-date="2019-11-12"></td>
															<td class="fc-day fc-widget-content fc-wed fc-past"
																data-date="2019-11-13"></td>
															<td class="fc-day fc-widget-content fc-thu fc-past"
																data-date="2019-11-14"></td>
															<td class="fc-day fc-widget-content fc-fri fc-past"
																data-date="2019-11-15"></td>
															<td class="fc-day fc-widget-content fc-sat fc-past"
																data-date="2019-11-16"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-past"
																data-date="2019-11-10"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-10&quot;,&quot;type&quot;:&quot;day&quot;}">10</a></td>
															<td class="fc-day-top fc-mon fc-past"
																data-date="2019-11-11"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-11&quot;,&quot;type&quot;:&quot;day&quot;}">11</a></td>
															<td class="fc-day-top fc-tue fc-past"
																data-date="2019-11-12"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-12&quot;,&quot;type&quot;:&quot;day&quot;}">12</a></td>
															<td class="fc-day-top fc-wed fc-past"
																data-date="2019-11-13"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-13&quot;,&quot;type&quot;:&quot;day&quot;}">13</a></td>
															<td class="fc-day-top fc-thu fc-past"
																data-date="2019-11-14"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-14&quot;,&quot;type&quot;:&quot;day&quot;}">14</a></td>
															<td class="fc-day-top fc-fri fc-past"
																data-date="2019-11-15"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-15&quot;,&quot;type&quot;:&quot;day&quot;}">15</a></td>
															<td class="fc-day-top fc-sat fc-past"
																data-date="2019-11-16"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-16&quot;,&quot;type&quot;:&quot;day&quot;}">16</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 115px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td class="fc-day fc-widget-content fc-sun fc-past"
																data-date="2019-11-17"></td>
															<td class="fc-day fc-widget-content fc-mon fc-past"
																data-date="2019-11-18"></td>
															<td class="fc-day fc-widget-content fc-tue fc-past"
																data-date="2019-11-19"></td>
															<td class="fc-day fc-widget-content fc-wed fc-past"
																data-date="2019-11-20"></td>
															<td class="fc-day fc-widget-content fc-thu fc-past"
																data-date="2019-11-21"></td>
															<td class="fc-day fc-widget-content fc-fri fc-past"
																data-date="2019-11-22"></td>
															<td class="fc-day fc-widget-content fc-sat fc-past"
																data-date="2019-11-23"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-past"
																data-date="2019-11-17"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-17&quot;,&quot;type&quot;:&quot;day&quot;}">17</a></td>
															<td class="fc-day-top fc-mon fc-past"
																data-date="2019-11-18"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-18&quot;,&quot;type&quot;:&quot;day&quot;}">18</a></td>
															<td class="fc-day-top fc-tue fc-past"
																data-date="2019-11-19"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-19&quot;,&quot;type&quot;:&quot;day&quot;}">19</a></td>
															<td class="fc-day-top fc-wed fc-past"
																data-date="2019-11-20"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-20&quot;,&quot;type&quot;:&quot;day&quot;}">20</a></td>
															<td class="fc-day-top fc-thu fc-past"
																data-date="2019-11-21"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-21&quot;,&quot;type&quot;:&quot;day&quot;}">21</a></td>
															<td class="fc-day-top fc-fri fc-past"
																data-date="2019-11-22"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-22&quot;,&quot;type&quot;:&quot;day&quot;}">22</a></td>
															<td class="fc-day-top fc-sat fc-past"
																data-date="2019-11-23"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-23&quot;,&quot;type&quot;:&quot;day&quot;}">23</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 115px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td class="fc-day fc-widget-content fc-sun fc-past"
																data-date="2019-11-24"></td>
															<td class="fc-day fc-widget-content fc-mon fc-past"
																data-date="2019-11-25"></td>
															<td class="fc-day fc-widget-content fc-tue fc-past"
																data-date="2019-11-26"></td>
															<td class="fc-day fc-widget-content fc-wed fc-past"
																data-date="2019-11-27"></td>
															<td class="fc-day fc-widget-content fc-thu fc-today "
																data-date="2019-11-28"></td>
															<td class="fc-day fc-widget-content fc-fri fc-future"
																data-date="2019-11-29"></td>
															<td class="fc-day fc-widget-content fc-sat fc-future"
																data-date="2019-11-30"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-past"
																data-date="2019-11-24"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-24&quot;,&quot;type&quot;:&quot;day&quot;}">24</a></td>
															<td class="fc-day-top fc-mon fc-past"
																data-date="2019-11-25"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-25&quot;,&quot;type&quot;:&quot;day&quot;}">25</a></td>
															<td class="fc-day-top fc-tue fc-past"
																data-date="2019-11-26"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-26&quot;,&quot;type&quot;:&quot;day&quot;}">26</a></td>
															<td class="fc-day-top fc-wed fc-past"
																data-date="2019-11-27"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-27&quot;,&quot;type&quot;:&quot;day&quot;}">27</a></td>
															<td class="fc-day-top fc-thu fc-today "
																data-date="2019-11-28"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td>
															<td class="fc-day-top fc-fri fc-future"
																data-date="2019-11-29"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td>
															<td class="fc-day-top fc-sat fc-future"
																data-date="2019-11-30"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-11-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td class="fc-event-container"><a
																class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																<div class="fc-content">
																<c:forEach items="${todo}" var="todo">
																
																		 <span class="fc-title">${todo.description}
																			</span> 
																			
																			</c:forEach>
																	</div></a></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="fc-row fc-week fc-widget-content fc-rigid"
											style="height: 118px;">
											<div class="fc-bg">
												<table class="">
													<tbody>
														<tr>
															<td
																class="fc-day fc-widget-content fc-sun fc-other-month fc-future"
																data-date="2019-12-01"></td>
															<td
																class="fc-day fc-widget-content fc-mon fc-other-month fc-future"
																data-date="2019-12-02"></td>
															<td
																class="fc-day fc-widget-content fc-tue fc-other-month fc-future"
																data-date="2019-12-03"></td>
															<td
																class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																data-date="2019-12-04"></td>
															<td
																class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																data-date="2019-12-05"></td>
															<td
																class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																data-date="2019-12-06"></td>
															<td
																class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																data-date="2019-12-07"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="fc-content-skeleton">
												<table>
													<thead>
														<tr>
															<td class="fc-day-top fc-sun fc-other-month fc-future"
																data-date="2019-12-01"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td>
															<td class="fc-day-top fc-mon fc-other-month fc-future"
																data-date="2019-12-02"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td>
															<td class="fc-day-top fc-tue fc-other-month fc-future"
																data-date="2019-12-03"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td>
															<td class="fc-day-top fc-wed fc-other-month fc-future"
																data-date="2019-12-04"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td>
															<td class="fc-day-top fc-thu fc-other-month fc-future"
																data-date="2019-12-05"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td>
															<td class="fc-day-top fc-fri fc-other-month fc-future"
																data-date="2019-12-06"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td>
															<td class="fc-day-top fc-sat fc-other-month fc-future"
																data-date="2019-12-07"><a class="fc-day-number"
																data-goto="{&quot;date&quot;:&quot;2019-12-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>