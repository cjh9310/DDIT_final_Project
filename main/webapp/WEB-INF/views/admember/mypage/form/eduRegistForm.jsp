<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="w-100">
<thead>
	<tr>
		<th colspan="6" class="text-center border-top-0 table-scale-border-bottom fw-700">
			경력 정보를 입력해주세요.
		</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td class="text-center">
			<label class="form-label" for="eduDep">
				<b>학과계열</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="eduDep" name="eduDep">
				<option>학과계열선택</option>
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
			<input type="text" class="form-control" id="eduName" name="eduName" placeholder="학교 입력">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduMajor">
				<b>전공</b>
			</label>
			<input type="text" class="form-control" id="eduMajor" name="eduMajor" placeholder="학과 입력">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduScore">
				<b>학점</b>
			</label>
			<input type="text" class="form-control" id="eduScore" name="eduScore" placeholder="학점 입력">
		</td>
		<td class="text-center">
			<label class="form-label" for="eduStatus">
				<b>상태</b><span class="text-danger">*</span>
			</label>
			<select class="custom-select"
				id="eduStatus" name="eduStatus">
				<option>상태 선택</option>
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
			<input class="form-control" id="eduSdate" type="date" name="eduSdate">
		</td>
		<td colspan="2" class="text-center">
			<label class="form-label" for="eduEdate">
				<b>졸업일</b>
			</label>  
			<input class="form-control" id="eduEdate" type="date" name="eduEdate">
		</td>
		<td class="text-center" valign="middle">
			<label class="form-label">
				<b></b>
			</label>  
			<button class="regist_load btn btn-outline-success waves-effect waves-themed w-100" style="margin-top: 5px;" 
			        name="eduForm" type="button">제출</button>
		</td>
	<tr>
	</tr>
</tbody>
</table>

<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>