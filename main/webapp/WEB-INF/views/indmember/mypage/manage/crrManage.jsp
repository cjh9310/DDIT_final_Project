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

<c:set var="crrMap" value="${crrMap}" />
<c:set var="crrList" value="${crrMap.crrList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}
</style>

<div class="card-header py-2 d-flex align-items-center flex-wrap">
	<div class="card-title">경력 관리 중</div>
	<button onclick="registForm_load('crrRegistForm')"
		class="btn btn-xs btn-icon width-1 fs-xl btn-info ml-auto waves-effect waves-themed">
		<i class="fal fa-plus"></i>
	</button>
	<button onclick="nonCheck_reload()"
		class="btn btn-xs btn-icon width-1 fs-xl btn-primary ml-1 waves-effect waves-themed">
		<i class="fal fa-reply"></i>
	</button>
</div>
<form class="needs-validation" novalidate="" method="post" id="crrForm">
<table class="table" id="crrForm_section">
	<thead>
		<tr>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">업종</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">회사명</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">직무</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">직책</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">입사일</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">퇴사일</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">Action</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty crrList}">
			<tr>
				<td class="text-center fw-700" colspan="7">등록된 경력 정보가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach items="${crrList}" var="crr">
			<tr>
				<td class="text-center">${crr.crrSector}</td>
				<td class="text-center">${crr.crrCorname}</td>
				<td class="text-center">${crr.crrJob}</td>
				<td class="text-center">${crr.crrPosition}</td>
				<td class="text-center"><fmt:formatDate
						value="${crr.crrSdate }" pattern="yyyy-MM-dd" /></td>
				<td class="text-center"><fmt:formatDate
						value="${crr.crrEdate }" pattern="yyyy-MM-dd" /></td>
				<td class="text-center">
					<button type="button" value="${crr.crrNo}" id="crrModify" name="crrModifyForm" 
						class="modifyForm_load btn btn-xs btn-icon width-1 fs-xl btn-success ml-1 waves-effect waves-themed">
						<i class="fal fa-pen"></i>
					</button>
					<button type="button" value="${crr.crrNo}" id="crrRemove" name="crrManage"
						class="remove_load btn btn-xs btn-icon width-1 fs-xl btn-danger ml-1 waves-effect waves-themed">
						<i class="fal fa-times"></i>
					</button>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</form>

<%@ include file="/WEB-INF/views/indmember/indmember_js.jsp"%>