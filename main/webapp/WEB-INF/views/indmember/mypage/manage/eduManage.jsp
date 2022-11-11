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

<c:set var="eduMap" value="${eduMap}" />
<c:set var="eduList" value="${eduMap.eduList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}
</style>

<div class="card-header py-2 d-flex align-items-center flex-wrap">
	<div class="card-title">학력 관리 중</div>
	<button onclick="registForm_load('eduRegistForm')"
		class="btn btn-xs btn-icon width-1 fs-xl btn-info ml-auto waves-effect waves-themed">
		<i class="fal fa-plus"></i>
	</button>
	<button onclick="nonCheck_reload()"
		class="btn btn-xs btn-icon width-1 fs-xl btn-primary ml-1 waves-effect waves-themed">
		<i class="fal fa-reply"></i>
	</button>
</div>
<form class="needs-validation" novalidate="" method="post" id="eduForm">
<table class="table" id="eduForm_section">
	<thead>
		<tr>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">학과계열</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">학교명</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">학과명</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">학점</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">상태</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">Action</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty eduList}">
			<tr>
				<td class="text-center fw-700" colspan="6">등록된 학력 정보가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach items="${eduList}" var="edu">
			<tr>
				<td class="text-center">${edu.eduDep}</td>
				<td class="text-center">${edu.eduName}</td>
				<td class="text-center">${edu.eduMajor}</td>
				<td class="text-center">${edu.eduScore}</td>
				<td class="text-center"><c:if test="${edu.eduStatus == 0}">
						<span class="badge badge-primary">${edu.strStatus}</span>
					</c:if> <c:if test="${edu.eduStatus == 1}">
						<span class="badge badge-info">${edu.strStatus}</span>
					</c:if></td>
				<td class="text-center">
					<button type="button" value="${edu.eduNo}" id="eduModify" name="eduModifyForm" 
						class="modifyForm_load btn btn-xs btn-icon width-1 fs-xl btn-success ml-1 waves-effect waves-themed">
						<i class="fal fa-pen"></i>
					</button>
					<button type="button" value="${edu.eduNo}" id="eduRemove" name="eduManage"
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
