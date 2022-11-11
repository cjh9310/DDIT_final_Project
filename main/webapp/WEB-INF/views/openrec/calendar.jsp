<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="openRecList" value="${dataMap.openRecList }" />

<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.js'></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/locales-all.js'></script>

<style>
.careers-new {
   
}

.careers-new p {
   margin: 0;
   padding: 0;
}

.careers-new .border {
   position: relative;
   border: 1px solid #d3dee8;
}

.careers-new .border:before, .careers-new .border:after {
   content: '';
   display: table;
}

.careers-new .border:after {
   clear: both;
}

.careers-new .border:before {
   content: '';
   display: block;
   position: absolute;
   left: 780px;
   top: 0;
   width: 1px;
   height: 100%;
   background-color: #d3dee8;
}

.careers-new .border .left {
   float: left;
   width: 780px;
   padding: 30px;
}

.careers-new .border .left .title-area {
   
}

.careers-new .border .left .title-area .tit {
   display: inline-block;
   line-height: 1.5;
   font-size: 1.5174em;
   font-weight: 700;
}

.careers-new .border .left .title-area .d-day {
   display: inline-block;
   height: 32px;
   padding: 0 12px;
   color: #ab6152;
   border: 1px solid #fead71;
   border-radius: 16px;
   font-size: 1.1429em;
   font-weight: 700;
   line-height: 32px;
} /* 고대비 작업 */
.careers-new .border .left .info {
   display: table;
   width: 100%;
   table-layout: fixed;
}

.careers-new .border .left .info .column {
   display: table-cell;
   width: 50%;
   margin: 0;
   padding: 50px 0 0 0;
   vertical-align: top;
}

.careers-new .border .left .info .column .tit {
   display: inline-block;
   margin: 0;
   padding: 0;
   line-height: 2.5;
   font-size: 1.071em;
   color: #333;
   font-weight: 700;
   border-bottom: 2px solid #333;
}

.careers-new .border .left .info .column .cont {
   padding: 10px 0 0 0;
}

.careers-new .border .left .info .column .cont ul {
   padding : 0 0 0 20px;
}

.careers-new .border .left .info .column .cont ul li {
   position: relative;
   padding: 0 0 0 70px;
}

.careers-new .border .left .info .column .cont ul li strong {
   display: block;
   position: absolute;
   left: 0;
}

.careers-new .border .left .info .column .cont ul li span {
   display: block;
}

.careers-new .border .left .info .column .cont ul li.full {
   position: relative;
   padding: 0;
}

.careers-new .border .left .info .column .cont ul li em {
   display: inline-block;
   position: relative;
   margin: 0 6px 0 0;
   padding: 0 8px 0 0;
   vertical-align: top;
}

.careers-new .border .left .info .column .cont ul li em:after {
   content: '';
   display: block;
   position: absolute;
   right: 0;
   top: 50%;
   width: 1px;
   height: 14px;
   margin: -7px 0 0 0;
   background-color: #ccc;
}

.careers-new .border .right {
   float: right;
   width: calc(100% - 780px);
   padding: 19px 30px 0 30px;
}

.careers-new .border .logo-company {
   margin: 0;
   padding: 0;
}

.careers-new .border .logo-company .img {
   height: 80px;
   margin: 0;
   padding: 0;
   text-align: center;
   font-size: 0;
   line-height: 0;
   line-height: 80px;
   background-color: #fff;
}

.careers-new .border .logo-company .img img {
   max-width: 100% !important;
   max-height: 80px !important;
}

.careers-new .border .logo-company .txt {
   margin: 0;
   padding: 20px 0;
   font-size: 1.071em;
   font-weight: 700;
   line-height: 1.5;
   text-align: center;
}

.careers-new .border .small-hidden {
   padding: 10px 0 0;
   text-align: center;
}

.careers-new .border .small-hidden .box {
   position: relative;
   display: inline-block;
   width: 132px;
   vertical-align: top;
}

.careers-new .border .small-hidden .box .btn {
   display: block;
   width: 100%;
   height: 28px;
   margin: 0;
   padding: 0 24px 0 7px;
   border: 0;
   background-color: transparent;
   color: #333;
   font-weight: 700;
   letter-spacing: -1px;
   text-align: left;
}

.careers-new .border .small-hidden .box ul {
   display: none;
   position: absolute;
   left: 0;
   top: 28px;
   z-index: 2;
   width: 100%;
   margin: 0;
   padding: 3px 0;
   border: 1px solid #000;
   border-width: 0 1px 1px 1px;
   border-radius: 0 0 4px 4px;
   text-align: left;
   background-color: #fff;
}

.careers-new .border .small-hidden .box ul li {
   padding: 4px 7px;
   line-height: 1.2;
}

.careers-new .border .small-hidden .box.green {
   background:
      url('../images/careers/bg-small-hidden-toggle-green-plus.png')
      no-repeat 0 0;
}

.careers-new .border .small-hidden .box.green ul {
   border-color: #a3d57a;
}

.careers-new .border .small-hidden .box.blue {
   background:
      url('../images/careers/bg-small-hidden-toggle-blue-plus.png')
      no-repeat 0 0;
}

.careers-new .border .small-hidden .box.blue ul {
   border-color: #7fcde6;
}

.careers-new .border .small-hidden .box.on ul {
   display: block;
}

.careers-new .border .small-hidden .box.green.on {
   background:
      url('../images/careers/bg-small-hidden-toggle-green-minus.png')
      no-repeat 0 0;
}

.careers-new .border .small-hidden .box.blue.on {
   background:
      url('../images/careers/bg-small-hidden-toggle-blue-minus.png')
      no-repeat 0 0;
}

.careers-new .border .right .info {
   padding-top: 15px;
}

.careers-new .border .right .info ul {
   
}

.careers-new .border .right .info ul li {
   position: relative;
   margin: 10px 0 0 0;
   padding: 0 0 0 70px;
}

.careers-new .border .right .info ul li:first-child {
   margin-top: 0;
}

.careers-new .border .right .info ul li strong {
   display: block;
   position: absolute;
   left: 0;
}

.careers-new .border .right .info ul li span {
   display: block;
}

.careers-new .border .right .btn {
   padding: 20px 0 30px 0;
   text-align: center;
}

.careers-new .border .right .btn .button {
   margin: 0 4px;
}

.btn-group {
   padding: 30px 0 0 0;
   position: relative;
   text-align: right;
}

.btn-group:before, .btn-group:after {
   content: '';
   display: table;
}

.btn-group:after {
   clear: both;
}

.btn-group .left {
   float: left;
}

.btn-group .right {
   float: right;
}

.btn-group .button {
   
}

.btn-group .button+.button {
   margin: 0 0 0 5px;
}

.btn-group.center {
   text-align: center;
}

.btn-group.center .button, .btn-group.a-c .button {
   margin: 0 3px 0 2px;
}

.btn-group.default .button {
   height: auto;
   padding: 10px 20px;
   line-height: 1.3
}

.btn-group.default .button+.button {
   margin-left: 10px
}

.btn-group .pagination {
   position: absolute;
   top: 0;
   left: 50%;
   transform: translateX(-50%);
}

.button.blue {
   color: #fff;
   border-color: #3683c3 !important;
   background-color: #3683c3 !important;
}

.button.blue:hover, .button.blue:focus {
   color: #fff;
   background-color: #3683c3 !important;
}

#button-submit {
   width: calc(100% - 200px);
   margin: auto;
}

#btnSubmit {
   width: 100px;
   margin: auto;
   display: table-cell;
   vertical-align: middle;
}
</style>

<script>	
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			timeZone: 'local',
			dayMaxEventRows: true,
			views: {
			    timeGrid: {
			        dayMaxEventRows: 5
			    }
			},
			events : [
				<c:forEach var="items" items="${openRecList}">
					{
						title: '${items.openTitle}',
	                    start: '2022-10-25'
					},
				</c:forEach>
            ],
            eventDisplay : 'block',
            eventClick : function(info) {
            	$('#exampleModalCenter').modal('show');
            }
		});
		calendar.render();
	});

	$('#myCollapsible').collapse({
		toggle : false
	});
</script>

<main id="js-page-content" role="main" class="page-content">
	<div class="row">
		<div class="col-xl-12">
			<!--Backgrounds-->
			<div id="panel-6" class="panel">
				<div class="panel-container show">
					<div class="demo-v-spacing">
						<ol class="breadcrumb bg-primary-300">
							<li class="breadcrumb-item text-white"><a
								class="text-white"> <i class="fal fa-home mr-1"></i> 공채
							</a></li>
							<li class="breadcrumb-item text-white"><a
								class="text-white">공개채용일정 달력</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id='calendar'></div>
	
	<div id="exampleModalCenter" class="modal fade" tabindex="-1"
		role="dialog"
		aria-modal="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="card-body">
					<div id="panel-2" class="panel">
						<div class="panel-hdr">
							<h2>
								<b>채용공고 상세검색</b> <span class="fw-300"></span>
							</h2>
							<div class="panel-toolbar">
								<button class="btn btn-panel waves-effect waves-themed"
									data-action="panel-collapse" data-toggle="" data-offset="0,10"
									data-original-title="Collapse"></button>
								<button class="btn btn-panel waves-effect waves-themed" id = "myCollapsible"
									data-action="panel-fullscreen" data-toggle="" data-offset="0,10"
									data-original-title="Fullscreen"></button>
								<button class="btn btn-panel waves-effect waves-themed"
									data-action="panel-close" data-toggle="" data-offset="0,10"
									data-original-title="Close"></button>
							</div>
						</div>
						<div class="modal-header">
							<ul class="nav nav-tabs card-header-tabs">
								<li class="nav-item"><a class="nav-link show active" data-toggle="tab" href="#A">채용정보</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#B" data-toggle="tab"
									tabindex="-1" aria-disabled="true">연봉정보</a></li>
							</ul>
						</div>
						<div class="tab-content">
						
						<div id="A" class="card-header p-0 tab-pane fade show active">
							<div class="row">
								<div class="col-xl-12">
	
									<div class="careers-new">
										<!-- border -->
										<div class="border">
											<div class="left">
												<div class="title-area">
													<p class="tit">&lt;2022 연수 일자리 한마당&gt; 간접 참여 업체 / 안내방송</p>
	
												</div>
												<div>
													<h5>모집기간 : 2022/10/10 ~ 2022/10/11</h5>
												</div>
												<div class="info">
													<div class="column">
														<p class="tit">지원자격</p>
	
														<div class="cont">
															<ul>
																<li><strong>경력</strong> <span> 관계없음 </span></li>
																<li><strong>학력</strong> <span> 고졸 ~ 대졸(4년) </span></li>
															</ul>
														</div>
													</div>
													<div class="column">
														<p class="tit">근무조건</p>
	
														<div class="cont">
															<ul>
																<li><strong>지역</strong> <span>인천광역시 연수구 청능대로
																		210, 스퀘어원 (동춘동)</span></li>
																<li><strong>임금</strong> <span> 월급 195만원 ~
																		195만원 </span></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="info">
													<div class="column">
														<p class="tit">고용형태</p>
														<div class="cont">
															<ul>
																<li><strong>고용형태</strong> <span>기간의 정함이 있는
																		근로계약 </span></li>
																<li><strong>근무형태</strong> <span>주 6일 근무</span></li>
															</ul>
														</div>
													</div>
													<div class="column">
														<p class="tit">복리후생</p>
	
														<div class="cont">
															<ul>
																<li class="full"><em>통근버스제공</em></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="right">
												<div class="logo-company">
													<div class="img">
														<img id="logoImg" alt="등록된 사진이 없습니다" width="200"
															height="64" src="/images/common/none_imglogo.gif">
													</div>
													<div class="info">
														<ul>
															<li><strong>기업명</strong>
																<div>(주)맥서브</div></li>
															<li><strong>업종</strong>
																<div>건축물 일반 청소업</div></li>
															<li><strong>기업규모</strong>
																<div>중견기업</div></li>
															<li><strong>설립년도</strong>
																<div>1974.01.18&nbsp;</div></li>
															<li><strong>연매출액</strong>
																<div>&nbsp;</div></li>
															<li><strong>홈페이지</strong>
																<div>-</div></li>
															<li><strong>근로자수</strong>
																<div>46 명</div></li>
														</ul>
													</div>
													<!--// info -->
												</div>
											</div>
										</div>
									</div>
									<!-- border -->
									<div class="border">
										<div class="left">
											<div>
												<h3>직무내용</h3>
											</div>
											<div class="info">
												<ul>
													<div>(주)맥서브</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="B" class="card-header p-0 tab-pane fade">
							<div class="row">
								<div class="col-xl-12">
	
									<div class="careers-new">
										<!-- border -->
										<div class="border">
											<div class="left">
												<div class="title-area">
													<p class="tit">&lt;2022 연수 일자리 한마당&gt; 간접 참여 업체 / 안내방송</p>
	
												</div>
												<div>
													<h5>모집기간 : 2022/10/15 ~ 2022/10/1116</h5>
												</div>
												<div class="info">
													<div class="column">
														<p class="tit">지원자격</p>
	
														<div class="cont">
															<ul>
																<li><strong>경력</strong> <span> 관계없음 </span></li>
																<li><strong>학력</strong> <span> 고졸 ~ 대졸(4년) </span></li>
															</ul>
														</div>
													</div>
													<div class="column">
														<p class="tit">근무조건</p>
	
														<div class="cont">
															<ul>
																<li><strong>지역</strong> <span>인천광역시 연수구 청능대로
																		210, 스퀘어원 (동춘동)</span></li>
																<li><strong>임금</strong> <span> 월급 195만원 ~
																		195만원 </span></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="info">
													<div class="column">
														<p class="tit">고용형태</p>
														<div class="cont">
															<ul>
																<li><strong>고용형태</strong> <span>기간의 정함이 있는
																		근로계약 </span></li>
																<li><strong>근무형태</strong> <span>주 6일 근무</span></li>
															</ul>
														</div>
													</div>
													<div class="column">
														<p class="tit">복리후생</p>
	
														<div class="cont">
															<ul>
																<li class="full"><em>통근버스제공</em></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="right">
												<div class="logo-company">
													<div class="img">
														<img id="logoImg" alt="등록된 사진이 없습니다" width="200"
															height="64" src="/images/common/none_imglogo.gif">
													</div>
													<div class="info">
														<ul>
															<li><strong>기업명</strong>
																<div>(주)맥서브</div></li>
															<li><strong>업종</strong>
																<div>건축물 일반 청소업</div></li>
															<li><strong>기업규모</strong>
																<div>중견기업</div></li>
															<li><strong>설립년도</strong>
																<div>1974.01.18&nbsp;</div></li>
															<li><strong>연매출액</strong>
																<div>&nbsp;</div></li>
															<li><strong>홈페이지</strong>
																<div>-</div></li>
															<li><strong>근로자수</strong>
																<div>46 명</div></li>
														</ul>
													</div>
													<!--// info -->
												</div>
											</div>
										</div>
									</div>
									<!-- border -->
									<div class="border">
										<div class="left">
											<div>
												<h3>직무내용</h3>
											</div>
											<div class="info">
												<ul>
													<div>(주)맥서브</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>



