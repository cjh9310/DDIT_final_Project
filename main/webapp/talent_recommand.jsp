<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<%-- <c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberList" value="${memberMap.memberList }" />
<c:set var="boardList" value="${boardMap.boardList }" />
<c:set var="noticeList" value="${noticeMap.noticeList }" />
<c:set var="pdsList" value="${pdsMap.pdsList }" /> --%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>
            Log4Job - 대전광역시 취업정보시스템
        </title>
        <meta name="description" content="Basic Tables">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <!-- base css -->
        <link id="vendorsbundle" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/vendors.bundle.css">
        <link id="appbundle" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/app.bundle.css">
        <link id="mytheme" rel="stylesheet" media="screen, print" href="#">
        <link id="myskin" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/skins/skin-master.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/template/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/template/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="<%=request.getContextPath()%>/resources/template/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/reactions/reactions.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/fullcalendar/fullcalendar.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/jqvmap/jqvmap.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/datagrid/datatables/datatables.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/fa-solid.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/fa-brands.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/theme-demo.css">
	  
    </head>
    <!-- BEGIN Body -->
    <body class="mod-bg-1 mod-nav-link " style=”overflow-x:auto;overflow-y:hidden”>
    	<script>
            /**
             *	This script should be placed right after the body tag for fast execution 
             *	Note: the script is written in pure javascript and does not depend on thirdparty library
             **/
            'use strict';

            var classHolder = document.getElementsByTagName("BODY")[0],
                /** 
                 * Load from localstorage
                 **/
                themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
                {},
                themeURL = themeSettings.themeURL || '',
                themeOptions = themeSettings.themeOptions || '';
            /** 
             * Load theme options
             **/
            if (themeSettings.themeOptions)
            {
                classHolder.className = themeSettings.themeOptions;
                console.log("%c✔ Theme settings loaded", "color: #148f32");
            }
            else
            {
                console.log("%c✔ Heads up! Theme settings is empty or does not exist, loading default settings...", "color: #ed1c24");
            }
            if (themeSettings.themeURL && !document.getElementById('mytheme'))
            {
                var cssfile = document.createElement('link');
                cssfile.id = 'mytheme';
                cssfile.rel = 'stylesheet';
                cssfile.href = themeURL;
                document.getElementsByTagName('head')[0].appendChild(cssfile);

            }
            else if (themeSettings.themeURL && document.getElementById('mytheme'))
            {
                document.getElementById('mytheme').href = themeSettings.themeURL;
            }
            /** 
             * Save to localstorage 
             **/
            var saveSettings = function()
            {
                themeSettings.themeOptions = String(classHolder.className).split(/[^\w-]+/).filter(function(item)
                {
                    return /^(nav|header|footer|mod|display)-/i.test(item);
                }).join(' ');
                if (document.getElementById('mytheme'))
                {
                    themeSettings.themeURL = document.getElementById('mytheme').getAttribute("href");
                };
                localStorage.setItem('themeSettings', JSON.stringify(themeSettings));
            }
            /** 
             * Reset settings
             **/
            var resetSettings = function()
            {
                localStorage.setItem("themeSettings", "");
            }

        </script>




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
										<input type="button" id="talentSubmit" onclick="ai1_submit()">
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
						<h2 data-filter-tags="hover background">AI의 인재 추천내역</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<div class="row" id="ai1panel">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
	<script type="text/x-handlebars-template" id="ai1-result-template">
	{{#each .}}
		<div class="col-sm-4 col-md-4 col-xl-3">
				<div
					class="rounded mb-g border border-faded bg-primary-500 color-fusion-300">
					<div class="p-3 hover-bg rounded">
						<strong>{{o1}}</strong>
						<p>
							<code>bg-primary-500 color-fusion-300</code>
						</p>
						<strong>{{o2}}</strong>
						<p>
							<code>{{o3}}</code>
						</p>
					</div>
				</div>
			</div>
	{{/each}}
</script>


	<script>
		function ai1_submit() {
			var talentForm = $("#talentForm").serialize();

			$
					.ajax({
						type : "post",
						url : "http://127.0.0.1:5000/recommand",
						data : talentForm,
						dataType : 'json',
						success : function(data) {
							alert("Flask complete")
							printData2(data, $('#ai1panel'),$('#ai1-result-template'));
						},
						error : function(request, status, error) {
							console.log(request, status, error);
						}
					});
		}

		function printData2(dataArr, target, templateObject) {
			var template = Handlebars.compile(templateObject.html());
	
			var html = template(dataArr);
			target.html(html);
		}
	</script>
  
		<!-- jQuery -->
		<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js" ></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/formplugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/vendors.bundle.js"></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/app.bundle.js"></script>
		<!--summernote  -->
		<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>
		<!-- common.js -->
		<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
		<script src="<%=request.getContextPath()%>/resources/template/js/formplugins/cropperjs/cropper.js"></script>

		<%@ include file="/WEB-INF/views/common/index_js.jsp" %>
		
        
    </body>
    <!-- END Body -->
</html>