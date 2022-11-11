<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberList" value="${memberMap.memberList }" />
<c:set var="boardList" value="${boardMap.boardList }" />
<c:set var="noticeList" value="${noticeMap.noticeList }" />
<c:set var="pdsList" value="${pdsMap.pdsList }" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Log4Job - 대전광역시 취업정보시스템</title>
<meta name="description" content="Basic Tables">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
<!-- Call App Mode on ios devices -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- Remove Tap Highlight on Windows Phone IE -->
<meta name="msapplication-tap-highlight" content="no">
<!-- base css -->
<link id="vendorsbundle" rel="stylesheet" media="screen, print"
	href="<%=request.getContextPath()%>/resources/template/css/vendors.bundle.css">
<link id="appbundle" rel="stylesheet" media="screen, print"
	href="<%=request.getContextPath()%>/resources/template/css/app.bundle.css">
<link id="mytheme" rel="stylesheet" media="screen, print" href="#">
<link id="myskin" rel="stylesheet" media="screen, print"
	href="<%=request.getContextPath()%>/resources/template/css/skins/skin-master.css">
<!-- Place favicon.ico in the root directory -->
<link rel="apple-touch-icon" sizes="180x180"
	href="<%=request.getContextPath()%>/resources/template/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="<%=request.getContextPath()%>/resources/template/img/favicon/favicon-32x32.png">
<link rel="mask-icon"
	href="<%=request.getContextPath()%>/resources/template/img/favicon/safari-pinned-tab.svg"
	color="#5bbad5">
<link rel="stylesheet" media="screen, print"
	href="<%=request.getContextPath()%>/resources/css/fa-solid.css">
<link rel="stylesheet" media="screen, print"
	href="<%=request.getContextPath()%>/resources/css/fa-brands.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" />
<!-- 아이콘 가져오려면 필요 -->
</head>
<!-- BEGIN Body -->
<body class="mod-bg-1 mod-nav-link ">

	<script>
		/**
		 *	This script should be placed right after the body tag for fast execution 
		 *	Note: the script is written in pure javascript and does not depend on thirdparty library
		 **/
		'use strict';

		var classHolder = document.getElementsByTagName("BODY")[0],
		/** 
		 * Load from localstorage
		 **/
		themeSettings = (localStorage.getItem('themeSettings')) ? JSON
				.parse(localStorage.getItem('themeSettings')) : {}, themeURL = themeSettings.themeURL
				|| '', themeOptions = themeSettings.themeOptions || '';
		/** 
		 * Load theme options
		 **/
		if (themeSettings.themeOptions) {
			classHolder.className = themeSettings.themeOptions;
			console.log("%c✔ Theme settings loaded", "color: #148f32");
		} else {
			console
					.log(
							"%c✔ Heads up! Theme settings is empty or does not exist, loading default settings...",
							"color: #ed1c24");
		}
		if (themeSettings.themeURL && !document.getElementById('mytheme')) {
			var cssfile = document.createElement('link');
			cssfile.id = 'mytheme';
			cssfile.rel = 'stylesheet';
			cssfile.href = themeURL;
			document.getElementsByTagName('head')[0].appendChild(cssfile);

		} else if (themeSettings.themeURL && document.getElementById('mytheme')) {
			document.getElementById('mytheme').href = themeSettings.themeURL;
		}
		/** 
		 * Save to localstorage 
		 **/
		var saveSettings = function() {
			themeSettings.themeOptions = String(classHolder.className).split(
					/[^\w-]+/).filter(function(item) {
				return /^(nav|header|footer|mod|display)-/i.test(item);
			}).join(' ');
			if (document.getElementById('mytheme')) {
				themeSettings.themeURL = document.getElementById('mytheme')
						.getAttribute("href");
			}
			;
			localStorage
					.setItem('themeSettings', JSON.stringify(themeSettings));
		}
		/** 
		 * Reset settings
		 **/
		var resetSettings = function() {
			localStorage.setItem("themeSettings", "");
		}
		function changeTelCom1(arg0) {

			var value = $(arg0).val();
			//    console.log(value);
			document.getElementById('numVal').innerHTML = value;

		}
		function deleteRow(ths) {
			var ths = $(ths);

			ths.parents("div").remove();
			element.classList.remove('div')
		}
	</script>

	<!-- END Page Header -->
	<!-- BEGIN Page Content -->
	<!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">어</a></li>
		<li class="breadcrumb-item">렵</li>
		<li class="breadcrumb-item active">다</li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
			class="js-get-date"></span></li>
	</ol>
	<h1 class="subheader-title">
		<i class='subheader-icon fal fa-plus-circle'></i> 인재정보 <small>인재검색&내용</small>
	</h1>

	<div class="w-75 mx-auto" style="height: 30px;"></div>
	<div class="w-75 mx-auto" style="height: 300px;">
		<div class="w-100 h-100"
			style="float: none; margin: 0 auto; width: 750px;">
			<div class="w-100 row" style="height: 10%;">
				<div class="list-item">업종</div>
				<div class="list-item">근무지역</div>
				<div class="list-item">경력</div>
				<div class="list-item">학력</div>
				<div class="list-item">회사규모</div>
			</div>
			<div class="w-100 row" style="height: 75%;">
				<div class="items overflow-auto">
					<div class="form-check"
						style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
						<select id="example-multiselect" multiple="" class="form-control"
							style="height: 200px;">
							<option type="button" style="font-size: 1.5em;" value="1"
								onclick="changeTelCom1(this);">1</option>
							<option type="button" style="font-size: 1.5em;" value="2"
								onclick="changeTelCom1(this);">2</option>
							<option type="button" style="font-size: 1.5em;" value="3"
								onclick="changeTelCom1(this);">3</option>
							<option type="button" style="font-size: 1.5em;" value="4"
								onclick="changeTelCom1(this);">4</option>
							<option type="button" style="font-size: 1.5em;" value="5"
								onclick="changeTelCom1(this);">5</option>
						</select>
					</div>
				</div>
				<div class="items overflow-auto">
					<div class="form-check"
						style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
						<select id="example-multiselect" multiple="" class="form-control"
							style="height: 200px;">
							<option type="button" style="font-size: 1.5em;">1</option>
							<option style="font-size: 1.5em;">22</option>
							<option style="font-size: 1.5em;">333</option>
							<option style="font-size: 1.5em;">4444</option>
							<option style="font-size: 1.5em;">55555</option>
						</select>
					</div>
				</div>
				<div class="items overflow-auto">
					<div class="form-check"
						style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
						<select id="example-multiselect" multiple="" class="form-control"
							style="height: 200px;">
							<option type="button" style="font-size: 1.5em;">1</option>
							<option style="font-size: 1.5em;">22</option>
							<option style="font-size: 1.5em;">333</option>
							<option style="font-size: 1.5em;">4444</option>
							<option style="font-size: 1.5em;">55555</option>
						</select>
					</div>
				</div>
				<div class="items overflow-auto">
					<div class="form-check"
						style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
						<select id="example-multiselect" multiple="" class="form-control"
							style="height: 200px;">
							<option type="button" style="font-size: 1.5em;">1</option>
							<option style="font-size: 1.5em;">22</option>
							<option style="font-size: 1.5em;">333</option>
							<option style="font-size: 1.5em;">4444</option>
							<option style="font-size: 1.5em;">55555</option>
						</select>
					</div>
				</div>
				<div class="items overflow-auto">
					<div class="form-check"
						style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
						<select id="example-multiselect" multiple="" class="form-control"
							style="height: 200px;">
							<option type="button" style="font-size: 1.5em;">1</option>
							<option style="font-size: 1.5em;">22</option>
							<option style="font-size: 1.5em;">333</option>
							<option style="font-size: 1.5em;">4444</option>
							<option style="font-size: 1.5em;">55555</option>
						</select>
					</div>
				</div>
				<!-- d-flex justify-content-start -->
				<div class="w-100 row list-item col-lg-12"
					style="height: 25%; float: none; margin: 0 auto;">
					<div class="float-right col-lg-8 d-flex justify-content-start"
						id="numVal" type="button" onclick="deleteRow(this);"></div>

					<div class="col-lg-4 d-flex justify-content-end">
						<button type="button"
							class="btn btn-success btn-pills waves-effect waves-themed "
							data-toggle="modal" data-target=".default-example-modal-right-lg">기업조회</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="w-75 mx-auto" style="height: 30px;"></div>

	<div id="container">

		<div class="row">

			<div class="col-md-1"></div>

			
			<div class="col-lg-1 sortable-grid "></div>
		</div>
	</div>
	<div style="padding: 20px;"></div>


	<!-- Main content -->
	<section class="content">
		<div class="card-header with-border d-flex justify-content-end">

			<!--  <button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do','글등록',800,700);">게시글등록</button>   -->
			<div id="keyword" class="card-tools " style="width: 450px;">
				<select class="form-controller col-md-3" name="perPageNum "
					id="perPageNum"
					style="float: right; display: block; width: 100%; height: calc(1.47em + 1rem + 2px); padding: 0.5rem 0.875rem; font-size: 0.8125rem; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #E5E5E5; border-radius: 4px;"
					onchange="list_go();">
					<option value="10">정렬개수</option>
					<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
					<option value="50" ${cri.perPageNum == 50 ? 'selected':''}>50개씩</option>
					<option value="100" ${cri.perPageNum == 100 ? 'selected':''}>100개씩</option>
				</select>
			</div>
		</div>






		<div id="container">
			<div class="row" id="js-contacts">

				<div class="col-lg-3">
					<div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover"
						data-filter-tags="회사명">
						<div
							class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
							<div class="d-flex flex-row align-items-center">
								<span class="status status-success mr-3"> <span
									class="rounded-circle profile-image d-block "
									style="background-image:url('<%=request.getContextPath()%>/resources/images/img/demo/avatars/avatar-b.png'); background-size: cover;"></span>
								</span>
								<div class="info-card-text flex-1">
									<a href="javascript:void(0);"
										class="fs-xl text-truncate text-truncate-lg text-info"
										data-toggle="dropdown" aria-expanded="false"> 공고 제목 </a> <span
										class="text-truncate text-truncate-xl">회사</span>
								</div>
							</div>
						</div>
						<div class="card-body p-0 collapse show">
							<div class="p-3">
								<a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> IT업계
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> 경력 2년↑
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mouse-pointer text-muted mr-2"></i> 학력무관
								</a> <span style="float: right;">
									<button type="button" class="btn btn-default"
										data-toggle="modal"
										data-target="#default-example-modal-sm-center">Centered
										Small</button>
								</span>
								<address class="fs-sm fw-400 mt-4 text-muted">
									<i class="fas fa-map-pin mr-2"></i> 대전 중구
								</address>

							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3">
					<div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover"
						data-filter-tags="회사명">
						<div
							class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
							<div class="d-flex flex-row align-items-center">
								<span class="status status-success mr-3"> <span
									class="rounded-circle profile-image d-block "
									style="background-image: url('img/demo/avatars/avatar-b.png'); background-size: cover;"></span>
								</span>
								<div class="info-card-text flex-1">
									<a href="javascript:void(0);"
										class="fs-xl text-truncate text-truncate-lg text-info"
										data-toggle="dropdown" aria-expanded="false"> 공고 제목 </a> <span
										class="text-truncate text-truncate-xl">회사</span>
								</div>
							</div>
						</div>
						<div class="card-body p-0 collapse show">
							<div class="p-3">
								<a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> IT업계
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> 경력 2년↑
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mouse-pointer text-muted mr-2"></i> 학력무관
								</a> <span style="float: right;">
									<button type="button"
										class="btn btn-primary waves-effect waves-themed"
										style="margin: 10px;">상세보기</button>
								</span>
								<address class="fs-sm fw-400 mt-4 text-muted">
									<i class="fas fa-map-pin mr-2"></i> 대전 중구
								</address>

							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover"
						data-filter-tags="회사명">
						<div
							class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
							<div class="d-flex flex-row align-items-center">
								<span class="status status-success mr-3"> <span
									class="rounded-circle profile-image d-block "
									style="background-image:url('<%=request.getContextPath()%>/resources/images/demo/avatars/avatar-b.png'); background-size: cover;"></span>
								</span>
								<div class="info-card-text flex-1">
									<a href="javascript:void(0);"
										class="fs-xl text-truncate text-truncate-lg text-info"
										data-toggle="dropdown" aria-expanded="false"> 공고 제목 </a> <span
										class="text-truncate text-truncate-xl">회사</span>
								</div>
							</div>
						</div>
						<div class="card-body p-0 collapse show">
							<div class="p-3">
								<a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> IT업계
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> 경력 2년↑
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mouse-pointer text-muted mr-2"></i> 학력무관
								</a> <span style="float: right;">
									<button type="button"
										class="btn btn-primary waves-effect waves-themed"
										style="margin: 10px;">상세보기</button>
								</span>
								<address class="fs-sm fw-400 mt-4 text-muted">
									<i class="fas fa-map-pin mr-2"></i> 대전 중구
								</address>

							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover"
						data-filter-tags="회사명">
						<div
							class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
							<div class="d-flex flex-row align-items-center">
								<span class="status status-success mr-3"> <span
									class="rounded-circle profile-image d-block "
									style="background-image:url('<%=request.getContextPath()%>/resources/img/demo/avatars/avatar-b.png'); background-size: cover;"></span>
								</span>
								<div class="info-card-text flex-1">
									<a href="javascript:void(0);"
										class="fs-xl text-truncate text-truncate-lg text-info"
										data-toggle="dropdown" aria-expanded="false"> 공고 제목 </a> <span
										class="text-truncate text-truncate-xl">회사</span>
								</div>
							</div>
						</div>
						<div class="card-body p-0 collapse show">
							<div class="p-3">
								<a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> IT업계
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> 경력 2년↑
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mouse-pointer text-muted mr-2"></i> 학력무관
								</a> <span style="float: right;">
									<button type="button"
										class="btn btn-primary waves-effect waves-themed"
										style="margin: 10px;">상세보기</button>
								</span>
								<address class="fs-sm fw-400 mt-4 text-muted">
									<i class="fas fa-map-pin mr-2"></i> 대전 중구
								</address>

							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover"
						data-filter-tags="회사명">
						<div
							class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
							<div class="d-flex flex-row align-items-center">
								<span class="status status-success mr-3"> <span
									class="rounded-circle profile-image d-block "
									style="background-image: url('img/demo/avatars/avatar-b.png'); background-size: cover;"></span>
								</span>
								<div class="info-card-text flex-1">
									<a href="javascript:void(0);"
										class="fs-xl text-truncate text-truncate-lg text-info"
										data-toggle="dropdown" aria-expanded="false"> 공고 제목 </a> <span
										class="text-truncate text-truncate-xl">회사</span>
								</div>
							</div>
						</div>
						<div class="card-body p-0 collapse show">
							<div class="p-3">
								<a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> IT업계
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mobile-alt text-muted mr-2"></i> 경력 2년↑
								</a> <a class="mt-1 d-block fs-sm fw-400 text-dark"> <i
									class="fas fa-mouse-pointer text-muted mr-2"></i> 학력무관
								</a> <span style="float: right;">
									<button type="button"
										class="btn btn-primary waves-effect waves-themed"
										style="margin: 10px;">상세보기</button>
								</span>
								<address class="fs-sm fw-400 mt-4 text-muted">
									<i class="fas fa-map-pin mr-2"></i> 대전 중구
								</address>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!--  모달창 시작 -->
		<style>
		.list-item {
	width: 20%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid #E5E5E5;
}

.items {
	width: 20%;
	height: 89%;
	display: flex;
	justify-content: center;
}
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
	left: 100%;
	top: 0;
	width: 1px;
	height: 100%;
	background-color: #d3dee8;
}

.careers-new .border .left {
	float: left;
	padding: 20px;
}

.careers-new .border .left .tit-area {
	
}

.careers-new .border .left .tit-area .tit {
	display: inline-block;
	line-height: 1.5;
	font-size: 1.5174em;
	font-weight: 700;
}

.careers-new .border .left .tit-area .d-day {
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
	padding: 20px;
}

.careers-new .border .left .info .column .cont ul li {
	position: relative;
	padding: 0 0 0 130px;
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




.img-talentres {
	width: 90px;
	height: 90px;
}
#tags{
	padding-top : 0px;
}

</style>
		<!-- Modal center -->
		<div class="modal fade" id="default-example-modal-sm-center"
			tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-sm modal-dialog-centered"
				role="document">

				<div class="modal-content">
					<div class="card-body">
						<div id="panel-2" class="panel">
							<div class="panel-hdr">
								<h2>
									<b>인재 상세정보</b> <span class="fw-300"></span>
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
							<div class="row">
								<div class="col-xl-12">
									<div class="careers-new">
										<!-- border -->
										<div class="border">
											<div class="left">
											<div class="flex-1 fs-xxl text-contrast">
                                             	   인재정보 한 줄 소개
                                            </div>
												<!-- header -->
												<div class="d-flex flex-row">
												
													<!-- 사진 자리 -->
													<img
														src="<%=request.getContextPath()%>/resources/images/demo/avatars/avatar-admin.png"
														class="img-talentres">
													<div class="d-block ml-2">
														<h3>
															<b>이름 :</b> <span class="fw-300"></span>아무나 &nbsp;(24살) <span
																class="fw-300"></span>
														</h3>
														<br>
														<h3>
															<b>전화번호 :</b> <span class="fw-300"></span>010-1234-1234
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>이메일
																:</b> <span class="fw-300"></span>아무나
														</h3>
													</div>


													<a href="javascript:void(0);"
														class="d-inline-flex align-items-center text-dark ml-auto align-self-start">
														<span>55</span><i class="fas fa-heart ml-1 text-danger"></i>
													</a>
												</div>
												<!-- body -->
												<div class="info">
													<div class="column">
														<p class="tit">학력</p>

														<div class="cont">
															<ul>
																<li><strong>2019.03 ~ 2023.02</strong> <span>
																		대전대학교 </span></li>
															</ul>
														</div>
													</div>
													<div class="column">
														<p class="tit">경력</p>

														<div class="cont">
															<ul>
																<li><strong>2021.11 ~ 2022.03</strong> <span>
																		ㅁㅁ회사</span></li>
																<li><strong>2021.11 ~ 2022.03</strong> <span>
																		ㅁㅁ회사</span></li>
															</ul>
															
														</div>
													</div>

												</div>
												<div class="info" >
													<div class="column" id="tags">
														<p class="tit">자격증</p>

														<div class="cont">
															<ul>
																<li><strong>2020.11</strong> <span>1종보통운전면허</span></li>
																<li><strong>2007.12</strong> <span>실내건축기능사</span></li>
																<li><strong>2007.12</strong> <span>실내건축기능사</span></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="info" >
													<div class="column" id="tags">
														<p class="tit" >자기소개서</p>

														<div class="cont">
																<p>
																asdasdasdasdasdasdasdasdasasdasdasdasda sdasdasdasdasdasdasdasdasdasdasdasdas dasdasdasdasdasdasdasdasdasdasdd
																</p>
														</div>
													</div>
												</div>





												<!-- <div class="tit-area">
														<p class="tit">&lt;2022 연수 일자리 한마당&gt; 간접 참여 업체 / 안내방송</p>
													</div>
													<div class="info">
														<div class="column">
															<p class="tit">학력</p>
															<div class="cont">
																<ul>
																	<li><strong>기간~기간</strong> <span> OO대학교  </span></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="info">
														<div class="column">
															<p class="tit">지원자격</p>
															<div class="cont">
																<ul>
																	<li><strong>경력</strong> <span> 관계없음 </span></li>
																	<li><strong>학력</strong> <span> 고졸 ~ 대졸(4년)
																	</span></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="info">
														<div class="column">
															<p class="tit">지원자격</p>
															<div class="cont">
																<ul>
																	<li><strong>경력</strong> <span> 관계없음 </span></li>
																	<li><strong>학력</strong> <span> 고졸 ~ 대졸(4년)
																	</span></li>
																</ul>
															</div>
														</div>
													</div> -->

											</div>
											<!-- border -->
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true"><i class="fal fa-times"></i></span>
		</button>

		<div class="modal-body">...</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			<button type="button" class="btn btn-primary">Save changes</button>
		</div>

		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true"><i
						class="fal fa-chevron-left"></i></span>
			</a></li>
			<li class="page-item active" aria-current="page"><span
				class="page-link"> 1 <span class="sr-only">(current)</span>
			</span></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true"><i
						class="fal fa-chevron-right"></i></span>
			</a></li>
		</ul>
	</section>
	<!-- Modal Large --> </main>

</body>
<script
	src="<%=request.getContextPath()%>/resources/js/vendors.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app.bundle.js"></script>
</body>
<!-- END Body -->
</html>
