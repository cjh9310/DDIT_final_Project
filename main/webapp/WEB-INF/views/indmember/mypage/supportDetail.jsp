<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>

<c:set var="supportList" value="${dataMap.supportList }" />

   <!-- END Page Header -->
   <!-- BEGIN Page Content -->
   <!-- the #js-page-content id is needed for some plugins to initialize -->
   <!-- END Page Header -->
                    <!-- BEGIN Page Content -->
                    <!-- the #js-page-content id is needed for some plugins to initialize -->
	<main id="js-page-content" role="main" class="page-content">
	    <ol class="breadcrumb page-breadcrumb" style="padding-top: 10px;">
	        <li class="breadcrumb-item"><a href="javascript:void(0);">마이페이지</a></li>
	        <li class="breadcrumb-item">프로그램</li>
	        <li class="breadcrumb-item active">상담신청 상세보기</li>
	    </ol>
	    
	    	<div></div>
	        <div class="row">
	        	<div class="col-1"></div>
	        	<div class="col-10">
	            <div id="panel-1" class="panel">
	                <div class="panel-hdr">
	                    
	                    <b>내가 신청한 상담내용</b>
	                    
	                    <div class="panel-toolbar">
	                    </div>
	                </div>
	                <div class="panel-container show">
	                    <div class="panel-content">
	                        <form>
	                        	<div class="form-group">
	                                <label class="form-label" for="supType">상담유형</label>
	                                <input type="text" id="supType" name="supType" 
	                                	value="<c:if test="${support.supType eq 0 }">진로상담 </c:if>
										<c:if test="${support.supType eq 1 }">취업상담 </c:if>
										<c:if test="${support.supType eq 2 }">프로그램상담 </c:if>"
	                                	class="form-control" readonly>
	                            </div>
	                            <div class="form-group">
	                                <label class="form-label" for="indId">작성자</label>
	                                <input type="text" id="indId" name="indId" value="${loginUser.name}"class="form-control" readonly>
	                  			</div>
				                  <div class="form-group">
				                      <label class="form-label" for="supTitle">제목</label>
				                      <input type="text" id="supTitle" name="supTitle" value="${support.supTitle}" class="form-control" readonly>
				                  </div>
				                  <div class="form-group">
				                      <label class="form-label" for="supPdate">상담가능일자</label>
				                      <input type="text" id="supPdate" name="supPdate" value="<fmt:parseDate value='${support.supPdate}'  var = "transeSupPdate" pattern='yyyy-mm-dd HH:mm:ss'/>
				                      														  <fmt:formatDate value="${transeSupPdate}" pattern="yyyy-MM-dd" />" class="form-control" readonly>
				                  </div>
				                  <div class="form-group">
				                      <label class="form-label" for="supContent">상담내용</label>
				                      <textarea class="form-control" id="supContent" name="supContent" rows="7" readonly>${support.supContent}</textarea>
				                  </div>
				                  <div class="form-group mb-0">
				                      <label class="form-label">첨부파일</label>
				                      <div class="custom-file">
				                          <input type="file" class="custom-file-input" id="customFile" disabled>
				                          <label class="custom-file-label" for="customFile"></label>
				                      </div>
				                  </div>
				              </form>
				            </div>
				            
				        </div>
				        
				    </div>
				    
				    <div class="demo" style="text-align: right;">
			          	<button type="button" id="modifyBtn" onclick="location.href='supportModifyForm.do?supNo=${support.supNo}';" class="btn btn-warning btn-pills waves-effect waves-themed">수 정</button>
			          	<button type="button" id="deleteBtn" onclick="location.href='supportRemove.do?supNo=${support.supNo}';" class="btn btn-danger btn-pills waves-effect waves-themed">삭 제</button>
			          	<button type="button" id="listBtn" onclick="CloseWindow();" class="btn btn-dark btn-pills waves-effect waves-themed">닫 기</button>
			        </div>
			        </div>
			     </div>
			</main>
			
			
<script>
 <c:if test="${from eq 'remove'}">
	alert("삭제되었습니다.");
  window.close();
  window.opener.location.reload();
  </c:if>
</script>