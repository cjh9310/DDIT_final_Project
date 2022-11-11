<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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

					<b>상담 수정</b>

					<div class="panel-toolbar"></div>
				</div>
				<div class="panel-container show">
					<div class="panel-content">
						<form method="post" name="modifyForm" id="modifyForm">
							<div class="form-group">
								<label class="form-label" for="supType">상담유형</label> <select
									class="form-control" id="supType" name="supType">
									<option ${support.supType eq 0 ? 'selected':''} value="0">진로상담</option>
									<option ${support.supType eq 1 ? 'selected':''} value="1">취업상담</option>
									<option ${support.supType eq 2 ? 'selected':''} value="2">프로그램상담</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label" for="indId">작성자</label> <input
									type="text" id="indId" name="indId" value="${loginUser.name}"
									class="form-control" readonly>
							</div>
							<div class="form-group">
								<label class="form-label" for="supTitle">제목</label> <input
									type="text" id="supTitle" name="supTitle"
									value="${support.supTitle}" class="form-control">
							</div>
							<div class="form-group">
								<label class="form-label" for="supPdate">상담가능일자</label> <input
									class="form-control" id="supPdate" name="supPdate"
									value="<fmt:parseDate value='${support.supPdate}'  var = "transeSupPdate" pattern='yyyy-mm-dd HH:mm:ss'/>
				                      														  	   <fmt:formatDate value="${transeSupPdate}" pattern="yyyy-MM-dd" />"
									type="date">
							</div>
							<div class="form-group">
								<label class="form-label" for="supContent">상담내용</label>
								<textarea class="form-control" id="supContent" name="supContent"
									rows="7">${support.supContent}</textarea>
							</div>
							<div class="form-group mb-0">
								<label class="form-label">첨부파일</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="customFile">
									<label class="custom-file-label" for="customFile">첨부하실
										파일이 있으시면 업로드해주세요.</label>
								</div>
							</div>
						</form>
					</div>

				</div>

			</div>

			<div class="demo" style="text-align: right;">
				<button type="button" id="modifyBtn"
					class="btn btn-success btn-pills waves-effect waves-themed">등 록</button>
				<button type="button" onclick="CloseWindow();"
					class="btn btn-dark btn-pills waves-effect waves-themed">취 소</button>
			</div>
		</div>
	</div>
</main>

<script>

 $("#modifyBtn").on("click",function() {
	 var param = {
				supType:$("select[name=supType]").val(),
				supTitle:$("input[name=supTitle]").val(),
				supPdate:$("input[name=supPdate]").val(),
				supContent:$("textarea[name=supContent]").val()
			}
	 var supNo = ${support.supNo};
	 $.ajax({
			type:"post",
			url:"supportModify.do?supNo=" + supNo,
			data:param,
			//contentType: "application.json; charset=utf-8",
			dataType:"text",
			success:(data)=>{
				location.href=location.href;
				opener.location.replace(opener.location.href);
			},
			error:(request,status,error)=>{
				console.log("failed ajax, code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
	});
}); 

</script>
