<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template" id="ai1-result-template">
	{{#each .}}
		<div class="col-sm-3 col-md-3 col-xl-3">
			<div id="panel-1" style="height:410px;">
				<div style="text-align:center; margin-top: 15px; margin-bottom: 20px;" >
					<h3> <b>{{field}} 분야 </b></h3>
				</div>
           			<div style="height:300px;" class=" p-3 bg-primary-300 rounded overflow-hidden position-relative text-white">
					<div class="mh-100">
						<p style="text-align:center;">
							<code>공모전 이미지 예정</code>
						</p>
            	    	</div>
        			</div>  
  				<div style="text-align:center; margin-top: 15px;" >
            		{{title}}
            	</div>
			</div>
    	</div>
	{{/each}}
</script>
<script type="text/x-handlebars-template" id="ai2-result-template">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">고용동향 예측</span>
				<p>
					Easy Pie Charts
					<code>경제활동참가율</code>
					<code>고용률</code>
					<code>실업률</code>
				</p>
				<a href="javascript:ai2_submit();" class="btn btn-sm btn-outline-primary" >
								AI의 고용동향 예측 결과 -></a>
			</div>
		</div>
	{{#each .}}
		<div class="subheader-block d-none d-sm-flex align-items-center">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>EXPENSES</small>
				</span> <span class="fw-500 fs-xl d-block color-info-500">{{response1}}%</span>
			</div>
			<span
				class="js-easy-pie-chart color-primary-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="45" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
		<div
			class="subheader-block d-none d-sm-flex align-items-center border-faded border-right-0 border-top-0 border-bottom-0 ml-3 pl-3">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>MY
						PROFITS</small>
				</span> <span class="fw-500 fs-xl d-block color-danger-500">{{response2}}%
				</span>
			</div>
			<span
				class="js-easy-pie-chart color-danger-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="86" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
		<div
			class="subheader-block d-none d-sm-flex align-items-center border-faded border-right-0 border-top-0 border-bottom-0 ml-3 pl-3">
			<div class="d-inline-flex flex-column justify-content-center mr-3">
				<span class="fw-300 fs-xs d-block opacity-50"> <small>MY
						PROFITS</small>
				</span> <span class="fw-500 fs-xl d-block color-danger-500">{{response3}}%
				</span>
			</div>
			<span
				class="js-easy-pie-chart color-danger-500 position-relative d-flex align-items-center justify-content-center"
				data-percent="86" data-scalelength="2"> <span
				class="js-percent d-flex align-items-center justify-content-center position-absolute pos-left pos-right pos-top pos-bottom"></span>
			</span>
		</div>
	{{/each}}
</script>
<script type="text/x-handlebars-template" id="ai3-result-template">
	{{#each .}}
			<div class="col-sm-4 col-md-4 col-xl-3">
                <div class="p-3 bg-primary-300 rounded overflow-hidden position-relative text-white mb-g">
                    <div class="">
						<p>
							<code>AI Pick Company!</code>
						</p>
                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                            <small class="m-0 l-h-n">기업명 : {{CO_NAME}}</small>
                        </h3>
                    </div>
                    <i class="fal fa-user position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size:6rem"></i>
                </div>
            </div>
	{{/each}}
</script>
<script type="text/x-handlebars-template" id="ai4-result-template">
	{{#each .}}
		<div class="col-sm-4 col-md-4 col-xl-3">
                <div class="p-3 bg-primary-300 rounded overflow-hidden position-relative text-white mb-g">
                    <div class="">
						<p>
							<code>AI Pick! ID-{{id}}</code>
						</p>
                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                            <small class="m-0 l-h-n">회사명 : {{CO_NAME}}</small>
                            <small class="m-0 l-h-n">공고명 : {{REC_WANTEDTITLE}}</small>
                        </h3>
                    </div>
                    <i class="fal fa-user position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size:6rem"></i>
                </div>
            </div>
	{{/each}}
</script>
<script type="text/x-handlebars-template" id="ai5-result-template">
	{{#each .}}
			<div class="col-sm-4 col-md-4 col-xl-3">
                <div class="p-3 bg-primary-300 rounded overflow-hidden position-relative text-white mb-g">
                    <div class="">
						<p>
							<code>AI Pick! ID-{{id}}</code>
						</p>
                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                            <small class="m-0 l-h-n">이  름 : {{name}}</small>
                            <small class="m-0 l-h-n">나  이 : {{age}}</small>
                            <small class="m-0 l-h-n">학  력 : {{indFedu}}</small>
                            <small class="m-0 l-h-n">학  교 : {{eduName}}</small>
                            <small class="m-0 l-h-n">전  공 : {{eduDep}}</small>
                        </h3>
                    </div>
                    <i class="fal fa-user position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size:6rem"></i>
                </div>
            </div>
	{{/each}}
</script>
<script type="text/x-handlebars-template" id="ai6-result-template">
	{{#each .}}
	<div id="recommendContent">
		<br>
		<h1 style="text-align: center">
			<b>"{{response1}}" 업종의 "{{response2}}"년차의 연봉은</b>
		</h1>
		<h1 style="text-align: center">
			<b>"{{response3}}"만원 입니다." </b>
		</h1>
	</div>
{{/each}}
</script>
<script>
	function ai1_submit() {
		var contestForm = $("#contestForm").serialize();

		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/contest",
			data : contestForm,
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai1panel'), $('#ai1-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai2_submit() {

		$.ajax({
			type : "get",
			url : "http://127.0.0.1:5000/trend",
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai2panel'), $('#ai2-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai3_submit() {
		var companyForm = $("#companyForm").serialize();

		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/company",
			data : companyForm,
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai3panel'), $('#ai3-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai4_submit() {
		var recruitForm = $("#recruitForm").serialize();
		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/recruit",
			data : recruitForm,
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai4panel'), $('#ai4-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai5_submit() {
		var talentForm = $("#talentForm").serialize();

		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/talent",
			data : talentForm,
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai5panel'), $('#ai5-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai6_submit() {
		var salaryForm = $("#salaryForm").serialize();

		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/salary",
			data : salaryForm,
			dataType : 'json',
			success : function(data) {
				printDataByAI(data, $('#ai6panel'), $('#ai6-result-template'));
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function ai7_submit() {
		var busicardForm = $("#busicardForm").serialize();
		
		$.ajax({
			type : "post",
			url : "http://127.0.0.1:5000/busicard",
			data : busicardForm,
			dataType : 'json',
			success : function(data) {
				/* window.location.replace(location.href); */
				document.location.reload();
				console.log(data);
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});
	}
</script>
<script>
	function printDataByAI(dataArr, target, templateObject) {
		console.log("handlebars dataArr : " + dataArr);
		var template = Handlebars.compile(templateObject.html());
		var html = template(dataArr);
		target.html(html);
	}
</script>
