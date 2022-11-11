<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="js-page-content" role="main" class="page-content">
<div class="alert alert-primary">
	<div id="ai2panel" class="d-flex flex-start w-100">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">고용동향 예측</span>
				<p>
					<code>경제활동참가율</code>
					<code>고용률</code>
					<code>실업률</code>
				</p>
				<a href="javascript:ai2_submit();" class="btn btn-sm btn-outline-primary" >
								AI의 고용동향 예측</a>
			</div>
		</div>
				<div class="subheader-block d-none d-sm-flex align-items-center">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>Economic activity</small>
				</span> <span class="fw-500 fs-xl d-block color-info-500">경제활동참가율</span>
			</div>
			<span
				class="js-easy-pie-chart color-primary-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="62.7" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
		<div
			class="subheader-block d-none d-sm-flex align-items-center border-faded border-right-0 border-top-0 border-bottom-0 ml-3 pl-3">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>Employment rate</small>
				</span> <span class="fw-500 fs-xl d-block color-danger-500">고용률
				</span>
			</div>
			<span
				class="js-easy-pie-chart color-danger-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="61.2" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
		<div
			class="subheader-block d-none d-sm-flex align-items-center border-faded border-right-0 border-top-0 border-bottom-0 ml-3 pl-3">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>Unemployment rate</small>
				</span> <span class="fw-500 fs-xl d-block color-danger-500">실업률
				</span>
			</div>
			<span
				class="js-easy-pie-chart color-danger-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="2.4" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xl-12">
		<div class="row">
			<div class="col-xl-6">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>
							Line <span class="fw-300"><i>Chart</i></span>
						</h2>
						<div class="panel-toolbar">
							<button class="btn btn-panel" data-action="panel-collapse"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Collapse"></button>
							<button class="btn btn-panel" data-action="panel-fullscreen"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Fullscreen"></button>
							<button class="btn btn-panel" data-action="panel-close"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Close"></button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="panel-tag">The line chart requires an array of
								labels for each of the data points. This is shown on the X axis.
								It has a colour for the fill, a colour for the line and colours
								for the points and strokes of the points</div>
							<div id="lineChart">
								<canvas style="width: 100%; height: 300px;"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-6">
				<div id="panel-7" class="panel">
					<div class="panel-hdr">
						<h2>
							Area <span class="fw-300"><i>Chart</i></span>
						</h2>
						<div class="panel-toolbar">
							<button class="btn btn-panel" data-action="panel-collapse"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Collapse"></button>
							<button class="btn btn-panel" data-action="panel-fullscreen"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Fullscreen"></button>
							<button class="btn btn-panel" data-action="panel-close"
								data-toggle="tooltip" data-offset="0,10"
								data-original-title="Close"></button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="panel-tag">An area chart or area graph displays
								graphically quantitative data. It is based on the line chart.
								The area between axis and line are commonly emphasized with
								colors, textures and hatchings</div>
							<div id="areaChart">
								<canvas style="width: 100%; height: 300px;"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="alert alert-primary">
	<div class="d-flex flex-start w-100">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">About</span>
				<p>
					Easy Pie Charts
					<code>requestAnimationFrame</code>
				</p>
				<p class="m-0">Find in-depth, guidelines, tutorials and more on
					Easy Pie Chart's</p>
			</div>
		</div>
	</div>
</div>
</main>
<script>
	/* line chart */
	var lineChart = function() {
		var config = {
			type : 'line',
			data : {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July" ],
				datasets : [ {
					label : "Success",
					borderColor : color.success._500,
					pointBackgroundColor : color.success._700,
					pointBorderColor : 'rgba(0, 0, 0, 0)',
					pointBorderWidth : 1,
					borderWidth : 1,
					pointRadius : 3,
					pointHoverRadius : 4,
					data : [ 23, 75, 60, -48, -9, 26, 45 ],
					fill : false
				} ]
			},
			options : {
				responsive : true,
				title : {
					display : false,
					text : 'Line Chart'
				},
				tooltips : {
					mode : 'index',
					intersect : false,
				},
				hover : {
					mode : 'nearest',
					intersect : true
				},
				scales : {
					xAxes : [ {
						display : true,
						scaleLabel : {
							display : false,
							labelString : '6 months forecast'
						},
						gridLines : {
							display : true,
							color : "#f2f2f2"
						},
						ticks : {
							beginAtZero : true,
							fontSize : 11
						}
					} ],
					yAxes : [ {
						display : true,
						scaleLabel : {
							display : false,
							labelString : 'Profit margin (approx)'
						},
						gridLines : {
							display : true,
							color : "#f2f2f2"
						},
						ticks : {
							beginAtZero : true,
							fontSize : 11
						}
					} ]
				}
			}
		};
		new Chart($("#lineChart > canvas").get(0).getContext("2d"), config);
	}
	/* line chart -- end */

	/* area chart */
	var areaChart = function() {
		var config = {
			type : 'line',
			data : {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July" ],
				datasets : [ {
					label : "Primary",
					backgroundColor : 'rgba(136,106,181, 0.2)',
					borderColor : color.primary._500,
					pointBackgroundColor : color.primary._700,
					pointBorderColor : 'rgba(0, 0, 0, 0)',
					pointBorderWidth : 1,
					borderWidth : 1,
					pointRadius : 3,
					pointHoverRadius : 4,
					data : [ 45, 75, 26, 23, 60, -48, -9 ],
					fill : true
				}, {
					label : "Success",
					backgroundColor : 'rgba(29,201,183, 0.2)',
					borderColor : color.success._500,
					pointBackgroundColor : color.success._700,
					pointBorderColor : 'rgba(0, 0, 0, 0)',
					pointBorderWidth : 1,
					borderWidth : 1,
					pointRadius : 3,
					pointHoverRadius : 4,
					data : [ -10, 16, 72, 93, 29, -74, 64 ],
					fill : true
				} ]
			},
			options : {
				responsive : true,
				title : {
					display : false,
					text : 'Area Chart'
				},
				tooltips : {
					mode : 'index',
					intersect : false,
				},
				hover : {
					mode : 'nearest',
					intersect : true
				},
				scales : {
					xAxes : [ {
						display : true,
						scaleLabel : {
							display : false,
							labelString : '6 months forecast'
						},
						gridLines : {
							display : true,
							color : "#f2f2f2"
						},
						ticks : {
							beginAtZero : true,
							fontSize : 11
						}
					} ],
					yAxes : [ {
						display : true,
						scaleLabel : {
							display : false,
							labelString : 'Profit margin (approx)'
						},
						gridLines : {
							display : true,
							color : "#f2f2f2"
						},
						ticks : {
							beginAtZero : true,
							fontSize : 11
						}
					} ]
				}
			}
		};
		new Chart($("#areaChart > canvas").get(0).getContext("2d"), config);
	}
	/* area chart -- end */
</script>
<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp"%>
