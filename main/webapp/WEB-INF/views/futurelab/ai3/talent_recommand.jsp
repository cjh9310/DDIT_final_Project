<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<main id="js-page-content" role="main" class="page-content">
	<div id="helper-filter-list">
		<div class="row">
			<div class="col-xl-4">
				<div id="panel-4a" class="panel" style="height: 44.3%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="shadow shadow- inset presets">AI에게 인재
							추천받기</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<form id="talentForm">
								<div class="form-group">
									<label class="form-label" for="single-default"> 업종 선택 </label>
									<select name="input1" class="select2 form-control w-100"
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
								<div class="form-group">
									<label class="form-label" for="single-label"> 연차범위 선택 </label>
									<select name="input2" class="select2 form-control"
										id="single-label">
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
								<div class="form-group">
									<label class="form-label" for="single-placeholder">
										학점범위 선택 </label> <select name="input3"
										class="select2-placeholder form-control"
										id="single-placeholder">
										<optgroup label="학점범위">
											<option value="0">고졸</option>
											<option value="1">0.0 ~ 1.0점</option>
											<option value="2">1.1 ~ 1.5점</option>
											<option value="3">1.6 ~ 2.0점</option>
											<option value="4">2.1 ~ 2.5점</option>
											<option value="5">2.6 ~ 3.0점</option>
											<option value="6">3.1 ~ 3.5점</option>
											<option value="7">3.6 ~ 4.0점</option>
											<option value="8">4.1 ~ 4.4점</option>
											<option value="9">4.5 만점</option>
										</optgroup>
									</select>
								</div>
								<div class="w-100">
									<div class="text-center">
										<input type="button" id="talentSubmit" onclick="ai5_submit()">
										</input>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div id="panel-4a" class="panel" style="height: 53%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="shadow shadow- inset presets">나의 인재 스크랩
							리스트</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content ai5result">
							<div class="row">
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-xl-4">
									<div
										class="p-3 rounded shadow-none bg-light mb-g border border-faded">
										<strong>Class</strong>
										<p>
											<code>.shadow-none</code>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-8">
				<div id="panel-1" class="panel" style="height: 100%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="hover background">AI의 인재 추천내역</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row" id="ai5panel">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp" %>
