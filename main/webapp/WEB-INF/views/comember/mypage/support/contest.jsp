<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="dataMap" value="${dataMap}"/>
<c:set var="contestList" value="${dataMap.contestList}"/>
 <c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
<%-- <c:if test='${today gt "2022-11-01"}'><p>메롱</p></c:if>
<c:if test='${today lt "2022-11-01"}'><p>안메롱</p></c:if> --%>
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
                            <li class="breadcrumb-item"><a href="javascript:void(0);">마이페이지</a></li>
                            <li class="breadcrumb-item">취업지원</li>
                            <li class="breadcrumb-item active">프로그램 관리</li>
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        
                        <div class="row">
                        	<div class="col-6">
                                <div id="공모전관리탭" class="panel" style="height: 420px;">
                                	<!-- <div style="margin-top:10px; margin-left:20px;">
                                		<b>공모전 리스트</b>
                                	</div> -->
                                	<div class="panel-hdr">
										<div class="col-lg-6">
											<h2>공모전 목록</h2>
										</div>
										<div class="col-lg-6">
											<div class="float-right">
												<button type="button" class="btn btn-sm btn-success waves-effect waves-themed" data-toggle="modal" data-target=".default-example-modal-right-sm">공모전 등록</button>
											</div>
										</div>
									</div>
                                    <div class="panel-container show">
                                    	<div style="margin-right:18px; text-align:right">
                                    		
                                    		<!-- <a onclick="OpenWindow('supportContestRegistForm.do','글등록',800,700);" class="btn btn-sm btn-success shadow-0">공모전 등록</a> -->
                                    	</div>
                                        <div class="panel-content" style="height: 300px;">
                                            <ul class="nav nav-pills nav-justified" role="tablist">
                                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#js_change_pill_justified-1">전체</a></li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#js_change_pill_justified-2">진행중</a></li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#js_change_pill_justified-3">완료</a></li>
                                            </ul>
                                            <div class="tab-content py-3">
                                                <div class="tab-pane fade show active" id="js_change_pill_justified-1" role="tabpanel" >
                                                	<div class="panel-content">
			                                            <div class="frame-wrap" style="overflow: auto; height: 230px;">
			                                            	<div class="">
			                                                <table class="table table-sm table-hover m-0" style="border-spacing: 0; border-collapse: separate; white-space: nowrap;">
			                                                    <thead class="text-center">
			                                                        <tr style="position: sticky; top: 0px; background-color: white; z-index: 99;">
			                                                        	<th class="border-right">No</th>
			                                                            <th>게시물 등록일</th>
			                                                        	<th>공모전명</th>
			                                                            <th>공모기간</th>
			                                                            <th>진행여부</th>
			                                                            <th></th>
			                                                        </tr>
			                                                    </thead>
			                                                    <tbody>
			                                                    <c:if test="${empty contestList }">
			                                                    	<tr>
			                                                    		<td class="text-center" colspan="5">
			                                                    			<strong>등록된 공모전이 없습니다.</strong>
			                                                    		</td>
			                                                    </c:if>
			                                                    <c:forEach items="${contestList }" var="contest" varStatus="idxRow">
			                                                        <%-- <tr style="cursor:pointer" name="${contest.conNo}" class="contestDetail"> --%>
			                                                        <tr style="cursor:pointer" name="${contest.conNo}" class="contestSupporterList"> 
			                                                            <th class="text-center border-right" scope="row">${idxRow.index+1 }</th>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conDate }" pattern="yyyy-MM-dd"/></td>
			                                                            <td>${contest.conTitle }</td>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conSdate }" pattern="yyyy-MM-dd"/>
			                                                            						~<fmt:formatDate value="${contest.conEdate }" pattern="yyyy-MM-dd"/>
			                                                            </td>
			                                                            <td class="text-center">
			                                                            <c:if test="${contest.conEdate < now }">완 료</c:if>
			                                                            <c:if test="${contest.conEdate >= now }">진행중</c:if>
																		</td>
																		<td>
																			<button class="btn btn-sm btn-success waves-effect waves-themed adBtn" value="${contest.conNo}" type="button" >관 리</button>
																		</td>
			                                                        </tr>
			                                                    </c:forEach>		
			                                                    </tbody>
			                                                </table>
			                                               </div>
			                                            </div>
			                                        </div>
                                                </div>
                                                <div class="tab-pane fade" id="js_change_pill_justified-2" role="tabpanel">
													<div class="panel-content">
			                                            <div class="frame-wrap" style="overflow: auto; height: 180px;">
			                                                <table class="table table-sm table-hover m-0" >
			                                                    <thead class="text-center">
			                                                        <tr style="position: sticky; top: 0px; background-color: white;">
			                                                        	<th class="border-right">No</th>
			                                                            <th>게시물 등록일</th>
			                                                        	<th>공모전명</th>
			                                                            <th>공모기간</th>
			                                                            <th>진행여부</th>
			                                                        </tr>
			                                                    </thead>
			                                                    <tbody>
			                                                    <c:forEach items="${contestList }" var="contest" varStatus="idxRow">
			                                                    	<c:if test="${contest.conEdate >= now }">
			                                                        <tr style="cursor:pointer" name="${contest.conNo}" class="testcontdetail">
			                                                            <th class="text-center border-right" scope="row">${idxRow.index+1 }</th>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conDate }" pattern="yyyy-MM-dd"/></td>
			                                                            <td>${contest.conTitle }</td>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conSdate }" pattern="yyyy-MM-dd"/>
			                                                            						~<fmt:formatDate value="${contest.conEdate }" pattern="yyyy-MM-dd"/>
			                                                            </td>
			                                                            <td class="text-center">
			                                                            <c:if test="${contest.conEdate < now }">완 료</c:if>
			                                                            <c:if test="${contest.conEdate >= now }">진행중</c:if>
																		</td>
			                                                        </tr>
			                                                        </c:if>
			                                                   	</c:forEach>		
			                                                    </tbody>
			                                                </table>
			                                            </div>
			                                        </div>
                                                </div>
                                                <div class="tab-pane fade" id="js_change_pill_justified-3" role="tabpanel">
													<div class="panel-content">
			                                            <div class="frame-wrap" style="overflow: auto; height: 180px;">
			                                                <table class="table table-sm table-hover m-0">
			                                                    <thead class="text-center">
			                                                        <tr style="position: sticky; top: 0px; background-color: white;">
			                                                        	<th class="border-right">No</th>
			                                                            <th>게시물 등록일</th>
			                                                        	<th>공모전명</th>
			                                                            <th>공모기간</th>
			                                                            <th>진행여부</th>
			                                                        </tr>
			                                                    </thead>
			                                                    <tbody>
			                                                        <c:forEach items="${contestList }" var="contest" varStatus="idxRow">
			                                                    	<c:if test="${contest.conEdate < now }">
			                                                        <tr style="cursor:pointer" name="${contest.conNo}" class="testcontdetail">
			                                                            <th class="text-center border-right" scope="row">${idxRow.index+1 }</th>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conDate }" pattern="yyyy-MM-dd"/></td>
			                                                            <td>${contest.conTitle }</td>
			                                                            <td class="text-center"><fmt:formatDate value="${contest.conSdate }" pattern="yyyy-MM-dd"/>
			                                                            						~<fmt:formatDate value="${contest.conEdate }" pattern="yyyy-MM-dd"/>
			                                                            </td>
			                                                            <td class="text-center">
			                                                            <c:if test="${contest.conEdate < now }">완 료</c:if>
			                                                            <c:if test="${contest.conEdate >= now }">진행중</c:if>
																		</td>
			                                                        </tr>
			                                                        </c:if>
			                                                   	</c:forEach>	
			                                                    </tbody>
			                                                </table>
			                                            </div>
			                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                       <%--  <%@ include file="/WEB-INF/views/include/pagination.jsp" %>	 --%>
                                         <!-- <div class="frame-wrap">
                                                <nav aria-label="...">
                                                    <ul class="pagination pagination justify-content-center pagination-xs">
                                                        <li class="page-item disabled">
                                                            <a class="page-link" href="#" aria-label="Previous">
                                                                <span aria-hidden="true"><i class="fal fa-chevron-left"></i></span>
                                                            </a>
                                                        </li>
                                                        <li class="page-item active" aria-current="page">
                                                            <span class="page-link">
                                                                1
                                                                <span class="sr-only">(current)</span>
                                                            </span>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item">
                                                            <a class="page-link" href="#" aria-label="Next">
                                                                <span aria-hidden="true"><i class="fal fa-chevron-right"></i></span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div> -->
                                    </div>
                                </div>
                             </div>
                                
                             <div class="col-6">
                                <div id="contest_detail" class="panel" style="height: 420px;">
                                	<!-- <div style="margin-top:10px; margin-left:20px;">
                                		<b>공모전 상세보기</b>
                                	</div> -->
                                	<div class="panel-hdr">
										<div class="col-lg-6">
											<h2>공모전 상세보기</h2>
										</div>
										<div class="col-lg-6">
											<div class="float-right">
											<button class="btn btn-sm btn-success waves-effect waves-themed" type="button" id="modifyBtn">수 정</button>
                                			<button class="btn btn-sm btn-success waves-effect waves-themed" type="button" id="modifyBtn">삭 제</button>
											</div>
										</div>
									</div>
                                    <div class="panel-container show">
                                       	<div class="panel-content" style="height: 300px;">
		                                      <div class="frame-wrap">
		                                          <div class="container">
			                                          <div class="row">
			                                          	<div class="col-5" style="margin-left: 10px;">
			                                          		<img src="<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png" alt="공모전이미지" style="width: 230px;">
			                                          	</div>
			                                          	<div class="col-2" style="margin-top: 30px;">
			                                          		<div class="form-group">
				                                                <label for="ct"><b>공 모 전 명 :</b> </label>
			                                                </div>
			                                          		<div class="form-group">
				                                                <label for="cc"><b>공 모 내 용 :</b> </label>
			                                                </div>
			                                          		<div class="form-group">
				                                                <label for="cf"><b>공 모 분 야 :</b> </label>
			                                                </div>
			                                          		<div class="form-group">
				                                                <label for="cs"><b>공 모 기 간 :</b> </label>
			                                                </div>
			                                          		<div class="form-group">
				                                                <label for="ce"><b>시 상 내 역 :</b> </label>
			                                                </div>
			                                          		<div class="form-group">
				                                                <label for="ce"><b>첨 부 파 일 :</b> </label>
			                                                </div>
			                                          	</div>
			                                          	<div class="col-4" style="margin-top: 30px;">
			                                          		<div class="form-group">
			                                                    <label for="contestTitle"></label>
			                                                </div>
			                                          		<div class="form-group">
			                                                    <label for="contestTitle"></label>
			                                                </div>
			                                          		<div class="form-group">
			                                                    <label for="contestField"></label>
			                                                </div>
			                                          		<div class="form-group">
			                                                    <label for="contestSdate"></label>
			                                                </div>
			                                          		<div class="form-group">
			                                                    <label for="contesteDate"></label>
			                                                </div>
			                                          		<div class="form-group">
			                                                    <label for="contesteDate"></label>
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
                            
                        
                            
<!--멘토링  -->             <div class="row">
                        	<div class="col-6">
                                <div id="상세공모지원자리스트탭" class="panel"  style="height: 420px;">
                                	<div class="panel-hdr">
										<div class="col-lg-6">
											<h2>공모전 지원자 목록</h2>
										</div>
										<div class="col-lg-6">
											<div class="float-right">
											 <!-- 버튼 들어갈 자리 -->
											</div>
										</div>
									</div>
                                    <div class="panel-container show">
                                    	<div style="margin-bottom:30px;"></div>
                                       	<div class="panel-content" style="height: 300px;">
		                                      <div class="frame-wrap" style="overflow: auto; height: 180px;">
		                                          <table class="table table-sm table-hover m-0">
		                                              <thead class="text-center">
		                                                  <tr>
		                                                  	<th>No</th>
		                                                      <th>지원일자</th>
		                                                      <th>지원자명</th>
		                                                      <th>연락처</th>
		                                                      <th>첨부파일</th>
		                                                      <th>시상내역</th>
		                                                      <th></th>
		                                                  </tr>
		                                              </thead>
		                                              <tbody>
		                                                  <tr class="text-center" style="cursor:pointer">
		                                                      <th scope="row">1</th>
		                                                      <td>2022-10-18</td>
		                                                      <td>김땡땡</td>
		                                                      <td>010-1234-5678</td>
		                                                      <td>-</td>
		                                                      <td>
		                                                      	<select class="form-control" id="contest_score_select">
		                                                     		<option>0</option>
		                                                     		<option>1</option>
		                                                 		</select>
		                                             		  </td>
		                                             		  <td>
		                                             			<a href="javascript:void(0);" class="btn btn-sm btn-success shadow-0" id="js-sweetalert2-example-7">수정</a>
															  </td>
		                                                  </tr>
		                                                  <!--리스트 불러올 조건문  -->
		                                                  		
		                                              </tbody>
		                                              <!-- 상담리스트 보여줄 내용이 없을때 -->
		                                              	
		                                          </table>
		                                         
		                                      </div>
		                                      
                                  			</div>
                                       </div>
                                       <div class="frame-wrap">
                                           <nav aria-label="...">
                                               <ul class="pagination pagination justify-content-center pagination-xs">
                                                   <li class="page-item disabled">
                                                       <a class="page-link" href="#" aria-label="Previous">
                                                           <span aria-hidden="true"><i class="fal fa-chevron-left"></i></span>
                                                       </a>
                                                   </li>
                                                   <li class="page-item active" aria-current="page">
                                                       <span class="page-link">
                                                           1
                                                           <span class="sr-only">(current)</span>
                                                       </span>
                                                   </li>
                                                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                   <li class="page-item">
                                                       <a class="page-link" href="#" aria-label="Next">
                                                           <span aria-hidden="true"><i class="fal fa-chevron-right"></i></span>
                                                       </a>
                                                   </li>
                                               </ul>
                                           </nav>
                                       </div>
                            		</div>
                                        
                                    
                                    
                            </div>
                            
                                
                            <div class="col-6">
                                <div id="상세공모지원자리스트탭" class="panel"  style="height: 420px;">
                                	<div class="panel-hdr">
										<div class="col-lg-6">
											<h2>지원자 정보 상세보기</h2>
										</div>
										<div class="col-lg-6">
											<div class="float-right">
												<!-- 버튼 들어갈 자리 -->>
											</div>
										</div>
									</div>
                                    <div class="panel-container show">
                                    	<div style="margin-bottom:30px;"></div>
                                       	<div class="panel-content" style="height: 300px;">
		                                      <div class="frame-wrap">
		                                          <table class="table table-sm table-hover m-0">
		                                              <thead class="text-center">
		                                                  <tr>
		                                                  	<th>No</th>
		                                                      <th>지원일자</th>
		                                                      <th>지원자명</th>
		                                                      <th>연락처</th>
		                                                      <th>첨부파일</th>
		                                                      <th>시상내역</th>
		                                                      <th></th>
		                                                  </tr>
		                                              </thead>
		                                              <tbody>
		                                                  <tr class="text-center" style="cursor:pointer">
		                                                      <th scope="row">1</th>
		                                                      <td>2022-10-18</td>
		                                                      <td>김땡땡</td>
		                                                      <td>010-1234-5678</td>
		                                                      <td>-</td>
		                                                      <td>
		                                                      	<select class="form-control" id="contest_score_select">
		                                                     		<option>0</option>
		                                                     		<option>1</option>
		                                                 		</select>
		                                             		  </td>
		                                             		  <td>
		                                             			<a href="javascript:void(0);" class="btn btn-sm btn-success shadow-0" id="js-sweetalert2-example-7">수정</a>
															  </td>
		                                                  </tr>
		                                              </tbody>
		                                          </table>
		                                         
		                                      </div>
		                                      
                                  			</div>
                                       </div>
                                       <div class="frame-wrap">
                                           <nav aria-label="...">
                                               <ul class="pagination pagination justify-content-center pagination-xs">
                                                   <li class="page-item disabled">
                                                       <a class="page-link" href="#" aria-label="Previous">
                                                           <span aria-hidden="true"><i class="fal fa-chevron-left"></i></span>
                                                       </a>
                                                   </li>
                                                   <li class="page-item active" aria-current="page">
                                                       <span class="page-link">
                                                           1
                                                           <span class="sr-only">(current)</span>
                                                       </span>
                                                   </li>
                                                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                   <li class="page-item">
                                                       <a class="page-link" href="#" aria-label="Next">
                                                           <span aria-hidden="true"><i class="fal fa-chevron-right"></i></span>
                                                       </a>
                                                   </li>
                                               </ul>
                                           </nav>
                                       </div>
                            		</div>
                            	</div>
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
									                                        <p>공모전 등록 페이지</p>
																		</div>
																	</div>
																	<form class="needs-validation" novalidate=""
																		method="post" name="registForm" id="registForm">
																		<div class="panel-content">
																			<!-- <input type="hidden" name="supNo" value="0"> -->
																			<div class="form-group">
									                                        	<label class="form-label" for="conTitle"><b>공모전명</b> <span class="text-danger">*</span></label>
									                                            <input type="text" class="form-control" id="conTitle" name="conTitle" placeholder="공모전명을 입력해주세요." >
					                                                            <div class="invalid-feedback">
																					공모전명을 입력해주세요.
					                                                            </div>
					                                                        </div>
					                                                        <div class="form-group">
									                                        	<label class="form-label" for="conContent"><b>공모전 내용</b> <span class="text-danger">*</span></label>
									                                            <input type="text" class="form-control" id="conContent" name="conContent" placeholder="공모전내용을 입력해주세요." >
					                                                            <div class="invalid-feedback">
																					공모전내용을 입력해주세요.
					                                                            </div>
					                                                        </div>
					                                                        <div class="form-group">
					                                                            <label class="form-label" for="conField"><b>공모전 분야</b> <span class="text-danger">*</span> </label>
					                                                            <input type="text" class="form-control" id="conField" name="conField" placeholder="분야를 입력해주세요." >
					                                                            <div class="invalid-feedback">
																					공모분야를 입력해주세요.
					                                                            </div>
					                                                        </div>
					                                                        
					                                                       <div class="form-group">
							                                                    <label class="form-label" for="conSdate"><b>공모시작일자</b> <span class="text-danger">*</span></label>
							                                                    <input class="form-control" id="conSdate" type="date" name="conSdate">
							                                                </div> 
							                                                <div class="form-group">
							                                                    <label class="form-label" for="conEdate"><b>공모마감일자</b> <span class="text-danger">*</span></label>
							                                                    <input class="form-control" id="conEdate" type="date" name="conEdate">
							                                                </div>
					                                                        
					                                                        <div class="form-group">
					                                                            <label class="form-label" for="conAward"><b>시상내용</b> <span class="text-danger">*</span></label>
					                                                            <textarea class="form-control" id="conAward" name="conAward" placeholder="ex) 대상 1인(3점) 최우수상 2인(2점) 우수상 2인(1점)" rows="7"></textarea>
					                                                            <div class="invalid-feedback">
																					시상하실 내용을 입력해주세요. 
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
																				<button class="btn btn-success btn-pills ml-auto waves-effect waves-themed" type="button" id="registBtn">등록하기</button>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
                            	
                            </div>
                    </main>
        <%@ include file="/WEB-INF/views/comember/mypage/support/support_js.jsp"%>            
        <script src="<%=request.getContextPath()%>/resources/template/js/vendors.bundle.js"></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/app.bundle.js"></script>
        <script src="<%=request.getContextPath()%>/resources/template/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>
        <script>
            $('#js_change_tab_direction input').on('change', function(){
                var newclass = $('input[name=radioNameTabDirection]:checked', '#js_change_tab_direction').val();
                $('#js_change_tab_direction').parent('.panel-tag').next('.nav.nav-tabs').removeClass().addClass(newclass);
            });
            $('#js_change_pill_direction input').on('change', function(){
                var newclass = $('input[name=radioNamePillDirection]:checked', '#js_change_pill_direction').val();
                $('#js_change_pill_direction').parent('.panel-tag').next('.nav.nav-pills').removeClass().addClass(newclass);
            });

        </script>
        
        <script>
            $(document).ready(function()
            {

                "use strict";

                

                $("#js-sweetalert2-example-7").on("click", function()
                {
                    Swal.fire(
                    {
                        title: "가산점을 부여하시겠습니까?",
                        type: "success",
                        showCancelButton: true,
                        confirmButtonText: "OK"
                    }).then(function(result)
                    {
                        if (result.value){
                        	
                            Swal.fire("가산점이 부여되었습니다.", "", "success");
                        }
                    });
                }); 
            });

                </script>
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
			param = param.replaceAll('-','/');
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
				url : 'contestRegist.do',
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
<script>
	$('.adBtn').on('click', function(){
		
		var conNo = $(this).val();
		alert(conNo);
		
		window.open('contestDetail.do?conNo='+ conNo,'공모전 상세보기','width=900,height=750,left=300');
				
		
	});
</script>
   