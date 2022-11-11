<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

	#imgContainer {
		margin-top: 50px;
	}
	
	#background {
		background-image: url('<%=request.getContextPath()%>/resources/template/img/community/report/report.png');
		background-repeat: no-repeat;
		background-size: contain;
		background-position: center;
	}
	
	#mytable {
		border-top: 2px solid;
		border-bottom: 1px solid;
		width: 90%;
	}
	
	.tableborder {
		border-top: 1px solid;
		border-bottom: 1px solid;
	}
	
	.borderright {
		border-right: 1px solid;
	}
	
	#textImg {
   		 padding-left: 8px;
   		 padding-bottom: 1px;
   		 padding-top: 13px;
	}
	
	.carousel-item img {
		height: 600;
		width: 80%
		
	}

	.carousel-item active img {
		height: 600;
		width: 80%
	}

</style>


<main id="js-page-content" role="main" class="page-content">

	<div class="row">
		<div class="col-sm-12">
			<!--Backgrounds-->
			<div id="panel-6" class="panel">
				<div class="panel-container show">
					<div class="demo-v-spacing">
						<ol class="breadcrumb bg-primary-300">
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white"> <i class="fal fa-home mr-1"></i> 커뮤니티
							</a></li>
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white">신고게시판</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row" id="imgContainer">
		<div class="col-xl-12" id="background" style="height: 750px; width: 100%;">
		
			<div class="row" >
					<div class="col-sm-7" style="padding-top: 60px; padding-left: 200px; padding-right: 0px;">		
						<div id="panel-1" class="panel">
			                <div class="panel-container show">
			                    <div class="panel-content" >
			                    	<div class="row">
				                    	<div class="col-sm-2">
				                    		<img src="<%=request.getContextPath()%>/resources/template/img/community/report/reporticon.png" style="height: 80%; padding-left: 30px;">
				                    	</div>
				                    	<div class="col-sm-9">
					                        <div class="panel-tag" id="textImg" style="margin-top: 15px;">
					                        	<font style="vertical-align: inherit; color: rgb(81,143,113) "> <h2><b> 거짓광고 신고 </b></h2></font>
					                        </div>
				                        </div>
				                        <div class="col-sm-12" style="padding-left: 30px;">
				                        	<h4><b>Log4job (대전광역시 취업정보시스템)을 사용하여  구직활등을 하고있는 회원이</b></h4>
				                        	<h4><b>채용공고에서확인한 내용과 실제 조건이 현저히 차이가 나거나</b></h4>
				                        	<h4><b>멘토링 및 공모전에서의 부조리 행위를 확인한 경우, 관리자에게 신고를 할 수 있습니다.</b></h4>
				                        	<br>
				                        	<h4><b>단, 아래 신고하기는 관리자에게 신고를 통해 해당 기업의 모니터링을 하기 위함이며</b></h4>
				                        	<h4><b><i class="fas fa-exclamation-circle" style="color: red;"></i>&nbsp;<code>실제 신고 접수기관</code>은 </b></h4>
				                        	<h4><b style="color: rgb(232,62,140);">· 허위광고</b>의 경우 <b style="color: rgb(232,62,140);">고용지원센터 및 시.군 구청</b><b>에,</b></h4>
				                        	<h4><b style="color: rgb(232,62,140);">· 불법직업소개</b>는 <b style="color: rgb(232,62,140);">국내는 시.군.구청 국외는 노용부 고용지원센터</b><b>로 하면 되며,</b></h4>
				                        	<h4><b style="color: rgb(232,62,140);">· 고소 고발</b>은 <b style="color: rgb(232,62,140);">검.경 등 수사기관</b><b>으로 하시면 됩니다.</b></h4>
				                        	<div style="margin-top: 30px;">
				                        		<table class="table-sm" id="mytable">
				                        			<thead class="bg-fusion-50">
				                        				<tr class="tableborder">
				                        					<th class="borderright" style="text-align: center;"><span style="vertical-align: center; font-size: 16px;"><b>구분</b></span></th>
				                        					<th style="text-align: center;"><span style="vertical-align: center; font-size: 16px;"><b>내용</b></span></th>
				                        				</tr>
				                        			</thead>
				                        			<tbody>
				                        				<tr class="tableborder">
				                        					<td class="borderright" style="background-color: rgb(253,240,240); text-align:center;"><span style="vertical-align: center; font-size: 14px;"><b>1. 영 제34조 제 1호</b></span></td>
				                        					<td>구인을 가장하여 물품판매 · 수강생모집 · 직업소개 · 부업알선 · 자금모금 등을 행하는 광고</td>
				                        				</tr>
				                        				<tr class="tableborder">	
				                        					<td class="borderright" style="background-color: rgb(253,240,240); text-align:center;" ><span style="vertical-align: center; font-size: 14px;"><b>1. 영 제34조 제 2호</b></span></td>
				                        					<td>거짓구인을 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 광고</td>
				                        				</tr>
				                        				<tr class="tableborder">	
				                        					<td class="borderright" style="background-color: rgb(253,240,240); text-align:center;"><span style="vertical-align: center; font-size: 14px;"><b>1. 영 제34조 제 3호</b></span></td>
				                        					<td>구인자가 제시한 직종, 고용형태, 근로조건 등이 응모할 때의 그것과 현저히 다른 광고</td>
				                        				</tr>				                        		
				                        				<tr class="tableborder">
				                        					<td class="borderright" style="background-color: rgb(253,240,240); text-align:center;"><span style="vertical-align: center; font-size: 14px;"><b>1. 영 제34조 제 4호</b></span></td>
				                        					<td>기타 광고의 주요내용이 사실과 다른 광고</td>
				                        				</tr>				                        				
				                        			</tbody>
				                        		</table>
				                        	</div>
				                        	<div style="height: 50px; text-align: center; margin-top: 22px;"><button type="button" class="btn btn-lg btn-warning waves-effect waves-themed" id="registBtn"><i class="fas fa-exclamation-circle" style="color: red;"></i>&nbsp;&nbsp;<b>신고하기</b></button></div>
				                        </div>
			                        </div>
			                    </div>
			                </div>
			            </div>			
					</div>
		
		
		
		
				<div class="col-sm-5">
					<div class="panel-container show">
		                <div class="panel-content" style="padding-top: 60px;">
		                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
		                        <div class="carousel-inner">
		                            <div class="carousel-item">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report2.png" data-src="holder.js/800x400?auto=yes&amp;bg=a38cc6&amp;fg=ffffff&amp;text=First slide" alt="First slide [800x400]" data-holder-rendered="true">
		                            </div>
		                            <div class="carousel-item">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report3.png" data-src="holder.js/800x400?auto=yes&amp;bg=967bbd&amp;fg=ffffff&amp;text=Second slide" alt="Second slide [800x400]" data-holder-rendered="true">
		                            </div>
		                            <div class="carousel-item">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report4.png" data-src="holder.js/800x400?auto=yes&amp;bg=967bbd&amp;fg=ffffff&amp;text=Third slide" alt="Second slide [800x400]" data-holder-rendered="true">
		                            </div>
		                            <div class="carousel-item">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report5.png" data-src="holder.js/800x400?auto=yes&amp;bg=967bbd&amp;fg=ffffff&amp;text=Fourth slide" alt="Second slide [800x400]" data-holder-rendered="true">
		                            </div>
		                            <div class="carousel-item">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report6.png" data-src="holder.js/800x400?auto=yes&amp;bg=967bbd&amp;fg=ffffff&amp;text=Fifth slide" alt="Second slide [800x400]" data-holder-rendered="true">
		                            </div>                                                                                    
		                            <div class="carousel-item active">
		                                <img class="d-block w-80" data-interval="1000" src="<%=request.getContextPath()%>/resources/template/img/community/report/report1.png" data-src="holder.js/800x400?auto=yes&amp;bg=886ab5&amp;fg=ffffff&amp;text=Sixth slide" alt="Third slide [800x400]" data-holder-rendered="true">
		                            </div>
		                        </div>
		                        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
		                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		                            <span class="sr-only">Previous</span>
		                        </a>
		                        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
		                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
		                            <span class="sr-only">Next</span>
		                        </a>
		                    </div>
		                </div>
		            </div>
				</div>
			</div>
		</div>
	</div>
</main>


<script>

$("#registBtn").click(function(){
	window.open("<%=request.getContextPath()%>/community/report/regist" , 'regist', 'width=1100, height=700');
});                                        

</script>