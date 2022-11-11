<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>      
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contestList" value="${dataMap.contestList }" />
<c:set var="count" value="${dataMap.totalCnt }" />

<style>
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
}
</style>             
                   
                    <main id="js-page-content" role="main" class="page-content">

                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">취업지원</a></li>
                            <li class="breadcrumb-item">공모전</li>
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                       
                        <div class="row">
                            <div class="col-xl-12">
                                <!-- Card decks -->
                                <div id="panel-11" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            공모전 <span class="fw-300"></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-container show">
	                                    <div class="row">
	                                    	<c:forEach items="${contestList}" var="contest">
		                                        <div class="panel-content col-3">
		                                            <div class="card-deck">
		                                                <div class="card">
		                                                    <img src="<%=request.getContextPath()%>/resources/template/img/support/contest/공모전11.png" class="card-img-top" alt="...">
		                                                    <%-- <img src="${contestList[i].imgURL }" class="card-img-top" alt="..."> --%>
		                                                    
		                                                    <div class="card-body">
		                                                    	<h5 class="card-title" data-toggle="tooltip" data-placement="top" title="" data-original-title="${contest.conTitle }">${contest.conTitle }</h5>
		                                                    	<p class="card-text" data-toggle="tooltip" data-placement="top" title="" data-original-title="${contest.conContent }">${contest.conContent }</p>
		                                                    	<div style="text-align:center;">
		                                                    		<a href="javascript:OpenWindow('detail.do','공모전 상세',990,920);" class="btn btn-success btn-pills waves-effect waves-themed">자세히보기</a>
		                                                    	</div>
		                                                    </div>
		                                                    <div class="card-footer">
		                                                        <small class="text-muted">마감일:${contest.conEdate}</small>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                	</c:forEach>
	                                    </div>
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
                    