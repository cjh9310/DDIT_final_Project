<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- END Page Header -->
<!-- BEGIN Page Content -->
<!-- the #js-page-content id is needed for some plugins to initialize -->
<main id="js-page-content" role="main" class="page-content">
<ol class="breadcrumb page-breadcrumb">
	<li class="breadcrumb-item"><a href="javascript:void(0);">SmartAdmin</a></li>
	<li class="breadcrumb-item">Tables</li>
	<li class="breadcrumb-item active">Basic Tables</li>
	<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
		class="js-get-date"></span></li>
</ol>
<div class="subheader">
	<h1 class="subheader-title">
		<i class='fal fa-th-list text-primary'></i> 상담신청내역 <small>
			Documentation and examples for opt-in styling of tables (given their
			prevelant use in JavaScript plugins) with Bootstrap. </small>
	</h1>
</div>
<div class="row">
	<div class="col-xl-12">




		<!--Table small-->
		<div id="panel-7" class="panel">
			<div class="panel-hdr">
				<h2>상담신청내역</h2>
				<div class="panel-toolbar">
					<button class="btn btn-panel" data-action="panel-collapse"
						data-toggle="tooltip" data-offset="0,10"
						data-original-title="Collapse"></button>
					<button class="btn btn-panel" data-action="panel-fullscreen"
						data-toggle="tooltip" data-offset="0,10"
						data-original-title="Fullscreen"></button>
					<button class="btn btn-panel" data-action="panel-close"
						data-toggle="tooltip" data-offset="0,10"
						data-original-title="Close"></button>
				</div>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<h5 class="frame-heading">상담신청내역테이블</h5>
					<div class="frame-wrap" style="text-align: center;">
						<table class="table table-sm table-hover m-0">
							<thead class="bg-primary-700" style="background-color: #08c5a7;">
								<tr>
									<th>No</th>
									<th>작성일</th>
									<th>상담유형</th>
									<th>제목</th>
									<th>진행과정</th>
									<th>담당상담사</th>
									<th>첨부파일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">2</th>
									<td>2022.10.08</td>
									<td>프로그램상담</td>
									<td>멘토링참여방법 문의입니다.</td>
									<td>상담사 배정중</td>
									<td>김유미</td>
									<td></td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>2022.09.21</td>
									<td>일반상담</td>
									<td>상담신청합니다.</td>
									<td>상담완료</td>
									<td>박지영</td>
									<td></td>
								</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</main>
