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

<c:set var="crrMap" value="${crrMap}" />
<c:set var="crrList" value="${crrMap.crrList }" />

<c:set var="cerMap" value="${cerMap}" />
<c:set var="cerList" value="${cerMap.cerList }" />

<style>
.panel-content {
	width: 100%;
	height: 990px;
	overflow: hidden;
}
</style>

<div class="panel-content">
	<div>
		<div class="row">
			<div class="col-sm-12 d-flex">
				<div class="table-responsive" id="indManage" style="overflow: hidden">
					<div
						class="card-header py-2 d-flex align-items-center flex-wrap">
						<div class="card-title">기본정보</div>
						<button onclick="manage_rendering('indManage')"
							class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
							나의 기본정보 수정하기</button>
					</div>
					<table class="table table-clean table-sm align-self-end" style="margin:40px 0px 40px 90px;">
						<tbody>
							<tr class="text-left">
								<td><strong>NAME:</strong></td>
								<td>${loginUser.name }</td>
								<td style="width: 100px;"></td>
								<td><strong>ADDRESS:</strong></td>
								<td>${loginUser.indAddr }</td>
							</tr>
							<tr class="text-left">
								<td><strong>BIRTH:</strong></td>
								<td>${loginUser.indBir }</td>
								<td style="width: 100px;"></td>
								<td><strong>TEL:</strong></td>
								<td>${loginUser.tel }</td>
							</tr>
							<tr class="text-left">
								<td><strong>GENDER:</strong></td>
								<td>${loginUser.indGender}</td>
								<td style="width: 100px;"></td>
								<td><strong>E-MAIL:</strong></td>
								<td>${loginUser.email}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="table-responsive" id="eduManage">
					<div
						class="card-header py-2 d-flex align-items-center flex-wrap">
						<div class="card-title">학력</div>
						<button onclick="manage_rendering('eduManage')"
							class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
							나의 학력 관리하기</button>
					</div>
					<table class="table" id="eduForm_section">
						<thead>
							<tr>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">학과계열</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">학교명</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">학과명</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">학점</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty eduList}">
								<tr>
									<td class="text-center fw-700" colspan="5">등록된 학력 정보가
										없습니다.</td>
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
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="table-responsive" id="crrManage">
					<div class="card-header py-2 d-flex align-items-center flex-wrap">
						<div class="card-title">경력</div>
						<button onclick="manage_rendering('crrManage')"
							class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
							나의 경력 관리하기</button>
					</div>
					<table class="table" id="crrForm_section">
						<thead>
							<tr>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">업종</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">회사명</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">직무</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">직책</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">입사일</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">퇴사일</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty crrList}">
								<tr>
									<td class="text-center fw-700" colspan="6">등록된 경력 정보가
										없습니다.</td>
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
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="table-responsive" id="cerManage">
					<div class="card-header py-2 d-flex align-items-center flex-wrap">
						<div class="card-title">자격증</div>
						<button onclick="manage_rendering('cerManage')"
							class="btn btn-xs btn-info ml-auto waves-effect waves-themed">
							나의 자격증 관리하기</button>
					</div>
					<table class="table" id="cerForm_section">
						<thead>
							<tr>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">주최기관</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">자격증명</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">발급일</th>
								<th
									class="text-center border-top-0 table-scale-border-bottom fw-700">갱신일</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty cerList}">
								<tr>
									<td class="text-center fw-700" colspan="4">등록된 자격증 정보가
										없습니다.</td>
								</tr>
							</c:if>
							<c:forEach items="${cerList}" var="cer">
								<tr>
									<td class="text-center">${cer.cerHost}</td>
									<td class="text-center">${cer.cerName}</td>
									<td class="text-center"><fmt:formatDate
											value="${cer.cerSdate }" pattern="yyyy-MM-dd" /></td>
									<td class="text-center"><c:if
											test="${cer.cerEdate == null}">
											<span class="badge badge-info">유효기간없음</span>
										</c:if> <c:if test="${cer.cerEdate < today}">
											<span class="badge badge-danger"> 갱신기간만료</span>
										</c:if> <c:if test="${cer.cerEdate > today}">
											<fmt:formatDate value="${cer.cerEdate }" pattern="yyyy-MM-dd" />
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
