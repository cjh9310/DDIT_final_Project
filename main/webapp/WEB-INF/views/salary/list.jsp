<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="salaryList" value="${dataMap.salaryList }" />
<c:set var="coSalList" value="${dataMap.coSalList }" />
<c:set var="typeSalList" value="${dataMap.typeSalList }" />
<c:set var="dongguList" value="${regionBySalaryMap.regionList1}" />
<c:set var="joongguList" value="${regionBySalaryMap.regionList2}" />
<c:set var="seoguList" value="${regionBySalaryMap.regionList3}" />
<c:set var="yusungguList" value="${regionBySalaryMap.regionList4}" />
<c:set var="daedukguList" value="${regionBySalaryMap.regionList5}" />





<main id="js-page-content" role="main" class="page-content">
<head>
	<style>
  		#word {  
      max-width:10px;
      overflow:hidden;
      text-overflow:ellipsis;
      white-space:nowrap;
	</style>
</head>
<body>

<ol class="breadcrumb page-breadcrumb">
	<li class="breadcrumb-item"><a href="javascript:void(0);">연봉</a></li>
	<li class="breadcrumb-item">연봉 리스트</li>
	<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
		class="js-get-date"></span></li>
</ol>

<!--                              여기부터                                                                 -->
<div style="padding: 0px 150px 0px 150px">
	<div class="row">
		<div class="col-lg-4">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>지역별 top10</h2>
				</div>
				<div class="panel-content">
					<div class="panel-container show">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab_direction-1" role="tab" aria-selected="false">동구</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab_direction-2" role="tab" aria-selected="false">중구</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab_direction-3" role="tab" aria-selected="false">서구</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab_direction-4" role="tab" aria-selected="false">유성구</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab_direction-5" role="tab" aria-selected="false">대덕구</a></li>
						</ul>
						<div class="tab-content p-3">
							<div class="tab-pane fade" id="tab_direction-1" role="tabpanel" style="height: 510px;">
								<div style="text-align: right"></div>
								<table id="searchRank" class="table table-bordered">
									<colgroup>
										<col style="width: 60px;">
										<col style="width: 210px;">
										<col style="width: *;">
									</colgroup>
									<thead class="bg-success-100">
										<tr>
											<th style="text-align: center" scope="col">순위</th>
											<th style="text-align: center" scope="col">기업명</th>
											<th style="text-align: center" scope="col" id="pay">평균연봉(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="loop_flag" value="false" />
										<c:forEach items="${dongguList}" var="donggu">
											<tr>
												<td style="text-align: center">${donggu.salRank}</td>
												<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title"=${donggu.coName}">${donggu.coName}</td>
												<td style="text-align: right"><fmt:formatNumber
														value="${donggu.coSal}" pattern="#,###" /></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade active show" id="tab_direction-2" style="height: 510px;"
								role="tabpanel">
								<div style="text-align: right;"></div>
								<table id="searchRank" class="table table-bordered">
									<colgroup>
										<col style="width: 60px;">
										<col style="width: 210px;">
										<col style="width: *;">
									</colgroup>
									<thead class="bg-success-100">
										<tr>
											<th style="text-align: center" scope="col">순위</th>
											<th style="text-align: center" scope="col">기업명</th>
											<th style="text-align: center" scope="col">평균연봉(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${joongguList}" var="joonggu">
											<tr>
												<td style="text-align: center">${joonggu.salRank}</td>
												<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${joonggu.coName}">${joonggu.coName}</td>
												<td style="text-align: right"><fmt:formatNumber
														value="${joonggu.coSal}" pattern="#,###" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade" id="tab_direction-3" role="tabpanel" style="height: 510px;">
								<div style="text-align: right"></div>
								<table id="searchRank" class="table table-bordered">
									<colgroup>
										<col style="width: 60px;">
										<col style="width: 210px;">
										<col style="width: *;">
									</colgroup>
									<thead class="bg-success-100">
										<tr>
											<th style="text-align: center" scope="col">순위</th>
											<th style="text-align: center" scope="col">기업명</th>
											<th style="text-align: center" scope="col">평균연봉(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${seoguList}" var="seogu">
											<tr>
												<td style="text-align: center">${seogu.salRank}</td>
												<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${seogu.coName}">${seogu.coName}</td>
												<td style="text-align: right"><fmt:formatNumber
														value="${seogu.coSal}" pattern="#,###" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade" id="tab_direction-4" role="tabpanel" style="height: 510px;">
								<div style="text-align: right"></div>
								<table id="searchRank" class="table table-bordered">
									<colgroup>
										<col style="width: 60px;">
										<col style="width: 210px;">
										<col style="width: *;">
									</colgroup>
									<thead class="bg-success-100">
										<tr>
											<th style="text-align: center" scope="col">순위</th>
											<th style="text-align: center" scope="col">기업명</th>
											<th style="text-align: center" scope="col">평균연봉(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${yusungguList}" var="yusunggu">
											<tr>
												<td style="text-align: center">${yusunggu.salRank}</td>
												<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${yusunggu.coName}">${yusunggu.coName}</td>
												<td style="text-align: right"><fmt:formatNumber
														value="${yusunggu.coSal}" pattern="#,###" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade" id="tab_direction-5" role="tabpanel" style="height: 510px;">
								<div style="text-align: right"></div>
								<table id="searchRank" class="table table-bordered">
									<colgroup>
										<col style="width: 60px;">
										<col style="width: 210px;">
										<col style="width: *;">
									</colgroup>
									<thead class="bg-success-100">
										<tr>
											<th style="text-align: center" scope="col">순위</th>
											<th style="text-align: center" scope="col">기업명</th>
											<th style="text-align: center" scope="col">평균연봉(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${daedukguList}" var="daedukgu">
											<tr>
												<td style="text-align: center">${daedukgu.salRank}</td>
												<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${daedukgu.coName}">${daedukgu.coName}</td>
												<td style="text-align: right"><fmt:formatNumber
														value="${daedukgu.coSal}" pattern="#,###" /></td>
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
		<div class="col-lg-4">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>대전기업별 평균연봉 TOP10</h2>
				</div>
				<div class="panel-container show">
					<div class="panel-content" style="height: 580px;">
						<p class="text-muted"></p>
						<div style="text-align: right; margin-top: 40px;"></div>
						<table id="" class="table table-bordered">
							<colgroup>
								<col style="width: 60px;">
								<col style="width: 210px;">
								<col style="width: *;">
							</colgroup>
							<thead class="bg-success-100">
								<tr>
									<th style="text-align: center" scope="col">순위</th>
									<th style="text-align: center" scope="col">기업명</th>
									<th style="text-align: center" scope="col">평균연봉(원)</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${coSalList}" var="cosal">
									<tr>
										<td style="text-align: center">${cosal.salRank}</td>
										<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${cosal.coName}">${cosal.coName}</td>
										<td style="text-align: right"><fmt:formatNumber
												value="${cosal.coSal}" pattern="#,###" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div id="panel-1" class="panel">
				<div class="panel-hdr">
					<h2>업종별 평균연봉 순위</h2>
				</div>
				<div class="panel-container show">
					<div class="panel-content" style="height: 580px;">
						<p class="text-muted"></p>
						<div style="text-align: right; margin-top: 40px;"></div>
						<table id="" class="table table-bordered">
							<colgroup>
								<col style="width: 60px;">
								<col style="width: 210px;">
								<col style="width: *;">
							</colgroup>
							<thead class="bg-success-100">
								<tr>
									<th style="text-align: center" scope="col">순위</th>
									<th style="text-align: center" scope="col">기업명</th>
									<th style="text-align: center" scope="col">평균연봉(원)</th>
								</tr>
							</thead>
							<tbody id="">
								<c:forEach items="${typeSalList}" begin="0" end="9"
									var="typeSal" varStatus="status">
									<tr>
										<td style="text-align: center">${status.index + 1}</td>
										<td id="word" data-toggle="tooltip" data-placement="top" title=""
													data-original-title="${typeSal.coName}">${typeSal.recIndtpcdnm}</td>
										<td style="text-align: right"><fmt:formatNumber
												value="${typeSal.coSal}" pattern="#,###" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<select class="form-control col-md-3" name="perPageNum" id="perPageNum"
		onchange="list_go_by_salary(1);" style="display: none;">
		<option value="10">정렬개수</option>
		<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
		<option value="50" ${cri.perPageNum == 50 ? 'selected':''}>50개씩</option>
		<option value="100" ${cri.perPageNum == 100 ? 'selected':''}>100개씩</option>
	</select>
	<div class="row justify-content-between">
		<select class="form-control mt-3 ml-3 mb-1 " name="searchType"
			style="width: 120px;" id="searchType" onchange="list_go_by_salary(1)">
			<option>정렬기준순</option>
			<option value="s" ${cri.searchType eq 's' ? 'selected':'' }>연봉높은순</option>
			<option value="y" ${cri.searchType eq 'y' ? 'selected':'' }>매출액높은순</option>
			<option value="p" ${cri.searchType eq 'p' ? 'selected':'' }>사원많은순</option>
		</select> <input style="display: none;" form-control" type="text"
			name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" />

		<div class="mr-3 mt-3">
			<div class="input-group-append">
				<input id="button-addon4" type="text" class="form-control"
					placeholder="기업명을 입력해주세요" aria-label=""
					aria-describedby="button-addon4">
				<div class="input-group-text">
					<i class="fal fa-search fs-xl"></i>
				</div>
			</div>
		</div>

	</div>

	<table id="dt-basic-example"
		class="table table-bordered table-hover table-striped w-100 mb-5">
		<thead class="bg-success-100">

			<tr>
				<th style="text-align: center">기업명</th>
				<th style="text-align: center">업종</th>
				<th style="text-align: center">매출액(백만원)</th>
				<th style="text-align: center">사원수(명)</th>
				<th style="text-align: center">평균연봉(원)</th>
				<th style="text-align: center">근무지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${salaryList}" var="salary">
				<tr>
					<td>${salary.coName}</td>
					<td>${salary.recIndtpcdnm }</td>
					<td style="text-align: right">${salary.recYrsalesamt}</td>
					<td style="text-align: right">${salary.recPersonal }</td>
					<td style="text-align: right"><fmt:formatNumber
							value="${salary.coSal}" pattern="#,###" /></td>
					<td style="text-align: center">${salary.recRegion }</td>
				</tr>

			</c:forEach>


		</tbody>
	</table>
</div>

<%@ include file="../include/pagination.jsp"%> </main>

<script>
	function list_go_by_salary(page, url) {
		//alert(page);
		if (!url)
			url = "list.do";

		var jobForm = $('#jobForm');
		jobForm.find("[name='page']").val(page);
		jobForm.find("[name='perPageNum']").val(
				$('select[name="perPageNum"]').val());
		jobForm.find("[name='searchType']").val(
				$('select[name="searchType"]').val());
		jobForm.find("[name='keyword']").val(
				$('div.input-group>input[name="keyword"]').val());
		jobForm.attr({
			action : url,
			method : 'get'
		}).submit();
	}
</script>
<script type="text/javascript">
	function usingSelectorOption() {
		return $('#use-selector').is(':checked');
	}

	function updateCodeView() {
		$('#with-selector-code').toggle(usingSelectorOption());
		$('#without-selector-code').toggle(!usingSelectorOption());
	}

	$(function() {
		// Update code view when checkbox is toggled
		updateCodeView();
		$('#use-selector').click(function() {
			updateCodeView();
		});

		var startedDemo = false;
		$('#add-button')
				.click(
						function() {
							// One-time initialization
							if (!startedDemo) {
								if (usingSelectorOption()) {
									$('body').tooltip({
										selector : '.has-tooltip'
									});
								} else {
									$('.has-tooltip').tooltip();
								}

								startedDemo = true;
							}

							// Disable selector checkbox, put a tooltip on it, and show the buttons panel
							$('#use-selector').attr('disabled', 'disabled');
							$('#use-selector-label span').tooltip();
							$('#js_buttons_tooltip_demo').show();

							// Add a new button that triggers (or doesn't) a tooltip, with the appropriate message
							var button = null;
							if (usingSelectorOption()) {
								button = $('<button class="btn btn-block btn-success has-tooltip" data-title="Dynamic" data-content="This button was added dynamically by JavaScript" data-placement="top">Working dynamically added button</button>');
							} else {
								button = $('<button class="btn btn-block btn-default has-tooltip" data-title="Dynamic" data-content="This button was added dynamically by JavaScript" data-placement="top">Non-working dynamically added button</button>');
							}

							button.appendTo('#js_buttons_tooltip_demo');
						});
	});
</script>
<script>
const input1 = document.querySelector('#pay');
console.log(input1);

input1.addEventListener('change', function(e) {

	this.value = this.value.replace(/[^0-9]/g, '').replace(
			/\B(?=(\d{3})+(?!\d))/g, ',');
});
</script>
</body>

