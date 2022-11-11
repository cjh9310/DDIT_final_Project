<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="bookmarkMap" value="${bookmarkMap}" />
<c:set var="bookmarkList" value="${bookmarkMap.bookmarkList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="col-lg-6 col-xl-3 order-lg-1 order-xl-1">
		<!-- profile summary -->
		<div class="card mb-g rounded-top">
			<div class="row no-gutters row-grid">
				<div class="col-12">
					<div
						class="d-flex flex-column align-items-center justify-content-center p-4">
						<img
							src="<%=request.getContextPath()%>/member/getPicture.do?id=${loginUser.id}"
							class=" shadow-2 img-thumbnail" alt="" />
						<h5 class="mb-0 fw-700 text-center mt-3">
							${loginUser.name}<small class="text-muted mb-0">${loginUser.email}</small>
						</h5>
						<div class="mt-4 text-center demo">
							<a href="javascript:void(0);" class="fs-xl"
								style="color: #3b5998"> <i class="fab fa-facebook"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #db3236"> <i class="fab fa-google"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #0077B5"> <i class="fab fa-instagram"></i>
							</a> <a href="javascript:void(0);" class="fs-xl"
								style="color: #0063DC"> <i class="fab fa-github"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0 <small class="text-muted mb-0">공개중인 이력서</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0<small class="text-muted mb-0">진행중인 채용</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0 <small class="text-muted mb-0">진행중인 멘토링</small>
						</h5>
					</div>
				</div>
				<div class="col-6">
					<div class="text-center py-3">
						<h5 class="mb-0 fw-700">
							0<small class="text-muted mb-0">진행중인 공모전</small>
						</h5>
					</div>
				</div>
				<div class="col-12">
					<div class="p-3 text-center">
						<a href="javascript:void(0);" class="btn-link font-weight-bold">프로필사진
							변경하기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- contacts -->
		<div class="card mb-2">
			<div class="card-body">
				<a href="javascript:void(0);"
					class="d-flex flex-row align-items-center">
					<div class='icon-stack display-3 flex-shrink-0'>
						<i
							class="fal fa-circle icon-stack-3x opacity-100 color-primary-400"></i>
						<i class="fas fa-user icon-stack-1x opacity-100 color-primary-500"></i>
					</div>
					<div class="ml-3">
						<strong>나의 개인정보 관리하기</strong> <br> Modifying my personal
						information
					</div>
				</a>
			</div>
		</div>
		<div class="card mb-2">
			<div class="card-body">
				<a href="javascript:void(0);"
					class="d-flex flex-row align-items-center">
					<div class='icon-stack display-3 flex-shrink-0'>
						<i
							class="fal fa-circle icon-stack-3x opacity-100 color-success-400"></i>
						<i
							class="fas fa-user-graduate icon-stack-1x opacity-100 color-success-500"></i>
					</div>
					<div class="ml-3">
						<strong>나의 학력 관리하기</strong> <br> Managing my educational
						background
					</div>
				</a>
			</div>
		</div>
		<div class="card mb-2">
			<div class="card-body">
				<a href="javascript:void(0);"
					class="d-flex flex-row align-items-center">
					<div class='icon-stack display-3 flex-shrink-0'>
						<i class="fal fa-circle icon-stack-3x opacity-100 color-info-400"></i>
						<i
							class="fas fa-handshake icon-stack-1x opacity-100 color-info-500"></i>
					</div>
					<div class="ml-3">
						<strong>나의 경력 관리하기</strong> <br> Managing my career
					</div>
				</a>
			</div>
		</div>
		<div class="card mb-g">
			<div class="card-body">
				<a href="javascript:void(0);"
					class="d-flex flex-row align-items-center">
					<div class='icon-stack display-3 flex-shrink-0'>
						<i
							class="fal fa-circle icon-stack-3x opacity-100 color-warning-400"></i>
						<i
							class="fas fa-file-certificate icon-stack-1x opacity-100 color-warning-500"></i>
					</div>
					<div class="ml-3">
						<strong>나의 자격증 관리하기</strong> <br> Managing my certificate
					</div>
				</a>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-xl-6 order-lg-3 order-xl-2">
		<div>
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>
						${loginUser.name }님의 관리자정보<span class="fw-300"></span>
					</h2>
				</div>
				<div class="panel-container show" id="auth_check">
					<div class="panel-content page-wrapper auth">
						<div class="page-inner bg-brand-gradient">
							<div class="page-content-wrapper bg-transparent m-0">
								<div class="d-flex flex-1"
									style="background: url(<%=request.getContextPath()%>/resources/template/img/svg/pattern-1.svg) no-repeat center; background-size: cover;">
									<div
										class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0 text-white d-flex align-items-center justify-content-center">
										<div class="form-group">
											<h3>${loginUser.name}님, 안전한 정보 관리를 위해 비밀번호를 입력해주세요.
											</h3>
											<p class="text-white opacity-50">Please enter your
												password for safe viewing</p>
											<div class="input-group input-group-lg">
												<input type="password" id="password" value=""
													onkeyup="if(window.event.keyCode==13){rendering()}"
													class="form-control" placeholder="Password">
												<div class="input-group-append">
													<button class="btn btn-success shadow-0"
														onclick="rendering()" type="button" id="button-addon5">
														<i class="fal fa-user"></i>
													</button>
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
	<div class="col-lg-6 col-xl-3 order-lg-2 order-xl-3">
		<!-- add : -->
		<div class="card mb-g">
			<div class="row row-grid no-gutters">
				<div class="panel-hdr" style="width: 100%;">
					<h2>관심 기업</h2>
					<div class="panel-toolbar ml-2">
						<button type="button" onclick="window.open('<%=request.getContextPath()%>/futurelab/ai3/company/recommand.do','AI의 기업 추천','fullscreen')"
							class="btn btn-xs btn-info waves-effect waves-themed">
							AI에게 더 많은 기업 추천받기</button>
					</div>
				</div>
				<c:if test="${empty bookmarkList}">
					<div class="col-12">
						<a href="javascript:void(0);"
							class="text-center p-3 d-flex flex-column hover-highlight"> <span
							class="d-block text-truncate text-muted fs-xs mt-1">관심 등록된
								기업이 없습니다.</span>
						</a>
					</div>
				</c:if>
				<c:forEach items="${bookmarkList}" var="bookmark">
					<c:if test="${bookmark.bookType == 1}">
						<div class="col-4">
							<a href="javascript:void(0);"
								class="text-center p-3 d-flex flex-column hover-highlight">
								<span class="profile-image"
								style="width:100%; background-size:contain; background-repeat:no-repeat;
								       background-position:center center; background-image: url('${bookmark.coLogo}');"></span>
								<span class="d-block text-truncate text-muted fs-xs mt-1">${bookmark.coName}</span>
							</a>
						</div>
					</c:if>
				</c:forEach>
				<div class="col-12">
					<div class="p-3 text-center">
						<a href="javascript:void(0);" class="btn-link font-weight-bold">더
							보기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card mb-g">
			<div class="row row-grid no-gutters">
				<div class="panel-hdr" style="width: 100%;">
					<h2>관심 채용공고</h2>
					<div class="panel-toolbar ml-2">
						<button type="button" onclick="window.open('<%=request.getContextPath()%>/futurelab/ai3/recruit/recommand.do','AI의 기업 추천','fullscreen')"
							class="btn btn-xs btn-info waves-effect waves-themed">
							AI에게 더 많은 채용공고 추천받기</button>
					</div>
				</div>
				<table
					class="table table-bordered table-hover table-striped w-100 dataTable no-footer dtr-inline"
					role="grid" aria-describedby="dt-basic-example_info"
					style="width: 1544px;">
					<tbody>
						<c:if test="${empty bookmarkList}">
							<div class="col-12">
								<a href="javascript:void(0);"
									class="text-center p-3 d-flex flex-column hover-highlight">
									<span class="d-block text-truncate text-muted fs-xs mt-1">관심
										등록된 채용공고가 없습니다.</span>
								</a>
							</div>
						</c:if>
						<c:forEach items="${bookmarkList}" var="bookmark">
							<c:if test="${bookmark.bookType == 0}">
								<tr id="1" role="row" class="odd">
									<td class="dtr-control"><span
										class="badge badge-success badge-pill">채용중</span>
										${bookmark.recCoName} - ${bookmark.recWantedtitle}</td>
								</tr>
							</c:if>
						</c:forEach>
					</tbody>
				</table>
				<div class="col-12">
					<div class="p-3 text-center">
						<a href="javascript:void(0);" class="btn-link font-weight-bold">더
							보기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- rating -->
	</div>
</div>
</main>
<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>
