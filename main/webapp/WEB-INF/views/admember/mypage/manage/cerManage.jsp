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

<c:set var="cerMap" value="${cerMap}" />
<c:set var="cerList" value="${cerMap.cerList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}
</style>

<div class="card-header py-2 d-flex align-items-center flex-wrap">
	<div class="card-title">자격증 관리 중</div>
	<button onclick="registForm_load('cerRegistForm')"
		class="btn btn-xs btn-icon width-1 fs-xl btn-info ml-auto waves-effect waves-themed">
		<i class="fal fa-plus"></i>
	</button>
	<button onclick="nonCheck_reload()"
		class="btn btn-xs btn-icon width-1 fs-xl btn-primary ml-1 waves-effect waves-themed">
		<i class="fal fa-reply"></i>
	</button>
</div>
<form class="needs-validation" novalidate="" method="post" id="cerForm">
<table class="table" id="cerForm_section">
	<thead>
		<tr>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">주최기관</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">자격증명</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">발급일</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">갱신일</th>
			<th class="text-center border-top-0 table-scale-border-bottom fw-700">Action</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty cerList}">
			<tr>
				<td class="text-center fw-700" colspan="5">등록된 자격증 정보가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach items="${cerList}" var="cer">
			<tr>
				<td class="text-center">${cer.cerHost}</td>
				<td class="text-center">${cer.cerName}</td>
				<td class="text-center"><fmt:formatDate
						value="${cer.cerSdate }" pattern="yyyy-MM-dd" /></td>
				<td class="text-center"><c:if test="${cer.cerEdate == null}">
						<span class="badge badge-info">유효기간없음</span>
					</c:if> <c:if test="${cer.cerEdate < today}">
						<span class="badge badge-danger"> 갱신기간만료</span>
					</c:if> <c:if test="${cer.cerEdate > today}">
						<fmt:formatDate value="${cer.cerEdate }" pattern="yyyy-MM-dd" />
					</c:if></td>
				<td class="text-center">
					<button type="button" value="${cer.cerNo}" id="cerModify" name="cerModifyForm" 
						class="modifyForm_load btn btn-xs btn-icon width-1 fs-xl btn-success ml-1 waves-effect waves-themed">
						<i class="fal fa-pen"></i>
					</button>
					<button type="button" value="${cer.cerNo}" id="cerRemove" name="cerManage"
						class="remove_load btn btn-xs btn-icon width-1 fs-xl btn-danger ml-1 waves-effect waves-themed">
						<i class="fal fa-times"></i>
					</button>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</form>

<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>