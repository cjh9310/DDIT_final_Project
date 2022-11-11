<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main id="js-page-content" role="main" class="page-content">
<div id="helper-filter-list">
	<div class="row">
		<div class="col-md-6">
			<div id="panel-4a" class="panel" style="height: 89%;">
				<div class="panel-hdr">
					<h2 data-filter-tags="shadow shadow- inset presets">AI에게 연봉
						추천받기</h2>
				</div>
				<div class="panel-container show">
					<div class="panel-content">
						<form id="salaryForm">
							<div class="form-group mt-3">
								<label class="form-label" for="single-default"> 업종 선택 </label> <select
									name="input1" class="select2 form-control w-100"
									id="single-default">

									<optgroup label="업종">
										<option value="0">서비스업</option>
										<option value="1">제조·화학</option>
										<option value="2">IT·웹·통신</option>
										<option value="3">은행·금융업</option>
										<option value="4">미디어·디자인</option>
										<option value="5">교육업</option>
										<option value="6">의료·제약·복지</option>
										<option value="7">판매·유통</option>
										<option value="8">건설업</option>
										<option value="9">기관·협회</option>
									</optgroup>
								</select>
							</div>
							<div class="form-group mt-5">
								<label class="form-label" for="single-label"> 연차범위 선택 </label> <select
									name="input2" class="select2 form-control" id="single-label">
									<optgroup label="연차범위">
										<option value="0">0 ~ 3년차</option>
										<option value="1">4 ~ 7년차</option>
										<option value="2">8 ~ 11년차</option>
										<option value="3">12 ~ 15년차</option>
										<option value="4">16 ~ 19년차</option>
										<option value="5">20 ~ 23년차</option>
										<option value="6">24 ~ 27년차</option>
										<option value="7">28 ~ 31년차</option>
										<option value="8">32 ~ 35년차</option>
										<option value="9">36 ~ 40년차</option>
									</optgroup>
								</select>
							</div>
							<div class="w-100">
								<div class="text-center mt-5">
									<input type="button" value="확인하기" class=" btn-success" id="salarySubmit" onclick="ai6_submit();changeimg();this.onclick=null; " >
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-6">
			<div id="panel-1" class="panel" style="height: 50%;">
				<div class="panel-hdr">
					<h2 data-filter-tags="hover background">AI의 연봉 추천내역</h2>
				</div>
				<div id="ai6panel">
				 <img src="<%=request.getContextPath()%>/resources/images/물음표1.png" width="510" >
					
				</div>
				<br>

				<div class="panel-container show">
					<div class="panel-content">
						<div class="row" id=""></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
function changeimg(){
	var img1 = $("<img>");
	$(img1).attr('src', '<%=request.getContextPath()%>/resources/images/돈.png');
	$("#ai6panel").after(img1);
}

</script>
</main>
<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp" %>