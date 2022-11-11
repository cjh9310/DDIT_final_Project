<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="contest" value="${contest }"></c:set>
                                	
     <main id="js-page-content" role="main" class="page-content">
	    <ol class="breadcrumb page-breadcrumb" style="padding-top: 10px;">
	        <li class="breadcrumb-item"><a href="javascript:void(0);">마이페이지</a></li>
	        <li class="breadcrumb-item">프로그램</li>
	        <li class="breadcrumb-item active">상담신청 상세보기</li>
	    </ol>
	    
	    	<div></div>
	        <div class="row">
	        	
	        	<div class="col-xl-12">
	            <div id="panel-1" class="panel">
	                <div class="panel-hdr">
	                    
	                    <b>내가 신청한 상담내용</b>
	                    
	                    <div class="panel-toolbar">
	                    </div>
	                </div>
	                <div class="panel-container show">
	                    <div class="panel-content">
	                    	<div class="row">
                                    	<div class="col-5">
                                    		<img src="/ddit/resources/template/img/support/contest/공모전11.png" alt="공모전이미지" style="width: 300px;">
                                    	</div>
                                    	<div class="col-7">
                                    		<div class="form-group">
                                           <label for="ct"><b>공모전 작성일자</b> </label>
                                           <input type="text" id="conDate" name="conDate" value="<fmt:formatDate value="${contest.conDate}" pattern="yyyy-MM-dd" />"class="form-control" readonly>
                                          </div>
                                    		<div class="form-group">
                                           <label for="ct"><b>공모전 명</b> </label>
                                           <input type="text" id="conTitle" name="conTitle" value="${contest.conTitle}"class="form-control" readonly>
                                          </div>
                                    		<div class="form-group">
                                           <label for="cc"><b>공모 내용</b> </label>
                                           <input type="text" id="conContent" name="conContent" value="${contest.conContent}"class="form-control" readonly>
                                          </div>
                                    		<div class="form-group">
                                           <label for="cf"><b>공모 분야</b> </label>
                                           <label for="contestField">${contest.conField }</label>
                                           <input type="text" id="conField" name="conField" value="${contest.conField}"class="form-control" readonly>
                                          </div>
                                          <div class="row">
                                          	<div class="col-6">
                                      		<div class="form-group">
                                             <label for="cs"><b>공모시작일자</b> </label>
                                             <input type="text" id="conSdate" name="conSdate" value="<fmt:formatDate value="${contest.conSdate}" pattern="yyyy-MM-dd" />" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                      		<div class="form-group">
                                             <label for="cs"><b>공모마감일자</b> </label>
                                             <input type="text" id="conEdate" name="conEdate" value="<fmt:formatDate value="${contest.conEdate}" pattern="yyyy-MM-dd" />"class="form-control" readonly>
                                            </div>
                                        </div>
                                          </div>
                                    		<div class="form-group" style="margin-top: 20px;">
                                           <label for="ce"><b>시상내용</b> </label>
                                           <input type="text" id="conAward" name="conAward" value="${contest.conAward}"class="form-control" readonly>
                                          </div>
                                    		<div class="form-group">
                                           <label for="ce"><b>첨부파일</b> </label>
                                           <input type="text" id="conAward" name="conAward" value=""class="form-control" readonly>
                                          </div>
                                    	</div>
                                    	
                                    </div>
	                        <%-- <form>
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
				              </form> --%>
				            </div>
				            
				        </div>
				        
				    </div>
				    
				    <div class="demo" style="text-align: right;">
			          	<button type="button" id="modifyBtn" onclick="location.href='contestModifyForm.do?conNo=${contest.conNo}';" class="btn btn-warning btn-pills waves-effect waves-themed">수 정</button>
			          	<button type="button" id="deleteBtn"  class="btn btn-danger btn-pills waves-effect waves-themed">삭 제</button>
			          	<button type="button" id="listBtn" onclick="CloseWindow();" class="btn btn-dark btn-pills waves-effect waves-themed">닫 기</button>
			        </div>
			        </div>
			     </div>
			</main>
<script>
$('#deleteBtn').on('click',()=>{
	alert("누름");
	
	var conNo = ${contest.conNo};
	location.href = "contestRemove.do?conNo=" + conNo;
	alert("삭제완료");
	window.open("about:blank", "_self").close();
	window.opener.location.reload();
});
</script>
