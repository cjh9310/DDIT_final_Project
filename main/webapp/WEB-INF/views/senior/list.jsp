<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

	.col-md-4 img {
	    object-fit:cover;
	    width: 100%;
	    height: 100%;
	}
	
	.col-md-4 {
		padding-left: 2px;
		padding-right: 0px;	
	}
	
	.col-md-5 img {
	    object-fit:cover;
	    width: 100%;
	    height: auto;
	}
	
	.col-md-7 {
		display: flex;
		align-items: center;
	}
	
	
</style>

<main id="js-page-content" role="main" class="page-content">

<!-- ------------------Breadcrumbs--------------------- -->
	<div class="row">
		<div class="col-xl-12">
			<!--Backgrounds-->
			<div id="panel-6" class="panel">
				<div class="panel-container show">
					<div class="demo-v-spacing">
						<ol class="breadcrumb bg-primary-300">
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white"> <i class="fal fa-home mr-1"></i> 어르신을위한 채용공고
							</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- --------------------------- Card -------------------------------- -->

<%-- 	<div class="row">
	    <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
	        <div class="card shadow-1 shadow-hover-5 mb-g">
	            <div class="card-body p-3">
	            <div class="row">
	                <div class="col-md-4">
	                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon1.png">
	                </div>
	                <div class="col-md-8 mt-3">
	                	<h5><b>참여연령</b><br> 만 65세이상 기초연금수급자 </h5><br>
	                	<h5><b>근무시간</b><br> 월 30시간이상(일3시간이내) </h5><br>
	                	<h5><b>활동비</b><br> 월 27만원 </h5>
	                </div>
	            </div>
	            </div>
	        </div>
	    </div>
	    
	    <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
	        <div class="card shadow-1 shadow-hover-5 mb-g">
	            <div class="card-body p-3">
	            <div class="row">
	                <div class="col-md-4">
	                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon2_3.png">
	                </div>
	                <div class="col-md-8 mt-3">
	                	<h5><b>참여연령</b><br> 만 65세이상 </h5><br>
	                	<h5><b>근무시간</b><br> 10개월(월 60시간) </h5><br>
	                	<h5><b>활동비</b><br> 월 71만원 </h5>
	                </div>
	            </div>
	            </div>
	        </div>
	    </div>   
	    
	    <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
	        <div class="card shadow-1 shadow-hover-5 mb-g">
	            <div class="card-body p-3">
	            <div class="row">
	                <div class="col-md-4">
	                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon3.png">
	                </div>
	                <div class="col-md-8 mt-3">
	                	<h5><b>참여연령</b><br> 만 60세이상 </h5><br>
	                	<h5><b>근무내용 :</b> 단순노무직(경비등), 주유원, 관리사무직, 시험감독관 </h5><br>
	                	<h5><b>근무기간 및 활동비</b><br> 계약에따라 다름 </h5>
	                </div>
	            </div>
	            </div>
	        </div>
	    </div>
	 
	    <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
	        <div class="card shadow-1 shadow-hover-5 mb-g">
	            <div class="card-body p-3">
	            <div class="row">
	                <div class="col-md-4">
	                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon4_2.png">
	                </div>
	                <div class="col-md-8 mt-3">
	                	<h5><b>참여연령</b><br> 만 60세이상 </h5><br>
	                	<h5><b>근무시간</b> 기업 근로계약에 따라 다름</h5><br>
	                	<h5><b>활동비</b><br> 기업 근로계약에 따라 다름 </h5>
	                </div>
	            </div>
	            </div>
	        </div>
	    </div>    
	</div> 
	
	--%>
	

<!-- ------------------------------------------------------------------------------------------ -->	
	
	
	<div class="row">
	    <!-- Card decks -->
	    <div class="col-sm-12">
	        <div class="panel-container show">
	            <div class="panel-content">
	                <div class="card-deck">
					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon6.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>공익방송 모니터요원사업</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div> 
	                    
	                    
					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon5_1.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>건축건자재 제조/ 건설업 / 도소매업 계속고용계획있음</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div>
						    
						  
					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon6.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>공익방송 모니터요원사업</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div>
						    
	
					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon5_1.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>공익방송 모니터요원사업</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div> 	
	
						    	
					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon8.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>공익방송 모니터요원사업</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div> 


					    <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-4">
					        <div class="card shadow-1 shadow-hover-5 mb-g">
					            <div class="card-header p-3">
						            <div class="row">
						                <div class="col-md-5" >
						                	<img src="<%=request.getContextPath()%>/resources/template/img/senior/icon7.png">
						                </div>
						                <div class="col-md-7">
						                	<div class="title">
						                		<h3><b>공익방송 모니터요원사업</b></h3>
						                	</div>
						                </div>
						            </div>
					            </div>
					            <div class="card-body" >
					            	
					            	<div class="row">
						            	<div class="col-6">
						            		<h5><b>사업체명 : </b> 서구시니어클럽 </h5><br>
						            		<h5><b>연락처 : </b> 042) 471 - 5545 </h5>
						            
						            	</div>
						            	<div class="col-6">
						            		<h5><b>주소 : </b> 대전 서구 용문동 593-1 </h5><br>
						            		<h5><b>근무지역 : </b> 연정상가 2층 </h5><br>
						            	</div>
					            	</div>
					            	<h4><b>공익방송모니터요원 참여자 모집공고를 등재합니다.</b></h4>
					            </div>
	            	                <div class="card-footer">
			                            <div>
			                            	<span class="badge badge-warning badge-pill">접수중</span>  
			                            	  2022-05-15 ~ 2022-12-31                          	
			                            </div>
	                      		    </div>
						        </div>
						    </div> 
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
               
<!-- ---------------------- pagenation ---------------------- -->

	<div class="row">
		<div class="col-lg-3"></div>
			<div class="col-sm-6" style="flex: 10 auto;">
				<div class="panel-container show">
					<div class="panel-content">
						<!-- <div class="frame-wrap">-->
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1" aria-disabled="true"><</a></li>
								<li class="page-item active" aria-current="page"><span
									class="page-link"> 1 <span class="sr-only">(current)</span>
								</span></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">></a></li>
							</ul>
						</nav>
						<!-- </div> -->
					</div>
				</div>
			</div>
		<div class="col-lg-3">
		</div>
	</div>	
</main>                                     
    
            
                    