<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
img {
	position: absolute;
	top: 240px;
	width: 93%;
	height: 53%;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div id="helper-filter-list">
	<div class="row" style="height: 450px;">
		<div class="col-sm-4">
			<div id="panel-4a" class="panel" style="height: 460px;">
				<div class="panel-hdr">
					<b>AI에게 공모전 추천받기</b>
				</div>
				<div class="panel-container show">
					<div class="panel-content">
						<form id="contestForm">
							<div class="form-group">
								<label class="form-label" for="single-default"> 학과선택 </label> <select
									name="input1" class="select2 form-control w-100"
									id="single-default">
									<optgroup label="업종">
										<option value="0">(고졸) 인문계열</option>
										<option value="1">(고졸) 실업계열</option>
										<option value="2">(고졸) 예체능계열</option>
										<option value="3">인문계열</option>
										<option value="4">사회계열</option>
										<option value="5">교육계열</option>
										<option value="6">자연계열</option>
										<option value="7">공학계열</option>
										<option value="8">의약계열</option>
										<option value="9">예체능계열</option>
									</optgroup>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label" for="single-label"> (국가기술) 자격증
								</label> <select name="input2" class="select2 form-control"
									id="single-label">
									<optgroup label="연차범위">
										<option value="0">경영,회계,사무</option>
										<option value="1">보건,의료</option>
										<option value="2">사회복지,종교</option>
										<option value="3">문화,예술,디자인,방송</option>
										<option value="4">운전,운송</option>
										<option value="5">영업,판매</option>
										<option value="6">이용,숙박,여행,오락,스포츠</option>
										<option value="7">음식서비스</option>
										<option value="8">건설</option>
										<option value="9">광업자원</option>
										<option value="9">기계</option>
										<option value="9">재료</option>
										<option value="9">화학</option>
										<option value="9">섬유,의복</option>
										<option value="9">전기,전자</option>
										<option value="9">정보통신</option>
										<option value="9">식품,가공</option>
										<option value="9">인쇄,목재,가구,공예</option>
										<option value="9">농림어업</option>
										<option value="9">안전관리</option>
										<option value="9">환경,에너지</option>
									</optgroup>
								</select>
							</div>
							<div class="w-100">
								<div class="text-center">
									<button type="button"
										class="btn btn-success btn-pills waves-effect waves-themed"
										id="contestSubmit" onclick="ai1_submit()">등록</button>
								</div>
							</div>
						</form>
					</div>

					<div class="panel-content" id="aiimg1">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/community/report/ai4.png">
					</div>

				</div>
			</div>
		</div>
		<div class="col-xl-8">
			<div id="panel-1" class="panel">
				<div class="panel-container show">
					<div class="panel-content">
						<div class="row" id="ai1panel">

							<!-- ----------------------	 -->

							<!-- -----------------------	 -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp"%>
