<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<style>
.custom-scrollbar {
	width: 100%;
	height: 431px;
	overflow: auto;
}
</style>

<div id="panel-1" class="panel">
	<div class="panel-hdr">
		<h2>자기소개서 관리 중</h2>
		<div class="panel-toolbar ml-2">
			<button onclick="registForm_load('letRegistForm')"
				class="btn btn-xs btn-icon width-1 fs-xl btn-info ml-auto waves-effect waves-themed">
				<i class="fal fa-plus"></i>
			</button>
			<button
				onclick="location.href='<%=request.getContextPath()%>/indmember/mypage/resume.do'"
				class="btn btn-xs btn-icon width-1 fs-xl btn-primary ml-1 waves-effect waves-themed">
				<i class="fal fa-reply"></i>
			</button>
		</div>
	</div>
	<div>
		<div class="col-xl-12 panel panel-content" style="padding: 0px;">
			<div class="custom-scroll">
				<div class="p-3">
					<table class="table" id="letForm_section">
						<thead>
							<tr>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">순번</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">제목</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty letList}">
								<tr>
									<td class="text-center fw-700" colspan="10">등록된 자기소개서가
										없습니다.</td>
								</tr>
							</c:if>
							<c:forEach items="${letList}" var="let">
								<tr>
									<td class="text-center">${edu.eduDep}</td>
									<td class="text-center">${edu.eduName}</td>
									<td class="text-center">${edu.eduMajor}</td>
									<td class="text-center">${edu.eduScore}</td>
									<td class="text-center"><c:if test="${edu.eduStatus == 0}">
											<span class="badge badge-primary">${edu.strStatus}</span>
										</c:if> <c:if test="${edu.eduStatus == 1}">
											<span class="badge badge-info">${edu.strStatus}</span>
										</c:if> <c:if test="${edu.eduStatus == 2}">
											<span class="badge badge-success">${edu.strStatus}</span>
										</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>
