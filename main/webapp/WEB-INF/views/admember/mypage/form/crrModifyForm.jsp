<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date">
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss" />
</c:set>

<c:set var="crr" value="${career}" />

<table class="w-100">
<thead>
	<tr>
		<th colspan="6" class="text-center border-top-0 table-scale-border-bottom fw-700">
			경력 수정 정보를 입력해주세요.
		</th>
	</tr>
</thead>
<tbody>
	<c:if test="${empty career}">
		<tr>
			<td class="text-center fw-700" colspan="5">선택한 경력에 대해 정보가 없습니다.</td>
		</tr>
	</c:if>
	<tr>
		<td class="text-center">
			<label class="form-label" for="crrSector">
				<b>업종</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="crrSector" name="crrSector">
				<option value="${crr.crrSector}">업종 선택</option>
				<option value="서비스업">서비스업</option>
				<option value="제조·화학">제조·화학</option>
				<option value="IT·웹·통신">IT·웹·통신</option>
				<option value="은행·금융업">은행·금융업</option>
				<option value="미디어·디자인">미디어·디자인</option>
				<option value="교육업">교육업</option>
				<option value="의료·제약·복지">의료·제약·복지</option>
				<option value="판매·유통">판매·유통</option>
				<option value="건설업">건설업</option>
				<option value="기관·협회   ">기관·협회</option>
			</select>
		</td>
		<td class="text-center">
			<label class="form-label" for="crrCorname">
				<b>회사명</b><span class="text-danger">*</span>
			</label>
			<input type="hidden" class="form-control" id="crrNo" name="crrNo" value="${crr.crrNo}">
			<input type="text" class="form-control" id="crrCorname" name="crrCorname" value="${crr.crrCorname}">
		</td>
		<td class="text-center">
			<label class="form-label" for="crrJob">
				<b>직무</b>
			</label>
			<input type="text" class="form-control" id="crrJob" name="crrJob" value="${crr.crrJob}">
		</td>
		<td class="text-center">
			<label class="form-label" for="crrPosition">
				<b>직책</b>
			</label>
			<input type="text" class="form-control" id="crrPosition" name="crrPosition" value="${crr.crrPosition}">
		</td>
		<td class="text-center">
			<label class="form-label" for="crrSal">
				<b>연봉</b><span class="text-danger">*</span>
			</label>
			<input type="text" class="form-control" id="crrSal" name="crrSal" value="${crr.crrSal}">
		</td>
		<td class="text-center">
			<label class="form-label" for="crrStatus">
				<b>연차</b>
			</label>
			<select class="custom-select"
				id="crrAnnual" name="crrAnnual">
				<option value="${crr.crrAnnual}">연차 선택</option>
				<c:forEach varStatus="status" begin="1" end="50" step="1">
					<option value="${status.count}">${status.count}년차</option>
				</c:forEach>
			</select>
		</td>
	</tr>
		<td colspan="2" class="text-center">
			<label class="form-label" for="crrSdate">
				<b>입사일</b>
			</label>
			<input class="form-control" id="crrSdate" type="date" name="crrSdate" 
				value="<fmt:formatDate value="${crr.crrSdate}" pattern="yyyy-MM-dd"/>" />   
		</td>
		<td colspan="2" class="text-center">
			<label class="form-label" for="crrEdate">
				<b>퇴사일</b>
			</label>  
			<input class="form-control" id="crrEdate" type="date" name="crrEdate" 
				value="<fmt:formatDate value="${crr.crrEdate}" pattern="yyyy-MM-dd"/>" />   
		</td>
		<td class="text-center">
			<label class="form-label" for="crrStatus">
				<b>상태</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="crrStatus" name="crrStatus">
				<option value="${crr.crrStatus}">상태 선택</option>
				<option value="0">재직중</option>
				<option value="1">퇴사</option>
			</select>
		</td>
		<td class="text-center" valign="middle">
			<label class="form-label">
				<b></b>
			</label>
			<button class="btn btn-outline-success waves-effect waves-themed w-100" style="margin-top: 5px;" 
			       type="button" name="crrModifySubmit" id="crrModifySubmit" onclick="modify_submit('crrForm')">제출</button>
		</td>
	<tr>
	</tr>
</tbody>
</table>

<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>

