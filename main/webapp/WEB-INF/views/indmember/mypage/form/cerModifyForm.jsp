<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="cer" value="${certificate}" />

<table class="w-100">
<thead>
	<tr>
		<th colspan="6" class="text-center border-top-0 table-scale-border-bottom fw-700">
			자격증 수정 정보를 입력해주세요.
		</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td class="text-center" colspan="3">
			<label class="form-label" for="cerName">
				<b>자격증명</b>
			</label>
			<input type="hidden" class="form-control" id="cerNo" name="cerNo" value="${cer.cerNo}">
			<input type="text" class="form-control" id="cerName" name="cerName" value="${cer.cerName}">
		</td>
		<td class="text-center" colspan="3">
			<label class="form-label" for="cerHost">
				<b>주최기관</b>
			</label>
			<input type="text" class="form-control" id="cerHost" name="cerHost" value="${cer.cerHost}">
		</td>
	</tr>
	<tr>
		<td colspan="2" class="text-center">
			<label class="form-label" for="cerSdate">
				<b>자격취득일</b>
			</label>
			<input class="form-control" id="cerSdate" type="date" name="cerSdate" 
				value="<fmt:formatDate value="${cer.cerSdate}" pattern="yyyy-MM-dd"/>" /> 
		</td>
		<td colspan="2" class="text-center">
			<label class="form-label" for="cerEdate">
				<b>자격만료일</b>
			</label>  
			<input class="form-control" id="cerEdate" type="date" name="cerEdate" 
				value="<fmt:formatDate value="${cer.cerEdate}" pattern="yyyy-MM-dd"/>" /> 
		</td>
		<td class="text-center" valign="middle" colspan="2">
			<label class="form-label">
				<b></b>
			</label>
			<button class="btn btn-outline-success waves-effect waves-themed w-100" style="margin-top: 5px;" 
			       type="button" name="cerModifySubmit" id="cerModifySubmit" onclick="modify_submit('cerForm')">제출</button>
		</td>
	</tr>
</tbody>
</table>

<%@ include file="/WEB-INF/views/indmember/indmember_js.jsp"%>

