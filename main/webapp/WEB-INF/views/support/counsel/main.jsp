<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

$(document).ready(function(){	
	jQuery.fn.serializeObject = function() {
		var obj = null;
		try {
			if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
				var arr = this.serializeArray();
				if (arr) {
					obj = {};
					jQuery.each(arr, function() {
						obj[this.name] = this.value;
					});
				}
			}
		} catch (e) {
			alert(e.message);
		} finally {
		}

		return obj;
	};
});
</script>

				<main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">취업지원</a></li>
                            <li class="breadcrumb-item active">취업상담</li>
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <!-- <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-window'></i> 취업상담
                            </h1>
                        </div> -->  
                        
                        <div class="row">
                            <div class="col-xl-12">
                                <!--Side Modals-->
                                <div id="panel-2" class="panel">
                                    <div class="panel-hdr">
                                    </div>
                                    <div class="panel-container show">
                                        <div class="panel-content">
                                            <div class="frame-wrap">
                                                <div class="demo" style="text-align:right;">
                                                    <button type="button" class="btn btn-success btn-pills waves-effect waves-themed" data-toggle="modal" data-target=".default-example-modal-right-sm">상담신청</button>
                                                </div>
                                                
                                                <div style="text-align:center; ">
                                                	<img src="<%=request.getContextPath()%>/resources/template/img/support/취업상담메인수정.png"
                                                		 style="width: 100%"/>
                                                </div>
                                                
                                            </div>
                                            <!-- Modal Left Large -->
                                            <div class="modal fade default-example-modal-right-sm"
												tabindex="-1" role="dialog" aria-hidden="true">
												<div class="modal-dialog modal-dialog-right modal-sm">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true"><i class="fal fa-times"></i></span>
															</button>
														</div>
														<div class="modal-body">
															<div id="panel-2" class="panel">
																<div class="panel-hdr">
																	<h2>상담신청</h2>
																	<div class="panel-toolbar">
																		<button class="btn btn-panel"
																			data-action="panel-collapse" data-toggle="tooltip"
																			data-offset="0,10" data-original-title="Collapse"></button>
																		<button class="btn btn-panel"
																			data-action="panel-fullscreen" data-toggle="tooltip"
																			data-offset="0,10" data-original-title="Fullscreen"></button>
																		<button class="btn btn-panel" data-action="panel-close"
																			data-toggle="tooltip" data-offset="0,10"
																			data-original-title="Close"></button>
																	</div>
																</div>
																<div class="panel-container show">
																	<div class="panel-content">
																		<div class="panel-tag">
																			<p>취업지원관련 상담을 신청하실 수 있습니다. 도움이 필요한 순간 늘 함께하는 진정성 있는 상담을 진행합니다.</p>
									                                        <p>궁금하신 사항이 있다면 언제든 신청해주세요. 친절히 상담을 도와드리겠습니다.</p>
																		</div>
																	</div>
																	<form class="needs-validation" novalidate=""
																		method="post" name="registForm" id="registForm">
																		<div class="panel-content">
																			<!-- <input type="hidden" name="supNo" value="0"> -->
																			<div class="form-group">
									                                        	<label class="form-label" for="supType"><b>상담유형</b> <span class="text-danger">*</span></label>
									                                            <select class="custom-select" id="supType" name="supType">
					                                                                <option>상담유형 선택</option>
					                                                                <option value="0">진로상담</option>
					                                                                <option value="1">취업상담</option>
					                                                                <option value="2">프로그램상담</option>
					                                                            </select>
					                                                            <div class="invalid-feedback">
																					상담유형을 선택해주세요.
					                                                            </div>
					                                                        </div>
					                                                        
					                                                        <div class="form-group">
							                                                    <label class="form-label" for="indId"><b>작성자</b></label>
							                                                    <input type="text" id="indId" name="indId" class="form-control" value="${loginUser.name}" readonly>
							                                                </div>
					                                                    
					                                                        <div class="form-group">
					                                                            <label class="form-label" for="supTitle"><b>제목</b> <span class="text-danger">*</span> </label>
					                                                            <input type="text" class="form-control" id="supTitle" name="supTitle" placeholder="제목을 입력해주세요." >
					                                                            <div class="invalid-feedback">
																					제목을 입력해주세요.
					                                                            </div>
					                                                        </div>
					                                                        
					                                                       <div class="form-group">
							                                                    <label class="form-label" for="supPdate"><b>상담가능일자</b>&nbsp;※상담일자를 선택하지않을 경우 상담사가 임의로 연락을 드립니다.</label>
							                                                    <input class="form-control" id="supPdate" type="date" name="supPdate">
							                                                </div> 
					                                                        
					                                                        <div class="form-group">
					                                                            <label class="form-label" for="supContent"><b>상담내용</b> <span class="text-danger">*</span></label>
					                                                            <textarea class="form-control" id="supContent" name="supContent" placeholder="상담신청하실 내용을 입력해주세요." rows="7"></textarea>
					                                                            <div class="invalid-feedback">
																					상담신청하실 내용을 입력해주세요. 
					                                                            </div>
					                                                        </div>
		
																			<!-- <div class="form-group mb-0">
																				<label class="form-label"><b>첨부파일</b></label>
																				<div class="custom-file">
																					<input type="file" class="custom-file-input" id="customFile">
																					<label class="custom-file-label" for="customFile">파일선택</label>
																				</div>
																			</div> -->
																		</div>
																		<div class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
																			<div class="custom-control custom-checkbox">
																				<input type="checkbox" class="custom-control-input"
																					id="invalidCheck" required=""> <label
																					class="custom-control-label" for="invalidCheck">
																					Agree to terms and conditions <span
																					class="text-danger">*</span>
																				</label>
																				<div class="invalid-feedback">You must agree
																					before submitting.</div>
																			</div>
																				<button class="btn btn-success btn-pills ml-auto waves-effect waves-themed" type="button" id="registBtn">신청하기</button>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
		              					</div>
		              				</div>
		             			 </div>
		              		</div>
		              	</div>
					</main>

                    
<script>
	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();
</script>
<script>
		$("#registBtn").on("click", function() { //신청하기 버튼을 클릭하였을 때
			
			
			var param = $("#registForm").serialize();
			//var param = $("#registForm").serializeObject();
			/*
			param = {
					supType:$("input[name=supType]").val(),
					supTitle:$("input[name=supTitle]").val(),
					supContent:$("input[name=supContent]").val(),
					supPdate:$("input[name=supPdate]").val()
				};
			*/
		
		    //alert(JSON.stringify(param));
			
			$.ajax({
				url : 'regist',
				type : 'POST',
				//data : JSON.stringify(param),
				data : param,
				/*
				data:JSON.parse({
					supType:$("input[name=supType]").val();,
					supTitle:$("input[name=supTitle]").val();,
					supContent:$("input[name=supContent]").val();
					supPdate:$("input[name=supPdate]").val();
				}),
				*/
				cache: false,
	            async: true,
	            //dataType : 'json',
	            //contentType:'application/json',
				success : function(data) {
					//alert(data);
					window.location.replace(location.href);
					
					
					
					
					
				},
				error : function(request, status, error) {
					 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
				}
			});
		});
</script>