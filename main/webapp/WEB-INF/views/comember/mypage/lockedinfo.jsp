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
	height: 100%;
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
						${loginUser.name } 회원님의 개인정보<span class="fw-300"></span>
					</h2>
				</div>
				<div class="panel-container show" id="auth_check">
					<div class="page-wrapper auth">
						<div class="page-inner bg-brand-gradient">
							<div class="page-content-wrapper bg-transparent m-0">
								<div class="d-flex flex-1"
									style="background: url(<%=request.getContextPath()%>/resources/template/img/svg/pattern-1.svg) no-repeat center; background-size: cover;">
									<div
										class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0 text-white d-flex align-items-center justify-content-center">
										<div class="form-group">
											<h3>${loginUser.name} 회원님, 안전한 개인정보 열람을 위해 비밀번호를 입력해주세요.
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
					<h2>관심 인재</h2>
					<div class="panel-toolbar ml-2">
						<button type="button"
							class="btn btn-xs btn-info waves-effect waves-themed">
							AI에게 더 많은 인재 추천받기</button>
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
						<button type="button"
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


<div class="modal fade default-example-modal-right-lg" tabindex="-1"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-right modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fal fa-times"></i></span>
				</button>
			</div>
			<div class="modal-body">
				<div id="panel-2" class="panel">
					<div class="panel-hdr">
						<h2>상담신청</h2>
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
							<div class="panel-tag">
								<p>취업지원관련 상담을 신청하실 수 있습니다. 도움이 필요한 순간 늘 함께하는 진정성 있는 상담을
									진행합니다.</p>
								<p>궁금하신 사항이 있다면 언제든 신청해주세요. 친절히 상담을 도와드리겠습니다.</p>
							</div>
						</div>
						<form class="needs-validation" novalidate="" method="post"
							name="registForm" id="registForm">
							<div class="panel-content">
								<div class="form-group">
									<label class="form-label" for="supType"><b>상담유형</b> <span
										class="text-danger">*</span></label> <select class="custom-select"
										id="supType" name="supType">
										<option>상담유형 선택</option>
										<option value="0">진로상담</option>
										<option value="1">취업상담</option>
										<option value="2">프로그램상담</option>
									</select>
									<div class="invalid-feedback">상담유형을 선택해주세요.</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="indId"><b>작성자</b></label> <input
										type="text" id="indId" name="indId" class="form-control"
										value="${loginUser.name }" readonly>
								</div>

								<div class="form-group">
									<label class="form-label" for="supTitle"><b>제목</b> <span
										class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="supTitle" name="supTitle"
										placeholder="제목을 입력해주세요.">
									<div class="invalid-feedback">제목을 입력해주세요.</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="supPdate"><b>상담가능일자</b>&nbsp;※상담일자를
										선택하지않을 경우 상담사가 임의로 연락을 드립니다.</label> <input class="form-control"
										id="supPdate" type="date" name="supPdate">
								</div>

								<div class="form-group">
									<label class="form-label" for="supContent"><b>상담내용</b>
										<span class="text-danger">*</span></label>
									<textarea class="form-control" id="supContent"
										name="supContent" placeholder="상담신청하실 내용을 입력해주세요." rows="7"></textarea>
									<div class="invalid-feedback">상담신청하실 내용을 입력해주세요.</div>
								</div>
							</div>
							<div
								class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="invalidCheck" required=""> <label
										class="custom-control-label" for="invalidCheck"> Agree
										to terms and conditions <span class="text-danger">*</span>
									</label>
									<div class="invalid-feedback">You must agree before
										submitting.</div>
								</div>
								<button
									class="btn btn-success btn-pills ml-auto waves-effect waves-themed"
									type="button" id="registBtn">신청하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<%@ include file="/WEB-INF/views/comember/comember_js.jsp"%>
