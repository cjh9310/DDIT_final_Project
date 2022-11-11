<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<main id="js-page-content" role="main" class="page-content">
	<div id="helper-filter-list">
		<div class="row">
			<div class="col-xl-4">
				<div id="panel-4a" class="panel" style="height: 44.3%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="shadow shadow- inset presets">AI에게 기업
							추천받기</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<form id="companyForm">
								<input type="hidden" name="ind_id" value="${loginUser.id}" />
								<div class="w-100">
									<div class="text-center">
										<input type="button" id="companySubmit" onclick="ai3_submit()">
										</input>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-8">
				<div id="panel-1" class="panel" style="height: 100%;">
					<div class="panel-hdr">
						<h2 data-filter-tags="hover background">AI의 기업 추천내역</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row" id="ai3panel">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp" %>
