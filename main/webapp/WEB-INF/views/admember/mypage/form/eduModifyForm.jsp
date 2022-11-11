<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="edu" value="${education}" />

<table class="w-100">
<thead>
	<tr>
		<th colspan="5" class="text-center border-top-0 table-scale-border-bottom fw-700">
			학력 수정 정보를 입력해주세요.
		</th>
	</tr>
</thead>
<tbody>
	<c:if test="${empty education}">
		<tr>
			<td class="text-center fw-700" colspan="5">선택한 학력에 대해 정보가 없습니다.</td>
		</tr>
	</c:if>
	<tr>
		<td class="text-center">
			<label class="form-label" for="eduDep">
				<b>학과계열</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="eduDep" name="eduDep">
				<option value="${edu.eduDep}">학과계열 선택</option>
				<option value="고교 예체능계열">고교 예체능계열</option>
				<option value="고교 인문계열">고교 인문계열</option>
				<option value="고교 예체능계열">고교 예체능계열</option>
				<option value="인문계열">인문계열</option>
				<option value="사회계열">사회계열</option>
				<option value="교육계열">교육계열</option>
				<option value="자연계열">자연계열</option>
				<option value="공학계열">공학계열</option>
				<option value="의약계열">의약계열</option>
				<option value="예체능계열">예체능계열</option>
			</select> 
		</td>
		<td class="text-center">
			<label class="form-label" for="eduName">
				<b>학교</b><span class="text-danger">*</span>
			</label>
			<input type="hidden" class="form-control" id="eduNo" name="eduNo" value="${edu.eduNo}">
			<input type="text" class="form-control" id="eduName" name="eduName" value="${edu.eduName}">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduMajor">
				<b>전공</b>
			</label>
			<input type="text" class="form-control" id="eduMajor" name="eduMajor" value="${edu.eduMajor}">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduScore">
				<b>학점</b>
			</label>
			<input type="text" class="form-control" id="eduScore" name="eduScore" value="${edu.eduScore}">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduStatus">
				<b>상태</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="eduStatus" name="eduStatus">
				<option value="${edu.eduStatus}">
					상태 선택
				</option>
				<option value="0">재학중</option>
				<option value="1">졸업</option>
				<option value="2">휴학</option>
			</select>
		</td>
	</tr>
		<td colspan="2" class="text-center">
			<label class="form-label" for="eduSdate">
				<b>입학일</b>
			</label>
			<input class="form-control" id="eduSdate" type="date" name="eduSdate" 
				value="<fmt:formatDate value="${edu.eduSdate}" pattern="yyyy-MM-dd"/>" />
		</td>
		<td colspan="2" class="text-center">
			<label class="form-label" for="eduEdate">
				<b>졸업일</b>
			</label>  
			<input class="form-control" id="eduEdate" type="date" name="eduEdate" 
				value="<fmt:formatDate value="${edu.eduEdate}" pattern="yyyy-MM-dd"/>" />     
		</td>
		<td class="text-center" valign="middle">
			<label class="form-label" for="eduEdate">
				<b></b>
			</label>
			<button class="btn btn-outline-success waves-effect waves-themed w-100" style="margin-top: 5px;" 
			       type="button" name="eduModifySubmit" id="eduModifySubmit" onclick="modify_submit('eduForm')">제출</button>
		</td>
	<tr>
	</tr>
</tbody>
</table>

<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>
