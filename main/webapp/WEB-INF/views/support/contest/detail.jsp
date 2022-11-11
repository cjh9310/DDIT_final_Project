<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    
<main id="js-page-content" role="main" class="page-content">
            <ol class="breadcrumb page-breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">취업지원</a></li>
                <li class="breadcrumb-item">공모전</li>
                <li class="breadcrumb-item active">공모전 상세보기</li>
            </ol>
            
            <div class="row">
                <div class="col-xl-12">
                    <!-- Kitchen sink example -->
                     <div id="panel-1" class="panel">
                         <div class="panel-hdr">
                             <h2>
								공모전 상세보기  
                             </h2>
                             <div class="panel-toolbar">
                                 <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                 <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                 <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                             </div>
                         </div>
                         <div class="panel-container show">
                             <div class="panel-content">
                                 <div style="max-width: 100%;">
                                    
                                    <div>
                            <%-- <div class="row no-gutters">
                                <div class="col-6 col-md-4">
                                	<img src="<%=request.getContextPath()%>/resources/template/img/support/contest/공모전.png" class="card-img-top" alt="...">
                                </div>
                                <div class="col-12 col-sm-6 col-md-8">
                                	
                                </div>
                            </div> --%>
			                            <div class="row mx-md-n5">
			                                <div class="col px-md-5">
			                                    <div class="p-3">
			                                      	<%-- <img src="<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png" 
			                                      		 class="card-img-top" id="clickImg" alt="공모전이미지" style="cursor:pointer" > --%>
			                                      	<img src="<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png" 
			                                      		 class="card-img-top" id="clickImg" alt="공모전이미지" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;" style="cursor:pointer;"/>
			                                    </div>
			                                </div>
		                                    <div class="col px-md-5">
		                                        <div class="p-3">
		                                           	<h3 class="m-0" style="text-align:center;">
		                                         		공모전 응모
		                                    	    </h3>
		                                    	    <div style="margin-top:50px;">
			                                    	    <div class="form-group">
	                                                    	<label class="form-label text-muted" for="indMemId"> 이름</label>
	                                                    	<input type="text" id="indMemId" name="indMemId" class="form-control" readonly>
	                                                	</div>
			                                    	    <div class="form-group">
	                                                    	<label class="form-label" for="actTel">연락처</label>
	                                                    	<input type="text" id="actTel" name="actTel" class="form-control">
	                                                	</div>
			                                    	    <div class="form-group">
	                                                    	<label class="form-label" for="actEmail">이메일 주소</label>
	                                                    	<input type="text" id="actEmail" name="actEmail" class="form-control">
	                                                	</div>
	                                                	<div class="form-group mb-0">
	                                                    	<label class="form-label">첨부파일</label>
	                                                    	<div class="custom-file">
	                                                        	<input type="file" class="custom-file-input" id="customFile">
	                                                        	<label class="custom-file-label" for="customFile">제출 하실 공모전자료를 업로드해주세요</label>
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
            <div style="text-align:center; margin:30px; ">
            	<a href="javascript:void(0);" class="btn btn-success btn-pills waves-effect waves-themed" id="js-bootbox-example-9">신청하기</a>
            </div>
         </div>
     </div>
     </main>
     
       <script src="<%=request.getContextPath()%>/resources/template/js/vendors.bundle.js"></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/app.bundle.js"></script>
<script>
$(document).ready(function()
{
    "use strict";

    //A basic message
    

    $("#js-bootbox-example-9").on("click", function()
    {
        bootbox.confirm(
        {
            title: "공모전에 참여하시겠습니까?",
            message: "공모신청 후 취소를 원하실 경우 [마이페이지]에서 취소 가능합니다.",
            buttons:
            {
                cancel:
                {
                    label: '취 소'
                },
                confirm:
                {
                    label: '신 청'
                }
            },
            callback: function(result)
            {
                console.log('This was logged in the callback: ' + result);
            }
        });
    });

});

</script>
   
     
     
     