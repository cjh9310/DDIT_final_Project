<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="openRecList" value="${openRecMap.openRecList}" />
<c:set var="recruitList" value="${recruitMap.recruitList}" />
<c:set var="contestList" value="${contestMap.contestList}" />

<style>
.panel-conteiner {
	height: 100%;
}

.panel-content {
	width: 100%;
	height: 280px;
	overflow: hidden;
}

.cardMargin {
	margin: 0px;
} 

div {
	width: auto;
	height: 100%;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="col-xl-12">
		<div class="row">
			<div class="col-xl-7">
				<div id="panel-7" class="panel">
					<div class="panel-hdr">
						<h2>
							채용정보 <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar pr-3 align-self-end">
							<ul id="nav nav-tabs" class="nav nav-tabs border-bottom-0"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tab_openrec" role="tab"
									aria-selected="true"> 공채정보&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/openrec/list.do'" 
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab_recruit" role="tab" aria-selected="false">
										일반채용공고&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/recruit/list.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="panel-content tab-content p-3">
						<div class="tab-pane fade show active" id="tab_openrec"
							role="tabpanel">
							<div class="row cardMargin">
								<div class="col-xl-9 panel" style="padding: 0px;">
									<div class="custom-scroll">
										<div>
											<table class="table table-sm table-hover table-striped w-100">
												<tbody>
													<c:if test="${empty openRecList}">
														<tr>
															<td class="text-center fw-700" colspan="2">등록된 공채
																정보가 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach items="${openRecList}" var="openRec"
														varStatus="status">
														<tr>
															<td>${openRec.openConm}</td>
															<td>${openRec.openTitle}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-xl-3" style="padding: 0px;">
									<div id="carouselExampleInterval" style="padding: 0px;"
										class="carousel slide" data-ride="carousel">
										<div class="carousel-inner">
											<c:forEach items="${openRecList}" var="openRec"
												varStatus="status">
												<c:choose>
													<c:when test="${status.first}">
														<div class="carousel-item active" data-interval="2000">
													</c:when>
													<c:otherwise>
														<div class="carousel-item" data-interval="2000">
													</c:otherwise>
												</c:choose>
												<div class="card border m-auto m-lg-0">
													<img src="${openRec.openLogo}" class="card-img-top"
														alt="...">
													<div class="card-body">
														<h5 class="card-title fw-700">${openRec.openConm}</h5>
														<p class="card-text">${openRec.openTitle}</p>
														<p class="card-text">${openRec.openEdate}까지</p>
														<p class="card-text">${openRec.openCarnm}
															${openRec.openEdunm}</p>
														<p class="card-text">${openRec.openRegion}</p>
														<a href="" class="card-link fw-700">${openRec.openConm}
															지원하러가기</a>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="tab_recruit" role="tabpanel">
						<div class="row cardMargin">
							<div class="col-xl-9 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										<table class="table table-sm table-hover table-striped w-100">
											<tbody>
												<c:if test="${empty recruitList}">
													<tr>
														<td class="text-center fw-700" colspan="2">등록된 채용공고가
															없습니다.</td>
													</tr>
												</c:if>
												<c:forEach items="${recruitList}" var="recruit"
													varStatus="status">
													<tr>
														<td>${recruit.coName}</td>
														<td>${recruit.recWantedtitle}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="col-xl-3" style="padding: 0px;">
								<div id="carouselExampleInterval" style="padding: 0px;"
									class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<c:forEach items="${recruitList}" var="recruit"
											varStatus="status">
											<c:choose>
												<c:when test="${status.first}">
													<div class="carousel-item active" data-interval="2000">
												</c:when>
												<c:otherwise>
													<div class="carousel-item" data-interval="2000">
												</c:otherwise>
											</c:choose>
											<div class="card border m-auto m-lg-0">
												<div class="card-body">
													<h5 class="card-title fw-700">${recruit.coName}</h5>
													<p class="card-text">
														<fmt:formatDate value="${recruit.recRegdt}" pattern="yyyy-MM-dd"/>
													</p>
													<p class="card-text">${recruit.recRegion}</p>
													<p class="card-text">${recruit.recWantedtitle}</p>
													<a href="" class="card-link fw-700">${recruit.coName}
													지원하러가기</a>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-5">
		<div id="panel-7" class="panel">
			<div class="panel-hdr">
				<h2>
					고용정보 통계 및 동향 <span class="fw-300"></span>
				</h2>
				<div class="panel-toolbar">
					<button onclick="location.href='<%=request.getContextPath()%>/recruit/empstats.do'"
						class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
						<i class="fal fa-plus"></i>
					</button>
				</div>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<div class="row cardMargin">
						<div class="col-xl-5">
							<div class="area_wrap">
								<div class="main_area_map">
									<svg xmlns="http://www.w3.org/2000/svg" width="367.124"
										height="465.999" viewBox="0 0 367.124 465.999">
							                                	<g id="map"
											transform="translate(0 36.999)">
							                                    	<g id="그룹_15251"
											data-name="그룹 15251" transform="translate(8 8)">
							                                        <path
											onclick="location.href='/equipment?mid=a10302000000&djAreaGuCds=E'"
											id="유성구"
											d="M3853.372,565.924l16.793-10.336,20.176-13.813,7.063-17.826a.684.684,0,0,1,.328-.358l5.164-2.582,4.683-18.06a.679.679,0,0,1,.658-.509h7.82v-10.2a.679.679,0,0,1,.187-.468l6.325-6.657.573-2.866-4.184-4.5a.682.682,0,0,1-.181-.463V466.062a.7.7,0,0,1,.02-.165l2.04-8.16a.68.68,0,0,1,1.06-.385l3.474,2.527,5.8-1.612a.681.681,0,0,1,.5.055l3.046,1.62h4.5l.261-4.038c-.514-1.544-1.1-3.192-1.7-4.888-2.006-5.655-4.279-12.063-4.662-16.845a.848.848,0,0,1,.08-.433,99.51,99.51,0,0,1,7.454-12.569c2.969-5.431,6.686-11.4,10.97-13.657a42.555,42.555,0,0,0,6.046-4.149c4-3.1,8.143-6.3,14.063-5.86a24.462,24.462,0,0,1,7.927-.353c.834.052,1.676.105,2.531.136a85.442,85.442,0,0,0,9.6-1.448l6.3-2.69c4.485-2.478,7.124-5.872,9.39-13.35.176-.581.336-1.178.483-1.785l1.35-10.976-.118-.769a45.244,45.244,0,0,1-.208-16.465c1.144-6.266,1.986-8.051,2.8-9.776a20.994,20.994,0,0,0,1.467-3.9c1.158-4.173-2.032-9.393-5.811-14.066l-.673-.527c-5-3.918-11.521-9.021-16.529-13.619-5.262-3.556-8.5-5.942-9.106-7.851a11.385,11.385,0,0,1-.348-4.644,7.555,7.555,0,0,1,.038-6.753c1.717-3.66,6.453-8.208,14.849-14.242l-.732-.8-3.4-18.359,3.739-21.079-20.059-20.4h-3.4l-11.9,13.6-11.22-1.7-4.362,8.652,9.689,15.554-3.569,6.629-7.395,4.59v22.948l-9.434,6.119-5.1,2.295-3.314,22.183-6.884,3.825-13.259,7.649h-4.59l-6.884,4.335-2.041-1.275V326.9l-5.609-.51V324.6l-9.689-.255-13.259,6.119v3.57l-8.159,3.06-5.018,39.522,1.7,10.2,1.53,2.55-1.53,16.574-1.7,3.825v3.06l-7.731,4.334,1.02,9.944,6.711,7.139-13.851,14.789v4.845l2.04,4.334-.255,2.295-8.924,5.865v4.079l2.04,1.53-3.06,7.9v7.139l-2.04,13.514,4.08,3.825-1.275,7.394-5.609,1.53L3814.8,521.7l3.825,13.769,37.737,26.263Z"
											transform="translate(-3822.803 -258.789)" fill="#FFA648" />
							                                        <g
											onclick="location.href='/equipment?mid=a10302000000&djAreaGuCds=D'"
											id="대덕구" transform="translate(-8 -45)">
							                                            <path id="패스_580"
											data-name="패스 580"
											d="M4835.763,1242.606c-2.578,2.738-8.044,4.462-12.93,5.506l-.4.145a22.567,22.567,0,0,1-2.624.766l-.225.1.522.18h0c-.021.061-1.634,4.863-.025,8.5.853,1.932,2.558,2.818,4.207,3.675,1.479.769,2.876,1.494,3.309,2.938.5,1.675,2.247,9.521,3.344,14.529V1275.2a.68.68,0,0,1,.35-.594l5.752-3.2Z"
											transform="translate(-4645.37 -1064.408)" fill="#FFA648" />
							                                            <path id="패스_582"
											data-name="패스 582"
											d="M4799.14,429.33c-2.417,1.693-8.289,5.952-11.162,9.3a18.123,18.123,0,0,0-3.988,8.139l3.335,6.92c.538.672,1.179,1.393,1.9,2.151l6.523,5.4c4.5,3.026,8.928,6.108,11.426,8.909.568.637,1.143,1.3,1.714,1.971l5.473,4.531a.676.676,0,0,1,.2.29l.105.287a9.9,9.9,0,0,1,3.029,8.261l.606,1.652a.68.68,0,0,1,0,.455l-3.717,10.813-1.485,12.077c0,.082-.319,2.7-.322,2.783-.1,2.283-.205,4.591-.364,6.873.21,1.424.388,2.815.466,4.246a30.341,30.341,0,0,1-3.354,15.177l-.031.251a.687.687,0,0,1-.067.221l-1.621,3.242,1.352,30.422a.68.68,0,0,1-.349.625l-5.771,3.206v7.276l7.363,2.561a.678.678,0,0,1,.359.292l3.578,5.961,6.188-7.736a.68.68,0,0,1,.531-.255h5.651l6.293-16.561a.679.679,0,0,1,.635-.438h7.819a.679.679,0,0,1,.575.317l7.89,12.492,5.633-1.565a.683.683,0,0,1,.182-.025h7.48a.686.686,0,0,1,.1.008l10.037,1.568-.952-13.645-14.307-31.166a.678.678,0,0,1,0-.564l4.019-8.868-3.993-7.181a.679.679,0,0,1-.075-.452l2.46-13.6a.679.679,0,0,1,.443-.52l11.392-4.021,11.715-13.388,11.518-25.746a.675.675,0,0,1,.117-.179l7.034-7.762.61-1.981-5.78-7.82-2.72.34-1.7,6.8-5.78,5.44-4.42,16.32-4.42-5.1,5.1-15.3,1.02-6.8h-7.819l4.42-10.54,9.859,2.72,3.74-5.44-6.8-7.82,6.46-26.859-9.18,1.7-6.459,7.14-4.42,17.68-16.319,13.6-12.24-2.04-8.16-8.5-28.559,3.06-9.488-1.02Z"
											transform="translate(-4616.12 -366.343)" fill="#FFA648" />
							                                        </g>
							                                        <path
											onclick="location.href='/equipment?mid=a10302000000&djAreaGuCds=A'"
											id="동구"
											d="M5071.021,789.067l-2.55-1.36-12.24,4.42-.34-8.5,3.4,1.53,5.271-1.7-1.021-4.93-8.329-8.67.611-3.478-2.65-.942-1.021-9.18-7.819.34,5.246-17.052-5.01,5.529-11.515,25.74a.709.709,0,0,1-.109.17l-11.9,13.6a.677.677,0,0,1-.286.193l-11.187,3.948-2.346,12.972,4.041,7.267a.681.681,0,0,1,.025.611l-4.031,8.9,14.229,31a.663.663,0,0,1,.061.236l1.02,14.62a.68.68,0,0,1-.783.719l-10.827-1.692h-7.334l-6.03,1.675a.68.68,0,0,1-.757-.292l-7.96-12.6H4981.9l-6.293,16.561a.68.68,0,0,1-.636.438h-5.793l-6.447,8.058v3.9l9.866,5.815a.681.681,0,0,1,.157.128l10.2,11.22a.687.687,0,0,1,.116.178l12.1,26.894,6.814,1.623a.679.679,0,0,1,.433.324l10.88,19.039a.686.686,0,0,1,.089.337v3.06a.68.68,0,0,1-.68.68h-9.52a.676.676,0,0,1-.408-.136l-6.333-4.749-8.592,8.43a.68.68,0,0,1-.477.195h-5.27v7.478l5.675,4.216a.679.679,0,0,1,.239.765l-2.744,8.069,5.1,4.46a.679.679,0,0,1,.214.353l2.209,9.18a.679.679,0,0,1-.23.685l-10.121,8.3v5.8a.681.681,0,0,1-.28.55l-3.013,2.191,3.867,3.039h4.355a.679.679,0,0,1,.623.408l6.97,15.979a.681.681,0,0,1,.026.473l-2.21,7.14a.681.681,0,0,1-.65.479h-1.981l2.634,8.989a.68.68,0,0,1-.315.782l-8.33,4.759a.681.681,0,0,1-.482.074l-7.525-1.636-1.772,1.266,3.307,15.544a.68.68,0,0,1-.082.492l-2.9,4.831,1.26,3.783a.679.679,0,0,1-.113.639l-5.448,6.837,1.06.776,9.944,1.02,4.589,8.669,12.239,7.9L5012,1090v-6.885l-2.805-3.315,20.4-12.749v-2.8l-2.8-2.8v-5.865l18.1-13.514,7.139-1.53v-4.844l3.825-2.295v-14.534l-4.334-.765-2.04-4.335,3.57-2.8-.765-9.434-3.314-3.314,3.314-12.239-.51-6.375,8.415-9.944v-6.629l-5.355-16.829-.254-4.59,7.9-7.649-2.041-10.454,2.041-3.315V913.3l6.629-9.689-2.04-13.769V883.47l7.394-4.845v-7.394l3.183-6.857,10.2-1.36,8.5-28.219-3.4-10.2,3.4-1.7-1.7-10.88,14.279-11.22,1.7,1.36,10.879-2.04,4.419.68,5.1-3.06-2.379-4.76-11.9-10.54-4.76-18.359-13.259.34-5.44-4.08-6.8,2.38-1.282.948a2.535,2.535,0,0,0,1.282,2.452c2.89,1.36,11.9,2.89,11.9,2.89l8.67,9.01-3.74,9.35-4.419,1.7-8.5-11.05s-5.27-.34-6.12-.17-2.89,5.1-2.89,5.1Z"
											transform="translate(-4771.904 -693.48)" fill="#FFA648" />
							                                        <path
											onclick="location.href='/equipment?mid=a10302000000&djAreaGuCds=B'"
											id="중구"
											d="M4712.864,1683.869a.68.68,0,0,1,.062-.565l2.922-4.87-3.344-15.718a.68.68,0,0,1,.271-.695l2.379-1.7a.679.679,0,0,1,.54-.111l7.565,1.644,7.637-4.364-2.739-9.345a.681.681,0,0,1,.653-.871h2.388l1.987-6.419-6.69-15.34h-4.145a.68.68,0,0,1-.42-.145l-4.76-3.74a.681.681,0,0,1,.02-1.085l3.46-2.516v-5.774a.679.679,0,0,1,.249-.526l10.04-8.229-2.06-8.555-5.277-4.617a.68.68,0,0,1-.2-.731l2.73-8.03-5.552-4.124a.681.681,0,0,1-.274-.546v-8.5a.68.68,0,0,1,.68-.68h5.672l8.812-8.645a.681.681,0,0,1,.885-.059l6.618,4.964h8.613v-2.2l-10.644-18.627-6.853-1.632a.682.682,0,0,1-.463-.382l-12.195-27.1-10.058-11.064-10.111-5.96a.678.678,0,0,1-.335-.586v-4.339l-3.856-6.427-6.734-2.342q-.063,1.179-.113,2.234c-.3,6.026-.459,9.345-2.6,13.567-.949,1.871-2.91,3.815-5.181,6.065l-.613.608-7.131,9.352-4.282,7.688a22.076,22.076,0,0,0-1.083,10.558,8.335,8.335,0,0,1-.248,4.321,12.24,12.24,0,0,1-2.33,3.468c-.14.162-.278.323-.414.484l-2.1,4.519c-.022.253-.038.515-.038.794,0,1.3.05,2.53.1,3.718.138,3.386.257,6.309-.859,9.05a8.812,8.812,0,0,1-2.155,3.213l-1.347,2.448a.849.849,0,0,1-.744.441h-7.759a.143.143,0,0,0-.018.036c-.162.632-.549,1.633-1.04,2.9-.108.279-.222.574-.341.883l-2.318,9.063a3.151,3.151,0,0,0,.13.678c.589,1.82,3.48,10.867,5.963,18.637l20.757,12.053v6.629l-6.913,11.474,5.864,14.789-3.314,7.649v2.04l15.3,3.059,2.8,2.55-1.53,2.805,5.609,11.219,3.57,1.785,2.294,4.589-1.53,6.63,12.121,8.874,5.252-6.592Z"
											transform="translate(-4511.459 -1308.426)" fill="#FFA648" />
							                                        <g
											onclick="location.href='/equipment?mid=a10302000000&djAreaGuCds=C'"
											id="서구" transform="translate(-8 -45)">
							                                            <path id="패스_585"
											data-name="패스 585"
											d="M4269.147,1460.239l3.314-19.888,10.5-5c-2.6-8.134-5.96-18.652-6.6-20.628-.888-2.743,1.1-7.889,2.558-11.647.454-1.171.844-2.182.984-2.727l.184-.718a.85.85,0,0,1,.824-.639h.545a12.524,12.524,0,0,1,2.237-.27c2.448-.157,5.4-.348,7.317-2.935l1-1.811a10.558,10.558,0,0,0,.634-2.411v-9.742c0-3.408,1.552-5.208,2.922-6.8l.319-.371,1.179-2.539v-10.692a.85.85,0,0,1,.107-.413l1.337-2.4a40.581,40.581,0,0,1,1.333-3.954c2.768-7.065,7.6-11.859,11.492-15.71q.434-.43.849-.844l4-5.244,1.394-8.281c-.009-.476-.022-.965-.035-1.467-.055-2.126-.117-4.536.039-7.291l-.312-3.007c-.894-4.1-2.073-12.1-2.657-14.04-.227-.756-1.264-1.295-2.465-1.919-1.73-.9-3.884-2.018-4.979-4.5-1.429-3.237-.748-7.045-.3-8.79l-1.466.627a.682.682,0,0,1-.268.055h-15.265L4268.725,1298l-13.2,19.215a8.171,8.171,0,0,0-.427,3l5.283,14.106a.7.7,0,0,1,.042.282l.553,4.5c1.913,5.685,1.9,9.584.544,11.285-.911,1.139-1.188,6.865.092,15.235,1.228,8.03,3.318,14.7,5.324,16.993,4.823,5.512-.112,23.665-3.715,36.92q-.27.99-.524,1.931c-.768,2.839-2.152,4.742-4.115,5.655-3.956,1.84-9.24-.621-13.9-2.792-2.365-1.1-4.6-2.142-5.976-2.228-1.115-.07-1.241.355-1.294.537-.593,2.005,3.236,7.882,7.2,10.113,5.087,2.862,2.278,12.027.928,16.432-.244.8-.456,1.488-.506,1.788a1.5,1.5,0,0,1-1.7,1.313c-1.964-.162-5.092-3.383-5.092-6.893a1.231,1.231,0,0,0-.75-1.194c-2.16-1.125-7.639.132-10.152,1.891-1.66,1.162-1.264,3.017-.414,5.933a14.746,14.746,0,0,1,.776,3.91c0,2.215-4.3,5.986-11.373,11.933-3.735,3.139-7.6,6.386-9.036,8.3-1.835,2.44-.1,4.192,2.89,6.848a15.941,15.941,0,0,1,3.476,3.793,2.623,2.623,0,0,1,.194,2.35c-.854,2.029-4.4,3.031-7.831,4a31.486,31.486,0,0,0-3.978,1.292c-1.106.5-1.3,2.016-1.1,3.7l13.123,10.021,7.649,10.2,3.314,16.574,6.375-1.53,4.335,6.12-2.3,5.609.765,19.124h2.8l9.689-11.219,2.8-8.159,3.825-1.275-.509-8.924,21.163-24.478-4.335-9.944,3.315-7.9-3.569-4.844,5.354-22.948Z"
											transform="translate(-4134.008 -1098.271)" fill="#FFA648" />
							                                            <path id="패스_586"
											data-name="패스 586"
											d="M4044.016,1779.13a32.359,32.359,0,0,1,4.219-1.38c2.613-.738,6.19-1.748,6.726-3.022a.935.935,0,0,0-.119-.877,14.9,14.9,0,0,0-3.114-3.337c-2.668-2.373-5.988-5.325-3.119-9.141,1.554-2.066,5.317-5.229,9.3-8.577,2.684-2.255,5.458-4.587,7.528-6.571,3.005-2.882,3.239-3.836,3.239-4.06a13.391,13.391,0,0,0-.709-3.435c-.76-2.609-1.706-5.857,1.072-7.8,2.708-1.9,8.9-3.573,11.912-2.006a2.936,2.936,0,0,1,1.665,2.7,6.232,6.232,0,0,0,2.179,4.417,3.354,3.354,0,0,0,1.254.766c.084-.417.277-1.047.535-1.89,1.124-3.669,3.758-12.262-.135-14.452-4.149-2.334-8.954-8.854-8-12.077.21-.712.884-1.886,3.031-1.752,1.7.106,3.963,1.162,6.587,2.384,4.112,1.915,9.228,4.3,12.467,2.791,1.509-.7,2.553-2.192,3.192-4.557q.255-.941.525-1.933c1.7-6.238,3.806-14,4.909-20.77,1.244-7.625.963-12.532-.833-14.585-2.676-3.058-4.712-11.229-5.726-17.856-.348-2.275-1.971-13.764.262-16.554.27-.338.6-1.4-.242-4.739-.044-.174-.09-.351-.138-.531l-.07,1.085a.68.68,0,0,1-.679.636h-5.3a.684.684,0,0,1-.32-.079l-2.955-1.573-5.858,1.628a.681.681,0,0,1-.582-.105l-2.925-2.127-1.775,7.1v10.869l4.238,4.564a.679.679,0,0,1,.169.6l-.68,3.4a.677.677,0,0,1-.174.335l-6.273,6.6v10.608a.68.68,0,0,1-.68.68h-7.973l-4.628,17.85a.68.68,0,0,1-.354.438l-5.208,2.6-7.044,17.778a.681.681,0,0,1-.248.311l-20.36,13.94-.028.018-18.572,11.431-3.606,17.79,6.119,16.828,15.7,9.689v8.16l10.561,1.784-.125-4.609C4041.889,1785.659,4040.748,1780.615,4044.016,1779.13Z"
											transform="translate(-3976.681 -1384.496)" fill="#FFA648" />
							                                        </g>
							                                    </g>
							                                </g>
							                            </svg>
								</div>
							</div>
						</div>
						<div class="col-xl-7"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
<div class="row">
	<div class="col-xl-12">
		<div class="row">
			<div class="col-xl-5">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>
							취업지원프로그램 <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar pr-3 align-self-end">
							<ul id="demo_panel-tabs" class="nav nav-tabs border-bottom-0"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tab_mentoring" role="tab"
									aria-selected="true">멘토링&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/support/mentoring/list.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab_contest" role="tab" aria-selected="false">
										공모전&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/support/contest/list.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="panel-content tab-content p-3">
						<div class="tab-pane fade show active" id="tab_mentoring" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										<table class="table table-sm table-hover table-striped w-100">
											<tbody>
												<c:if test="${empty contestList}">
													<tr>
														<td class="text-center fw-700" colspan="2">등록된 공모전이
															없습니다.</td>
													</tr>
												</c:if>
												<c:forEach items="${contestList}" var="contest"
													varStatus="status">
													<tr>
														<td>${contest.conEdate}</td>
														<td>${contest.conContent}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab_contest" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										<table class="table table-sm table-hover table-striped w-100">
											<tbody>
												<c:if test="${empty contestList}">
													<tr>
														<td class="text-center fw-700" colspan="2">등록된 공모전이
															없습니다.</td>
													</tr>
												</c:if>
												<c:forEach items="${contestList}" var="contest"
													varStatus="status">
													<tr>
														<td>${contest.conEdate}</td>
														<td>${contest.conTitle}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>
							취업상담 <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar">
							<button onclick="location.href='<%=request.getContextPath()%>/support/counsel/main.do'"
								class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
								<i class="fal fa-plus"></i>
							</button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row cardMargin">
								<div class="col-xl-12 panel" style="padding: 0px;">
									<div class="custom-scroll">
										<div>
											<table class="table table-sm table-hover table-striped w-100">
												<tbody>
													<c:if test="${empty counselList}">
														<tr>
															<td class="text-center fw-700" colspan="2">등록된 상담내역이
																없습니다.</td>
														</tr>
													</c:if>
													<c:forEach items="${counselList}" var="counsel"
														varStatus="status">
														<%-- <tr>
																<td>${}</td>
																<td>${}</td>
															</tr> --%>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-4">
				<div id="panel-7" class="panel">
					<div class="panel-hdr">
						<h2>
							미래연구소 <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar pr-3 align-self-end">
							<ul id="demo_panel-tabs" class="nav nav-tabs border-bottom-0"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tab_ai1" role="tab"
									aria-selected="true">Part1&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/futurelab/ai1/main.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab_ai2" role="tab" aria-selected="false">
										Part2&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/futurelab/ai2/main.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab_ai3" role="tab" aria-selected="false">
										Part3&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/futurelab/ai3/main.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="panel-content tab-content p-3">
						<div class="tab-pane fade show active" id="tab_ai1" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										미래연구소 Part 1											
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab_ai2" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										미래연구소 Part 2
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab_ai3" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										미래연구소 Part 3
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
<div class="row">
	<div class="col-xl-12">
		<div class="row">
			<div class="col-xl-4">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>
							공공근로알림 <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar">
							<button onclick="location.href='<%=request.getContextPath()%>/community/publicwork/list.do'"
								class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
								<i class="fal fa-plus"></i>
							</button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row cardMargin">
								<div class="col-xl-12 panel" style="padding: 0px;">
									<div class="custom-scroll">
										<div>
											<table class="table table-sm table-hover table-striped w-100">
												<tbody>
													<c:if test="${empty publicworkList}">
														<tr>
															<td class="text-center fw-700" colspan="2">등록된
																공공근로알림이 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach items="${publicworkList}" var="publicwork"
														varStatus="status">
														<%-- <tr>
																<td>${}</td>
																<td>${}</td>
															</tr> --%>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-4">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>
							FAQ <span class="fw-300"></span>
						</h2>
						<div class="panel-toolbar">
							<button onclick="location.href='<%=request.getContextPath()%>/community/faq/list.do'"
								class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
								<i class="fal fa-plus"></i>
							</button>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row cardMargin">
								<div class="col-xl-12 panel" style="padding: 0px;">
									<div class="custom-scroll">
										<div>
											<table class="table table-sm table-hover table-striped w-100">
												<tbody>
													<c:if test="${empty faqList}">
														<tr>
															<td class="text-center fw-700" colspan="2">등록된
																자주묻는질문이 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach items="${faqList}" var="faq" varStatus="status">
														<%-- <tr>
																	<td>${}</td>
																	<td>${}</td>
																</tr> --%>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-4">
				<div id="panel-8" class="panel">
					<div class="panel-hdr">
						<h2>
							연봉
						</h2>
						<div class="panel-toolbar pr-3 align-self-end">
							<ul id="demo_panel-tabs" class="nav nav-tabs border-bottom-0"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tab_salary" role="tab"
									aria-selected="true">순위 및 평균&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/salary/list.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab_news" role="tab" aria-selected="false">
										뉴스&nbsp;&nbsp;&nbsp;
										<button onclick="location.href='<%=request.getContextPath()%>/salary/news.do'"
											class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
											<i class="fal fa-plus"></i>
										</button>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="panel-content tab-content p-3">
						<div class="tab-pane fade show active" id="tab_salary" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										순위 및 평균								
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab_news" role="tabpanel">
							<div class="col-xl-12 panel" style="padding: 0px;">
								<div class="custom-scroll">
									<div>
										뉴스
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
