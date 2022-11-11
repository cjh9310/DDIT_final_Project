<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<c:set var="contest" value="${contest}" />

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

					<div class="panel-toolbar"></div>
				</div>
				<div class="panel-container show">
					<div class="panel-content">
						<form method="post" name="modifyForm" id="modifyForm">
						<div class="row">
							<div class="col-5">
								<img
									src="/ddit/resources/template/img/support/contest/공모전11.png"
									alt="공모전이미지" style="width: 300px;">
							</div>
							<div class="col-7">
								<div class="form-group">
									<label for="ct"><b>공모전 작성일자</b> </label> <input type="text"
										id="conDate" name="conDate"
										value="<fmt:formatDate value="${contest.conDate}" pattern="yyyy-MM-dd" />"
										class="form-control" readonly>
								</div>
								<div class="form-group">
									<label for="ct"><b>공모전 명</b> </label> <input type="text"
										id="conTitle" name="conTitle" value="${contest.conTitle}"
										class="form-control" >
								</div>
								<div class="form-group">
									<label for="cc"><b>공모 내용</b> </label> <input type="text"
										id="conContent" name="conContent"
										value="${contest.conContent}" class="form-control" >
								</div>
								<div class="form-group">
									<label for="contestField"><b>공모 분야</b></label>
									<input type="text" id="conField" name="conField"
										value="${contest.conField}" class="form-control" >
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모시작일자</b> </label> <input type="date"
												id="conSdate" name="conSdate"
												value="<fmt:formatDate value="${contest.conSdate}" pattern="yyyy-MM-dd" />"
												class="form-control" >
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label for="cs"><b>공모마감일자</b> </label> <input type="date"
												id="conEdate" name="conEdate"
												value="<fmt:formatDate value="${contest.conEdate}" pattern="yyyy-MM-dd" />"
												class="form-control" >
										</div>
									</div>
								</div>
								<div class="form-group" style="margin-top: 20px;">
									<label for="ce"><b>시상내용</b> </label> <input type="text"
										id="conAward" name="conAward" value="${contest.conAward}"
										class="form-control" >
								</div>
								<div class="form-group">
									<label for="ce"><b>첨부파일</b> </label> <input type="text"
										id="conAward" name="conAward" value="" class="form-control">
								</div>
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
	 var param = 
			 {	conTitle:$("input[name=conTitle]").val(),
			 	conContent:$("input[name=conContent]").val(),
			 	conField:$("input[name=conField]").val(),
				conSdate:$("input[name=conSdate]").val(),
			 	conEdate:$("input[name=conEdate]").val(),
			 	conAward:$("input[name=conAward]").val()
			 	//conEdate:$("input[name=conEdate]").val(),
			 }
	 
	 var conNo = ${contest.conNo};
	 
	 $.ajax({
			type:"POST",
			url:"contestModify.do?conNo=" + conNo,
			data:param,
			//contentType: "application.json; charset=utf-8",
			dataType:"text",
			success:(data)=>{
				alert("수정성공");
				location.replace("contestDetail.do?conNo=" + conNo);
				opener.location.replace(opener.location.href);
			},
			error:(request,status,error)=>{
				console.log("failed ajax, code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
	});
}); 

</script>

