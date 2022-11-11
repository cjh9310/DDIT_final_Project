<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<style>
.card-body {
	height: 334px;
}

.ai-spaced {
	height: 90px;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="card mb-4 w-100">
		<div
			class="card-body p-4 rounded position-relative align-items-center">
			<div class="d-flex align-items-center mb-g">
				<div class="p-0"
					style="width: 48.89px; height: 48.89px; margin-right: 10px;">
					<video muted autoplay
						style="display: block; width: auto; height: 100%;">
						<source
							src="<%=request.getContextPath()%>/resources/template/media/video/tensorflow_crop.mp4"
							type="video/mp4">
						<strong>Your browser does not support the video tag.</strong>
					</video>
				</div>
				<h1 class="fw-300 m-0 l-h-n">
					<span class="text-contrast"> AI Service List </span> <small
						class="fw-300 m-0 l-h-n"> 준비되어있는 AI Service 리스트를 살펴보세요. </small>
				</h1>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<ul class="mt-xs-3 list-spaced">
						<li>국가 통계 기반 고용동향 예측</li>
						<li>스크랩 정보를 통한 인재 추천</li>
						<li>학과 및 학점 정보를 통한 공모전 추천</li>
					</ul>
				</div>
				<div class="col-lg-6">
					<ul class="mt-xs-3 list-spaced">
						<li>학과 및 학점 정보를 통한 채용공고 추천</li>
						<li>업종 및 연차 정보를 통한 연봉 추천</li>
						<li>검색기록을 통한 기업 추천</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<!-- Start 고용동향 예측 -->
		<div class="col-xl-4 mb-4">
			<div class="card h-100 rounded overflow-hidden">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast">국가 통계 기반 고용동향 예측</span> <small
								class="fw-300 m-0 l-h-n"> Prediction of Employment
								Trends Based</small>
						</h1>
					</div>
					<div class="col">
						고용동향을 통해 보다 전략적인 취업 계획을 수립하세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
						</ul>
						<br> <a
							href="javascript:window.open('trend/recommand.do','AI의 고용동향 예측','fullscreen');"
							class="btn btn-sm btn-outline-primary"> AI의 고용동향 예측 이용하기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- End 고용동향 예측 -->
		<!-- Start 인재추천 -->
		<div class="col-xl-4 mb-4">
			<div class="card h-100 rounded overflow-hidden">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast">스크랩 정보틀 통한 인재 추천</span> <small
								class="fw-300 m-0 l-h-n"> Talent recommendation through
							</small>
						</h1>
					</div>
					<div class="col">
						원하는 인재상을 찾아보세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>기업이 원하는 인재상에 맞는 인재를 추천해드립니다.</li>
							<li>기업이 원하는 인재상에 맞는 인재를 추천해드립니다.</li>
							<li>기업이 원하는 인재상에 맞는 인재를 추천해드립니다.</li>
						</ul>
						<br> <a
							href="javascript:window.open('talent/recommand.do','AI의 인재 추천','fullscreen');"
							class="btn btn-sm btn-outline-primary">AI의 인재 추천 이용하기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- End 인재추천 -->
		<div class="col-xl-4 mb-4">
			<div class="card h-100 rounded overflow-hidden position-relative">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast">학과 및 자격증 정보를 통한 공모전 추천</span> <small
								class="fw-300 m-0 l-h-n"> Expressive, elegant syntax,
								ease of usage</small>
						</h1>
					</div>
					<div class="col">
						당신의 이력에 빛을 더해줄 공모전을 찾아보세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>당신을 더욱 빛나게 해줄 공모전을 추천해드립니다.</li>
							<li>당신을 더욱 빛나게 해줄 공모전을 추천해드립니다.</li>
							<li>당신을 더욱 빛나게 해줄 공모전을 추천해드립니다.</li>
						</ul>
						<a
							href="javascript:window.open('contest/recommand.do','AI의 공모전 추천','fullscreen');"
							class="btn btn-sm btn-outline-primary">AI의 공모전 추천 이용하기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4 mb-4">
			<!-- Ajax Flavor -->
			<div class="card h-100 rounded overflow-hidden position-relative">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast"> 학과 및 학점을 통한 채용공고 추천 </span> <small
								class="fw-300 m-0 l-h-n"> Expressive, elegant syntax,
								ease of usage </small>
						</h1>
					</div>
					<div class="col">
						원하는 인재상을 찾아보세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
						</ul>
						<a
							href="javascript:window.open('recruit/recommand.do','AI의 채용공고 추천','fullscreen');"
							class="btn btn-sm btn-outline-primary">AI의 채용공고 추천 이용하기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4 mb-4">
			<!-- Ajax Flavor -->
			<div class="card h-100 rounded overflow-hidden position-relative">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast"> 업종 및 연차 정보를 통한 연봉 추천 </span> <small
								class="fw-300 m-0 l-h-n"> Expressive, elegant syntax,
								ease of usage </small>
						</h1>
					</div>
					<div class="col">
						원하는 인재상을 찾아보세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
						</ul>
						<a
							href="javascript:window.open('salary/recommand.do','AI의 연봉 추천','fullscreen');"
							class="btn btn-sm btn-outline-primary"> AI의 연봉 추천 이용하기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4 mb-4">
			<!-- Ajax Flavor -->
			<div class="card h-100 rounded overflow-hidden position-relative">
				<div class="card-body p-4">
					<div class="d-flex align-items-center mb-g">
						<img
							src="<%=request.getContextPath()%>/resources/template/img/demo/laravel.png"
							class="mr-3">
						<h1 class="fw-300 m-0 l-h-n">
							<span class="text-contrast"> 검색 기록을 통한 기업 추천 </span> <small
								class="fw-300 m-0 l-h-n"> Expressive, elegant syntax,
								ease of usage </small>
						</h1>
					</div>
					<div class="col">
						원하는 인재상을 찾아보세요.
						<ul class="mt-3 list-spaced ai-spaced">
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
							<li>고용 관련 지표에 대한 향후 예측치를 제공해드립니다.</li>
						</ul>
						<a
							href="javascript:window.open('company/recommand.do','AI의 기업 추천','fullscreen');"
							class="btn btn-sm btn-outline-primary"> AI의 기업 추천 이용하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</main>
