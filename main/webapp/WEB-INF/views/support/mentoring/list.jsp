<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="mentoringList" value="${dataMap.mentoringList }" />
<c:set var="count" value="${dataMap.totalCnt }" />

<style>
img{
	height: 204px;
	}

.card-img-top {
	height: 593px;
	}
	
.card-body {
	display: block;
}

.card-title {
	width: 334px;
	height: 19.5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.card-text {
	width: 334px;
	height: 19.5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
</style>
    
                    <main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">취업지원</a></li>
                            <li class="breadcrumb-item">멘토링</li>
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                       
                        <div class="row">
                            <div class="col-xl-12">
                                <!-- Card decks -->
                                <div id="panel-11" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            멘토링 <span class="fw-300"></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-container show">
                                    <c:forEach var="i" begin="1" end="${mentoringList.size()%4 > 0 ? count+1 : count}" step="1" >
	                                    <div class="row" value="${count}">
	                                    <c:choose>
	                                     <c:when test="${i ne count+1}">
		                                    <c:forEach var="j" begin="0" end="3" step="1">
		                                        <div class="panel-content col-3">
		                                            <div class="card-deck">
		                                                <div class="card">
		                                                    <img src="<%=request.getContextPath()%>/resources/template/img/card-backgrounds/cover-3-lg.png" class="card-img-top" alt="...">
		                                                    <%-- <img src="${contestList[i].imgURL }" class="card-img-top" alt="..."> --%>
		                                                    
		                                                    <div class="card-body">
		                                                    	<h5 class="card-title" data-toggle="tooltip" data-placement="top" title="" data-original-title="${mentoringList[i].menTitle }">${mentoringList[i].menContent }</p>
		                                                    	<div style="text-align:center;">
		                                                    		<a href="javascript:OpenWindow('detail.do','멘토링 상세',990,920);" class="btn btn-success btn-pills waves-effect waves-themed">자세히보기</a>
		                                                    	</div>
		                                                    </div>
		                                                    <div class="card-footer">
		                                                        <small class="text-muted">마감일:${mentoringList[i].menEdate }</small>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </c:forEach>
		                                   </c:when>
		                                   <c:otherwise>
		                                   	<c:forEach var="j" begin="1" end="${mentoringList.size()%4}" step="1"> <!-- total갯수가 4로 똑떨어지지 않을때 보여질 card부분 -->
		                                        <div class="panel-content col-3">
		                                            <div class="card-deck">
		                                                <div class="card">
		                                                    <img src="<%=request.getContextPath()%>/resources/template/img/card-backgrounds/cover-3-lg.png" class="card-img-top" alt="...">
		                                                    <%-- <img src="${gongmList[i].imgURL }" class="card-img-top" alt="..."> --%>
		                                                    
		                                                    <div class="card-body">
		                                                    	<h5 class="card-title" data-toggle="tooltip" data-placement="top" title="" data-original-title="${mentoringList[i].menTitle }">${mentoringList[i].menTitle }</h5>
		                                                    	<p class="card-text" data-toggle="tooltip" data-placement="top" title="" data-original-title="${mentoringList[i].menContent }">${mentoringList[i].menContent }</p>
		                                                    	<div style="text-align:center;">
		                                                    		<a href="javascript:OpenWindow('detail.do','멘토링 상세',990,920);" class="btn btn-success btn-pills waves-effect waves-themed">자세히보기</a>
		                                                    	</div>
		                                                    </div>
		                                                    <div class="card-footer">
		                                                        <!-- <small class="text-muted">마감일:<fmt:formatDate value="${mentoringList[i].menEdate }" pattern="yyyy-MM-dd"/> </small> -->
		                                                        <%-- <small class="text-muted">마감일:value="<fmt:parseDate value='${mentoringList[i]menEdate}'  var = "transemenEdate" pattern='E MMM dd HH:mm:ss z yyyy'/>
				                      														  <fmt:formatDate value="${transemenEdate}" pattern="yyyy-MM-dd" />"</small> --%>
				                      							<small class="text-muted">마감일:${mentoringList[i].menEdate }</small>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </c:forEach>
		                                   </c:otherwise>
		                                </c:choose>
	                                    </div>
                                    </c:forEach>
                                        
                                       	
                                    </div>
                                </div>
                                <div class="frame-wrap">
                                                <nav aria-label="...">
                                                    <ul class="pagination justify-content-center">
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
                    
                    </main>
                    