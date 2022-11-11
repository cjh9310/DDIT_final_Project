<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<main id="js-page-content" role="main" class="page-content">
	<div id="helper-filter-list">
		<div class="row">
			<div class="col-xl-4">
				<div id="panel-4a" class="panel" style="height: 44.3%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="shadow shadow- inset presets">AI에게 채용공고
							추천받기</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<form id="recruitForm">
								<div class="form-group">
									<label class="form-label" for="single-default"> 학과계열 선택 </label>
									<select name="input1" class="select2 form-control w-100"
										id="single-default">
										<optgroup label="업종">
											<option value="0">고교 인문계열</option>
											<option value="1">고교 실업계열</option>
											<option value="2">고교 예체능계열</option>
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
									<label class="form-label" for="single-label"> 학점범위 선택 </label>
									<select name="input2" class="select2 form-control"
										id="single-label">
										<optgroup label="연차범위">
											<option value="0">고졸</option>
											<option value="1">2.1 ~ 2.5</option>
											<option value="2">2.6 ~ 3.0</option>
											<option value="3">3.1 ~ 3.5</option>
											<option value="4">3.6 ~ 4.0</option>
											<option value="5">4.1 ~ 4.5</option>
										</optgroup>
									</select>
								</div>
								<div class="w-100">
									<div class="text-center">
										<input type="button" id="recruitSubmit" onclick="ai4_submit()">
										</input>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div id="panel-4a" class="panel" style="height: 53%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="shadow shadow- inset presets">나의 채용공고 스크랩
							리스트</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content ai1result">
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
						<h2 data-filter-tags="hover background">AI의 채용공고 추천내역</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row" id="ai4panel">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp" %>
