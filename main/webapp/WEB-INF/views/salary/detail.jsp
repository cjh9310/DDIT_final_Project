<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="newsList" value="${dataMap.newsList }" />
<html lang="en">
<body class="mod-bg-1 mod-nav-link ">

	<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">연봉</a></li>
		<li class="breadcrumb-item">연봉뉴스</li>
		<li class="breadcrumb-item">연봉뉴스 상세보기</li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
			class="js-get-date"></span></li>
	</ol>
	<div class="row justify-content-center">
		<div class="col-xl-10">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>
						연봉뉴스 상세보기 <span class="fw-300"></span>
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
				<div class="row justify-content-start">
					<div class="ml-5 mt-5" style="font-size: 30px;">
						<b>${news.newsTitle}</b>
					</div>
				</div>
				<div class="row justify-content-start">
					<div class="ml-5 mt-2" style="font-size: 15px;">Log4Job</div>
					<div class="ml-4 mt-2" style="font-size: 15px;">${news.newsSdate}</div>
				</div>
				<hr width="100%" style="border-bottom: solid 1px #c7c6c6;" />

				<div class="row justify-content-center mt-5">
					<div class=" " style="font-size: 25px;">
						<div>
							<b>${news.newsOneContent }</b>
						</div>
					</div>
				</div>
				
				<div class="row justify-content-center text-center">
					<div class="col-md-10" style="font-size:17px; word-spacing: 3pt; line-height: 180%">${news.newsTitle}</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	
	<script>
	
	</script>
</body>
