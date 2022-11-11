<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	height: 431px;
}

.resume-area {
	width: 100%;
	height: 965px;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="col-xl-6 col-lg-6">
		<div class="row">
			<div class="col-lg-12 col-xl-12">
				<div id="panel-1" class="panel">
					<div class="panel-hdr">
						<h2>나의 이력서</h2>
						<div class="btn-group" id="js-demo-nesting" role="group"
							aria-label="Button group with nested dropdown">
							<div class="btn-group" role="group">
								<button type="button" class="btn btn-xs btn-info"
									aria-expanded="false">
									<div class="custom-control d-flex custom-switch ml-auto">
										<input id="demo-switch" type="checkbox" class="custom-control-input" checked="checked" /> 
										<label class="custom-control-label fw-500" for="demo-switch">이력서 공개 중</label>
									</div>
								</button>
							</div>
							<button type="button"
								class="savePdf btn btn-xs btn-info waves-effect waves-themed">PDF로
								다운로드</button>
						</div>
					</div>
					<div>
						<div class="col-xl-12 panel resume-area" style="padding: 0px;">
							<div class="custom-scroll">
								<div class="p-3" id="resume-area">
									<table class="table text-center" width="800">
										<thead>
											<tr>
												<th class="text-center border-top-0 fw-700" colspan="9"
													height="50"><font size="5">이 력 서</font></th>
											</tr>
										</thead>
										<tr>
											<td class="border p-0" rowspan="5"
												style="width: 126px; height: 176px;"><img
												style="display: block; width: 100%; height: auto;"
												src="<%=request.getContextPath()%>/member/getPicture.do?id=${loginUser.id}"
												alt="증명사진" /></td>
										</tr>
										<tr>
											<th colspan="3"
												class="thead-themed text-center border fw-700">성 명</th>
											<th colspan="3"
												class="thead-themed text-center border fw-700">생 년 월 일</th>
											<th colspan="3" width="80"
												class="thead-themed text-center border fw-700">E-mail</th>
										</tr>
										<tr>
											<td colspan="3" class="border">${loginUser.name}</td>
											<td colspan="3" class="border">${loginUser.indBir}</td>
											<td colspan="3" class="border">${loginUser.email}</td>
										</tr>
										<tr>
											<th colspan="3" width="50"
												class="thead-themed text-center border fw-700">연 락 처</th>
											<td colspan="6"
												class="thead-themed text-center border fw-700">주소</td>
										</tr>
										<tr>
											<th class="border">${loginUser.tel}</th>
											<td class="border" colspan="8">${loginUser.indAddr}</td>
										</tr>
									</table>
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">학력</div>
									</div>
									<table class="table">
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
													<td class="text-center"><c:if
															test="${edu.eduStatus == 0}">
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
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">경력</div>
									</div>
									<table class="table">
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
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">자격증</div>
									</div>
									<table class="table">
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
															<fmt:formatDate value="${cer.cerEdate }"
																pattern="yyyy-MM-dd" />
														</c:if></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div
										class="card-header py-2 d-flex align-items-center flex-wrap">
										<div class="card-title">자기소개서</div>
									</div>
									<table class="table">
										<thead>
											<tr>
												<th colspan="6"
													class="text-center border-top-0 table-scale-border-bottom fw-700">제목</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${empty cerList}">
												<tr>
													<td class="text-center fw-700" colspan="4">등록된 자기소개서가
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
															<fmt:formatDate value="${cer.cerEdate }"
																pattern="yyyy-MM-dd" />
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
			</div>
		</div>
	</div>
	<div class="col-xl-6 col-lg-6">
		<div>
			<div class="row">
				<div class="col-lg-12 col-xl-12">
					<div id="letManage">
						<div id="panel-1" class="panel">
							<div class="panel-hdr">
								<h2>자기소개서</h2>
								<div class="panel-toolbar ml-2">
									<button type="button" onclick="manage_rendering('letManage')"
										class="btn btn-xs btn-info waves-effect waves-themed">
										자기소개서 관리하기</button>
								</div>
							</div>
							<div>
								<div class="col-xl-12 panel panel-content" style="padding: 0px;">
									<div class="custom-scroll">
										<div class="p-3">
											<table class="table">
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
															<td class="text-center fw-700" colspan="5">등록된 학력
																정보가 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach items="${eduList}" var="edu">
														<tr>
															<td class="text-center">${edu.eduDep}</td>
															<td class="text-center">${edu.eduName}</td>
															<td class="text-center">${edu.eduMajor}</td>
															<td class="text-center">${edu.eduScore}</td>
															<td class="text-center"><c:if
																	test="${edu.eduStatus == 0}">
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
					</div>
					<div id="panel-1" class="panel">
						<div class="panel-hdr">
							<h2>첨부파일</h2>
							<div class="panel-toolbar ml-2">
								<button type="button"
									class="btn btn-xs btn-info waves-effect waves-themed">
									첨부파일 관리하기</button>
							</div>
						</div>
						<div>
							<div class="col-xl-12 panel panel-content" style="padding: 0px;">
								<div class="custom-scroll">
									<div class="p-3">
										<table class="table">
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
														<td class="text-center"><c:if
																test="${edu.eduStatus == 0}">
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
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<%@ include file="/WEB-INF/views/indmember/indmember_js.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/vendors.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app.bundle.js"></script>
<script>
	$("#resume_delete1").on("click", function() {
		bootbox.confirm({
			title : "정말로 삭제 하시겠습니까?",
			message : "삭제를 원하시면 예, 그렇지 않으면 아니오를 클릭하십시오.",
			buttons : {
				cancel : {
					label : ' 아니요'
				},
				confirm : {
					label : ' 예'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	$("#resume_delete2").on("click", function() {
		bootbox.confirm({
			title : "정말로 삭제 하시겠습니까?",
			message : "삭제를 원하시면 예, 그렇지 않으면 아니오를 클릭하십시오.",
			buttons : {
				cancel : {
					label : ' 아니요'
				},
				confirm : {
					label : ' 예'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	$("#resume_delete3").on("click", function() {
		bootbox.confirm({
			title : "정말로 삭제 하시겠습니까?",
			message : "삭제를 원하시면 예, 그렇지 않으면 아니오를 클릭하십시오.",
			buttons : {
				cancel : {
					label : ' 아니요'
				},
				confirm : {
					label : ' 예'
				}
			},
			callback : function(result) {
				console.log('This was logged in the callback: ' + result);
			}
		});
	});
	botton: [ {
		extend : 'pdfHtml5',
		text : 'PDF',
		titleAttr : 'Generate PDF',
		className : 'btn-outline-danger btn-sm mr-1'
	} ];
</script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/html2canvas.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/jspdf.min.js"></script>
<script>
	$(document).ready(
			function() {
				$('.savePdf').click(
						function() { // pdf저장 button id
							const pdfArea = document
									.querySelector('#resume-area');
							pdfArea.style.height = pdfArea.scrollHeight + 'px';
							html2canvas(pdfArea).then(
									function(canvas) { //저장 영역 div id
										// 캔버스를 이미지로 변환
										var imgData = canvas
												.toDataURL('image/png');

										var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
										var pageHeight = imgWidth * 1.414; // 출력 페이지 세로 길이 계산 A4 기준
										var imgHeight = canvas.height
												* imgWidth / canvas.width;
										var heightLeft = imgHeight;
										var margin = 10; // 출력 페이지 여백설정
										var doc = new jsPDF('p', 'mm');
										var position = 0;

										// 첫 페이지 출력
										doc.addImage(imgData, 'PNG', margin,
												position, imgWidth, imgHeight);
										heightLeft -= pageHeight;

										// 한 페이지 이상일 경우 루프 돌면서 출력
										while (heightLeft >= 20) {
											position = heightLeft - imgHeight;
											doc.addPage();
											doc.addImage(imgData, 'PNG', 0,
													position, imgWidth,
													imgHeight);
											heightLeft -= pageHeight;
										}

										// 파일 저장
										doc.save('file-name.pdf');
									});

						});

			});
</script>


