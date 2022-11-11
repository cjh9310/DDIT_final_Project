<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="supportList" value="${dataMap.supportList }" />
<c:set var="contestList" value="${dataMap.contesttList }" />
<c:set var="mentoringList" value="${dataMap.mentoringList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

<style>
.panel-content {
	width: 100%;
	height: 455px;
	overflow: hidden;
}
</style>

<!-- END Page Header -->
<!-- BEGIN Page Content -->
<!-- the #js-page-content id is needed for some plugins to initialize -->
<main id="js-page-content" role="main" class="page-content">
<!-- 멘토링 & 공모전시작! -->
<div class="row">
	<div class="col-xl-6">
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>멘토링 내역</h2>
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
					<!-- <h5 class="frame-heading">멘토링내역리스트테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No.</th>
									<th>지원일자</th>
									<th>멘토링명</th>
									<th>프로그램 시작일자</th>
									<th>프로그램 종료일자</th>
									<th>멘토링 진행상황</th>
									<th>가산점</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty supportList }">
									<tr>
										<td colspan="7"><strong>참여하신 멘토링내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${supportList }" var="support">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->
									<tr style="cursor: pointer;">
										<th scope="row">${support.supNo }</th>
										<td><fmt:formatDate value="${support.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${support.supTitle }</td>
										<td><fmt:formatDate value="${support.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td><fmt:formatDate value="${support.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td><c:if test="${support.supProcess eq 0 }">상담접수중 </c:if>
											<c:if test="${support.supProcess eq 1 }">상담중 </c:if> <c:if
												test="${support.supProcess eq 2 }">상담완료 <fmt:formatDate
													value="${support.supEdate }" pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${support.supProcess eq 3 }">상담반려 </c:if></td>
										<td>가산점와야대...</td>
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-6">
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>공모전 내역</h2>
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
					<!-- <h5 class="frame-heading">공모전 내역테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No.</th>
									<th>지원일자</th>
									<th>공모전명</th>
									<th>프로그램 시작일자</th>
									<th>프로그램 종료일자</th>
									<th>공모전 진행상황</th>
									<th>수생내역</th>
									<th>가산점</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty supportList }">
									<tr>
										<td colspan="7"><strong>참여하신 공모전내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${activityList }" var="activity">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->
									<tr style="cursor: pointer;">
										<th scope="row">${activity.supNo }</th>
										<td><fmt:formatDate value="${activity.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${activity.supTitle }</td>
										<td><fmt:formatDate value="${activity.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td><fmt:formatDate value="${activity.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td><c:if test="${activity.supProcess eq 0 }">신청완료 </c:if>
											<c:if test="${activity.supProcess eq 1 }">진 행 중 </c:if> <c:if
												test="${activity.supProcess eq 2 }">완 료 <fmt:formatDate
													value="${support.supEdate }" pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${activity.supProcess eq 3 }">중도포기 </c:if></td>
										<td>수상내역</td>
										<td>가산점와야대...</td>
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-12">
		<!--Table small-->
		<div id="panel" class="panel">
			<div class="panel-hdr">
				<h2>상담신청내역</h2>
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
					<!-- <h5 class="frame-heading">상담신청내역테이블</h5> -->
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-hover m-0">
							<thead class="bg-primary-700">
								<tr>
									<th>No</th>
									<th>작성일</th>
									<th>상담유형</th>
									<th>제목</th>
									<th>상담진행상황</th>
									<th>담당상담사</th>
									<th>첨부파일</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty supportList }">
									<tr>
										<td colspan="7"><strong>신청하신 상담내역이 없습니다.</strong></td>
								</c:if>
								<c:forEach items="${supportList }" var="support"
									varStatus="idxrow">
									<!--  <tr style="cursor:pointer;" onclick="openWindow('supportDetail.do?from=list&supNo=${support.supNo }','상담신청 상세보기', 800,700);">-->

									<tr style="cursor: pointer;"
										onclick="OpenWindow('supportDetail.do?from=support&supNo=${support.supNo}','상담신청 상세보기', 650,730);">
										<%-- <th scope="row">${support.supNo }</th> --%>
										<td>${idxrow.index }</td>
										<td><fmt:formatDate value="${support.supDate }"
												pattern="yyyy-MM-dd" /></td>
										<td>${youme.index }<c:if test="${support.supType eq 0 }">진로상담 </c:if>
											<c:if test="${support.supType eq 1 }">취업상담 </c:if> <c:if
												test="${support.supType eq 2 }">프로그램상담 </c:if>
										</td>
										<td>${support.supTitle }</td>
										<td><c:if test="${support.supProcess eq 0 }">상담접수중 </c:if>
											<c:if test="${support.supProcess eq 1 }">상담중 </c:if> <c:if
												test="${support.supProcess eq 2 }">상담완료 <fmt:formatDate
													value="${support.supEdate }" pattern="yyyy-MM-dd" />
											</c:if> <c:if test="${support.supProcess eq 3 }">상담반려 </c:if></td>
										<td>상담사이름와야대...</td>
										<td>첨부파일와야대...</td>
									</tr>
								</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</main>

