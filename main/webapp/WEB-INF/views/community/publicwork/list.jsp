<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="publicWorkList" value="${dataMap.publicWorkList }"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

	.offset-md-1 {
		padding-left: 12px;
	}
	
	#mythead {
		pointer-events: none;
		
	}

</style>


<!--   include summernote css/js
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->



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
								class="text-white"> <i class="fal fa-home mr-1"></i> 커뮤니티
							</a></li>
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white">게시판</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- -------------------- emty line -------------------- -->
	
	<div class="row" style="height: 3rem;"></div>

<!-- ---------------------- search ---------------------- -->

	<div class="row">
		<div class="col-sm-2 offset-lg-1 mb-3" >
			<div class="input-group">
				<div class="input-group-prepend">
					<button class="btn btn-primary type"><i class="fal fa-search"></i></button>
				</div>
					<input id="button-addon4" type="text" class="form-control" placeholder="search ..." />
			</div>
		</div>
	</div>
	

<!-- ---------------------- board ---------------------- -->

		<div class="row" id="disp">
			<div class="col-lg-1"></div>
				<div class="col-sm-10">
					<div class="card mb-g">
						<div class="card-body">
							<div class="frame-wrap p-0 border-0 m-0">
								<table class="table m-0 table-hover" id="table-example">
									<thead id=mythead>
										<tr>
											<th style="width: 10%;">No</th>
											<th style="width: 30%;"><b>제목</b></th>
											<th style="width: 15%;"><b>제공처</b></th>
											<th style="width: 15%;"><b>등록일</b></th>
											<th style="width: 15%;"><b>마감일</b></th>
											<th style="width: 10%;"><b>작성자</b></th>
											<th style="width: 5%;"><b>조회수</b></th>
										</tr>
									</thead>
									<tbody>
 										<c:if test="${!empty publicWorkList }">
											<c:forEach items="${publicWorkList }" var="publicWorkList">
												<c:set var="i" value="${i + 1}" />
												<tr>
													<td style="display: none;">${publicWorkList.pubNo }</td>
													<td><c:out value="${i }" /></td>
													<td>${publicWorkList.pubTitle }</td>
													<td>${publicWorkList.pubHost }</td>
													<td>${publicWorkList.pubSdate }</td>
													<td>${publicWorkList.pubEdate }</td>
													<td>${publicWorkList.adId }</td>
													<td>${publicWorkList.viewCnt }</td>
												</tr>
											</c:forEach>
										</c:if> 
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			<div class="col-lg-1"></div>
		</div>


<%@ include file="../../include/pagination.jsp" %>
		
</main>	




<!-- ----------------------- detail---------------------------------- -->

<script>

$("tr").click(function(){
	var pubNo = this.children[0].innerHTML;
	window.open("<%=request.getContextPath()%>/community/publicwork/detail.do?from=list&pubNo="+pubNo ,'detail', 'width=700, height=500');
});                                        

</script>




