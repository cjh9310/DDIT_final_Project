<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="PublicWorkList" value="${PublicWorkList }" />
<c:set var="FaqList" value="${FaqList }" />


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<style>
.tab-content {
	border-top: 1px solid rgb(233,233,233);
	border-right: 2px solid rgb(233,233,233);
	border-bottom: 2px solid rgb(233,233,233);	
	
	height: 282px;
	overflow: auto;
	position: relative;
}

.table table-bordered table-hover w-100 {
	height: 600px;
}

.mytable tr th {
	position: sticky;
	top: 0px;
	background-color: white;
}

#dt-basic-example {
	border-spacing: 0;
	border-collapse: separate;
}
</style>


<script>
	$(document).ready(
			function() {
				jQuery.fn.serializeObject = function() {
					var obj = null;
					try {
						if (this[0].tagName
								&& this[0].tagName.toUpperCase() == "FORM") {
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


<script>
$(document).on('mouseover', '#dt-basic-example tr', function() {
    $(this).css('background-color", "#00099');	

</script>

<!-- ------------------------- Public Work delete------------------------------- -->

<script>
function remove(pubNo){
	alert("게시글을 삭제합니다");
	$.ajax({
		url : 'remove',
		type : 'POST',
		data : {'pubNo': pubNo},				
		success : function(result) {
			console.log(result);
			window.location.replace(location.href);
		},
		error : function(request, status, error) {
			 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
		}
	});
}
	
</script>

<!-- ------------------------- FAQ delete------------------------------- -->

<script>
function faqRemove(faqNo){
	alert("게시글을 삭제합니다");
	$.ajax({
		url : 'faqRemove',
		type : 'POST',
		data : {'faqNo': faqNo},				
		success : function(result) {
			console.log(result);
			window.location.replace(location.href);
		},
		error : function(request, status, error) {
			 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
		}
	});
}
	
	
</script>


<!-- ------------------------- Public Work detail/update------------------------------- -->	

<script>

function openList(pubNo) {
	console.log(pubNo)
	$.ajax({
		url : 'communityPubDetail',
		method : 'POST',
		data : {'pubNo' : pubNo},
		success : function(result) {
			console.log(result);
			$('input[id=openNo]').val(result.pubNo);
			$('input[id=openSdate]').val(result.pubSdate);
			$('input[id=openEdate]').val(result.pubEdate);
			$('input[id=openTitle]').val(result.pubTitle);
			$('input[id=openHost]').val(result.pubHost);
			$('textarea[id=openContent]').summernote('code',result.pubContent);			
		},
		error : function(request, status, error) {
			 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
		}		
	});
};

function pubModify(){
	/* console.log("check:",$("form[role='pubmodifyForm']").attr("action")); */
	$("form[role='pubmodifyForm']").submit();
}

</script>	


<!-- ------------------------- FAQ detail/update------------------------------- -->	

<script>

function openFaqList(faqNo) {
	console.log(faqNo)
	$.ajax({
		url : 'communityFaqDetail',
		method : 'POST',
		data : {'faqNo' : faqNo},
		success : function(result) {
			console.log(result);
			$('input[id=faqNo]').val(result.faqNo);
			$('input[id=faqSdate]').val(result.faqSdate);
			$('input[id=faqTitle]').val(result.faqTitle);
			$('input[id=faqCategory]').val(result.faqCategory);
			$('textarea[id=faqContent]').val(result.faqContent);			
		},
		error : function(request, status, error) {
			 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
		}		
	});
};
</script>	

<script>
function faqModify(){
	console.log("check:",$("form[role='faqmodifyForm']").attr("action"));
	$("form[name='faqmodifyForm']").submit();
};
</script>
	
<!-- ------------------------------------------------------publicWork--------------------------------------------- -->	

<main id="js-page-content" role="main" class="page-content">
	<div class="row">
		<div class="col-xl-6" style="height: 100%;">
			<div>
				<div class="col-xl-12">
					<div id="panel-7" class="panel" style="height: 380px;">
						<div class="panel-container show">
							<div class="panel-content" style="padding: 5px; margin: 10px;">
								<div class="row">
									<div class="col-xl-10">
										<ul class="nav nav-pills" role="tablist">
											<li class="nav-item"><a class="nav-link active"
												data-toggle="pill" > 공공근로알림 </a></li>
										</ul>
									</div>
									<div class="col-xl-2" style="padding-top: 5px;">
										<div style="float: right;">
											<b>추가하기</b> <a href="javascript:void(0);"
												class="btn btn-default btn-xs btn-icon rounded-circle waves-effect waves-themed"
												data-toggle="modal"
												data-target=".default-example-modal-right-sm"> <i
												class="fal fa-plus"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="tab-content"  style="border-bottom: 2px solid rgb(233,233,233); border-right: 2px solid rgb(233,233,233);">
									<div class="tab-pane fade show active" id="nav_pills_default-1"
										role="tabpanel">
										<table id="dt-basic-example"
											class="table table-sm table-bordered table-hover"
											style="table-layout: fixed; padding: 0;">
											<thead class="mytable">
												<tr>
													<th style="width: 5%;  text-align: center;"><b>NO</b></th>
													<th style="width: 15%; text-align: center;"><b>제공처</b></th>
													<th style="width: 30%; text-align: center;"><b>제목</b></th>
													<th style="width: 12%; text-align: center;"><b>등록일</b></th>
													<th style="width: 12%; text-align: center;"><b>마감일</b></th>
													<th style="width: 10%; text-align: center;"><b>삭제</b></th>
												</tr>
											</thead>
	
											<tbody>
												<c:if test="${empty PublicWorkList }">
													<tr>
														<td colspan="6"><strong>해당 내용이 없습니다.</strong></td>
													</tr>
												</c:if>
												<c:forEach items="${PublicWorkList }" var="publicWorkList">
													<c:set var="i" value="${i + 1}" />
													<tr onclick="openList('${publicWorkList.pubNo}');">
														<td style="text-align: center;"><c:out value="${i }" /></td>
														<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${publicWorkList.pubHost }</td>
														<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${publicWorkList.pubTitle }</td>
														<td style="text-align: center;">${publicWorkList.pubSdate }</td>
														<td style="text-align: center;">${publicWorkList.pubEdate }</td>
														<td style="text-align: center;"><button type="button"
																class="btn-xs btn-danger waves-themed" id=remove onclick="remove(${publicWorkList.pubNo})">삭제</button></td>
													</tr>
												</c:forEach>
	
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
<!--  --------------------------------------------------Detail----------------------------------------- -->		
	
				<div class="col-xl-12">
					<div id="panel-7" class="panel"
						style="height: 555px; margin-top: 24px; margin-bottom: 0px;">

						<div class="panel-container show">
							<div class="panel-content">
								<form role="pubmodifyForm" method="post" action="/ddit/admember/mypage/pubModify" name="pubmodifyForm">
									<table id="userTable"
										class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th style="width: 10%; text-align: center;"><b>NO</b></th>
												<th style="width: 5%;"><input type="text" style="border: 0px; width: 50px;" id="openNo" name="pubNo" readonly></th>
												<th style="width: 10%; text-align: center;"><b>등록일</b></th>
												<th style="width: 25%;"><input type="date" style="border: 0px;" id="openSdate" name="pubSdate" readonly></th>
												<th style="width: 10; text-align: center;"><b>마감일</b></th>
												<th style="width: 30;"><input type="date" style="border: 0px;" id="openEdate" name="pubEdate"></th>
												<th style="width: 10%; text-align: center; padding-top: 0px; padding-bottom: 5px; padding-right: 0px; padding-left: 0px;">
													<button type="button" class="btn-sm btn-warning waves-themed"  id="modify" onclick="pubModify()"><b>수정</b></button></th>
											</tr>
											<tr>
												<th style="width: 10%; text-align: center;"><b>제목</b></th>
												<th style="width: 40;" id="myTitle" colspan="3"><input type="text" style="border: 0px;" id="openTitle" name="pubTitle"></th>
												<th style="width: 15; text-align: center;" ><b>제공처</b></th>
												<th style="width: 35%;" id="myHost" colspan="2"><input type="text" style="border: 0px;" id="openHost" name="pubHost"></th>
											</tr>		
											<tr>
												<th style="width: 10%; padding-bottom: 150px; text-align: center;"><b>내용</b></th>
												<th style="width: 90%; height: 350px; padding: 0px;" id="myContent" colspan="6"><textarea style="border: 0px; height: 347px;" id="openContent" name="pubContent"></textarea> </th>
											</tr>																			
										</thead>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!--  -------------------------------------------------------------FAQ------------------------------------------------------------------ -->	
<!--  -------------------------------------------------------------FAQ------------------------------------------------------------------ -->	
<!--  -------------------------------------------------------------FAQ------------------------------------------------------------------ -->	
	
		
	
		<div class="col-xl-6" style="height: 100%;">
			<div>
				<div class="col-xl-12">
					<div id="panel-7" class="panel" style="height: 380px;">
						<div class="panel-container show">
							<div class="panel-content" style="padding: 5px; margin: 10px;">
								<div class="row">
									<div class="col-xl-10">
										<ul class="nav nav-pills" role="tablist">
											<li class="nav-item"><a class="nav-link active"
												data-toggle="pill" > FAQ(자주묻는질문) </a></li>
										</ul>
									</div>
									<div class="col-xl-2" style="padding-top: 5px;">
										<div style="float: right;">
											<b>추가하기</b> <a href="javascript:void(0);"
												class="btn btn-default btn-xs btn-icon rounded-circle waves-effect waves-themed"
												data-toggle="modal"
												data-target=".default-example-modal-left-sm"> <i
												class="fal fa-plus"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="tab-content">
									<div class="tab-pane fade show active" id="nav_pills_default-1"
										role="tabpanel">
										<table id="dt-basic-example"
											class="table table-sm table-bordered table-hover w-100"
											style="table-layout: fixed; padding: 0;">
											<thead class="mytable">
												<tr>
													<th style="width: 10%; text-align: center;"><b>NO</b></th>
													<th style="width: 15%; text-align: center;"><b>카테고리</b></th>
													<th style="width: 45%; text-align: center;"><b>제목</b></th>
													<th style="width: 15; text-align: center;"><b>등록일</b></th>
													<th style="width: 12%; text-align: center;"><b>삭제</b></th>
												</tr>
											</thead>
	
											<tbody>
												<c:if test="${empty FaqList }">
													<tr>
														<td colspan="4"><strong>해당 내용이 없습니다.</strong></td>
													</tr>
												</c:if>
												<c:forEach items="${FaqList }" var="faqList">
													<c:set var="j" value="${j + 1}" />
													<tr onclick="openFaqList('${faqList.faqNo}');">
														<td style="text-align: center;"><c:out value="${j }" /></td>
														<td style="text-align: center;"> ${faqList.faqCategory }</td>
														<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${faqList.faqTitle }</td>
														<td style="text-align: center;">${faqList.faqSdate }</td>
														<td style="text-align: center;"><button type="button"
																class="btn-xs btn-danger waves-themed" id=remove onclick="faqRemove(${faqList.faqNo})">삭제</button></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
<!--  --------------------------------------------------Detail----------------------------------------- -->		
	
				<div class="col-xl-12">
					<div id="panel-7" class="panel"
						style="height: 520px; margin-top: 24px; margin-bottom: 0px;">

						<div class="panel-container show">
							<div class="panel-content">
								<form role="faqmodifyForm" method="post" action="/ddit/admember/mypage/faqModify" name="faqmodifyForm">
									<table id="userTable"
										class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th style="width: 10%; text-align: center;"><b>NO</b></th>
												<th style="width: 5%;"><input type="text" style="border: 0px; width: 50px;" id="faqNo" name="faqNo" readonly></th>
												<th style="width: 15%; text-align: center;"><b>카테고리</b></th>
												<th style="width: 15%;"><input type="text" style="border: 0px;" id="faqCategory" name="faqCategory" readonly></th>
												<th style="width: 15; text-align: center;"><b>등록일</b></th>
												<th style="width: 25%;"><input type="date" style="border: 0px;" id="faqSdate" name="faqSdate" readonly></th>
												<th style="width: 10%; text-align: center; padding-top: 0px; padding-bottom: 5px; padding-left: 0px; padding-right: 0px;">
													<button type="button" class="btn-sm btn-warning waves-themed" onclick="faqModify()"><b>수정</b></button>
												</th>
											</tr>
											<tr>
												<th style="width: 10; text-align: center;"><b>제목</b></th>
												<th style="width: 90%;" id="myTitle" colspan="6"><input type="text" style="border: 0px;" id="faqTitle" name="faqTitle"></th>
											</tr>		
											<tr>
												<th style="width: 10%; padding-bottom: 150px; text-align: center;"><b>내용</b></th>
												<th style="width: 90%; height: 350px;" id="myContent"  colspan="6"><textarea style="border: 0px; height: 347px;" id="faqContent" name="faqContent"></textarea> </th>
											</tr>																			
										</thead>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>		
		


<!-- ----------------------11111 modal 11111---------------------- --> <!-- Modal Right Large -->

	<div class="modal fade default-example-modal-right-sm" tabindex="-1"
		role="dialog" aria-hidden="true" id="my_modal1">
		<div class="modal-dialog modal-dialog-right modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<div class="row">
						<div class="col-xl-12">
							<div id="panel-2" class="panel">
								<div class="panel-hdr">
									<h2>
										<b>공공근로알림</b> <span class="fw-300"><i> &nbsp;&nbsp;공공근로알림 등록</i></span>
									</h2>
									<div class="panel-toolbar">
										<button class="btn btn-panel" data-action="panel-collapse"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Collapse"></button>
										<button class="btn btn-panel" data-action="panel-fullscreen"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Fullscreen"></button>
										<button class="btn btn-panel" data-action="panel-close"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Close"></button>
									</div>
								</div>
								<div class="panel-container show">
									<div class="panel-content">
										<div class="panel-tag">
											<p>
												<b>* 게시물 관리자 필독사항 *</b>
											</p>
											<p>
												마감일은 공공근로 마감일 기준입니다.<br /> 첨부파일이 있으면 등록바랍니다.
											</p>
										</div>
									</div>
									<div class="panel-content p-0">
										<form class="needs-validation" novalidate method="post"
											name="registForm" id="myForm">
											<div class="panel-content">
												<div class="form-row">
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationCustom01">작성자
															<span class="text-danger">*</span>
														</label> <input type="text" class="form-control" id="adId"
															value="${loginUser.id }" disabled required> <input
															type="hidden" name="adId" value="${loginUser.id }" />
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationCustom02">제
															목 <span class="text-danger">*</span>
														</label> <input type="text" class="form-control" id="pubTitle"
															name="pubTitle" placeholder="제목을 입력하세요" value="" required>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationCustom02">제공처
															<span class="text-danger">*</span>
														</label> <input type="text" class="form-control" id="pubHost"
															name="pubHost" value="" required>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-6 mb-3">
														<label class="form-label" for="example-date">등록일 <span
															class="text-danger">*</span></label> <input class="form-control"
															id="pubSdate" type="date" value="" placeholder="" disabled
															required> <input type="hidden"/>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-6 mb-3">
														<label class="form-label" for="example-date">마감일 <span
															class="text-danger">*</span></label> <input class="form-control"
															id="pubEdate" type="date" name="pubEdate" value=""
															required>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationTextarea2"><b>내용</b>
															<span class="text-danger">*</span></label>
														<textarea class="form-control" id="pubContent"
															name="modalPubContent" placeholder="내용을 입력해주세요." rows="7"
															required></textarea>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-8 mb-3">
														<label class="form-label"><b>첨부파일</b></label>
														<div class="custom-file">
															<input type="file" class="custom-file-input"
																id="customFile"> <label class="custom-file-label"
																for="customFile">파일선택</label>
														</div>
													</div>
													<div class="col-lg-4 mt-4">
														<div style="float: right;">
															<button class="btn btn-primary ml-auto" id="registBtn" type="button">등록</button>
														</div>
													</div>
												</div>
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
	


<!-- ----------------------22222 modal 22222---------------------- --> <!-- Modal left Large -->

	<div class="modal fade default-example-modal-left-sm" tabindex="-1"
		role="dialog" aria-hidden="true" id="my_modal2">
		<div class="modal-dialog modal-dialog-right modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<div class="row">
						<div class="col-xl-12">
							<div id="faqpanel-2" class="panel">
								<div class="panel-hdr">
									<h2>
										<b>FAQ(자주묻는질문)</b> <span class="fw-300"><i> &nbsp;&nbsp;FAQ(자주묻는질문 등록)</i></span>
									</h2>
									<div class="panel-toolbar">
										<button class="btn btn-panel" data-action="panel-collapse"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Collapse"></button>
										<button class="btn btn-panel" data-action="panel-fullscreen"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Fullscreen"></button>
										<button class="btn btn-panel" data-action="panel-close"
											data-toggle="tooltip" data-offset="0,10"
											data-original-title="Close"></button>
									</div>
								</div>
								<div class="panel-container show">
									<div class="panel-content">
										<div class="panel-tag">
											<p>
												<b>* 게시물 관리자 필독사항 *</b>
											</p>
											<p>
												마감일은 공공근로 마감일 기준입니다.<br /> 첨부파일이 있으면 등록바랍니다.
											</p>
										</div>
									</div>
									<div class="panel-content p-0">
										<form class="needs-validation" novalidate method="post" action="<%=request.getContextPath()%>/admember/mypage/commuity" name="faqForm" id="faqForm">
											<div class="panel-content">
												<div class="form-row">
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationCustom01">작성자
															<span class="text-danger">*</span>
														</label> <input type="text" class="form-control" id="modalfaqAdId"
															value="${loginUser.id }" disabled required> <input
															type="hidden" name="adId" value="${loginUser.id }" />
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-6 mb-3">
													
														<label class="form-label" for="example-date">카테고리 <span
															class="text-danger">*</span></label>
														<div class="input-group">
		                                                    <select class="custom-select" id="inputGroupSelect01" onchange="funCategory()">
		                                                        <option selected="">카테고리를 선택하세요</option>
		                                                        <option value="개인회원문의">개인회원문의</option>
		                                                        <option value="기업회원문의">기업회원문의</option>
		                                                        <option value="기타문의">기타문의</option>
		                                                    </select>
		                                                    <div class="valid-feedback">Looks good!</div>
		                                                </div>
		                                                <input class="form-label" id="categoryLable" name="faqCategory" value="" style="display: none;"></input>
													</div>
																											
													<div class="col-lg-6 mb-3">
														<label class="form-label" for="example-date">등록일 <span
															class="text-danger">*</span></label> <input class="form-control"
															id="modalFaqSdate" type="date" value="" placeholder="" disabled
															required> <input type="hidden"/>
														<div class="valid-feedback">Looks good!</div>
													</div>													
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationCustom02">제
															목 <span class="text-danger">*</span>
														</label> <input type="text" class="form-control" id="modalfaqTitle"
															name="faqTitle" placeholder="제목을 입력하세요" value="" required>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-12 mb-3">
														<label class="form-label" for="validationTextarea2"><b>내용</b>
															<span class="text-danger">*</span></label>
														<textarea class="form-control" id="modalfaqContent"
															name="faqContent" placeholder="내용을 입력해주세요." rows="15"
															required></textarea>
														<div class="valid-feedback">Looks good!</div>
													</div>
													<div class="col-lg-12">
														<div style="float: right;">
															<button class="btn btn-primary ml-auto" id="faqRegistBtn" type="button">등록</button>
														</div>
													</div>
												</div>
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
</main>


<!-- --------------------------등록일 오늘날짜로-------------------------- -->
<script>
	document.getElementById('pubSdate').value = new Date().toISOString()
			.substring(0, 10);
 	document.getElementById('pubEdate').value = new Date().toISOString()
			.substring(0, 10); 
	document.getElementById('modalFaqSdate').value = new Date().toISOString()
	.substring(0, 10);
</script>

<!-- ------------------------- public Work modal(insert)------------------------------- -->

<script>
	$('#registBtn').click(function() {
		var data = $("#myForm").serializeObject();
		console.log(data);
		$.ajax({
			url : 'pubRegist',
			type : 'POST',
			data : data,				
			success : function(data) {
				window.location.replace(location.href);
			},
			error : function(request, status, error) {
				 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
			}
		});
	});
</script>

<c:if test="${from eq 'regist' }" >
	<script>
		alert("등록되었습니다.");
		$("#my_modal").modal('hide');
		window.opener.location.reload();			
	</script>
</c:if>



<!-- ------------------------- FAQ modal (insert)------------------------------- -->
<script>

	function funCategory(){
		var selCategory = document.getElementById('inputGroupSelect01');
		var category = (selCategory.options[selCategory.selectedIndex].value);
		console.log(category);
		
		$('#categoryLable').val(category)
		console.log($('#categoryLable').val());
	};
	
	$('#faqRegistBtn').click(function() {
		var data = $("#faqForm").serializeObject();
		console.log(data);
		$.ajax({
			url : 'faqRegist',
			type : 'POST',
			data : data,				
			success : function(data) {
				window.location.replace(location.href);
			},
			error : function(request, status, error) {
				 alert("code: " + request.status + "message: " + request.responseText + "error: " + error);
			}
		});
	});

</script>


<c:if test="${from eq 'regist' }" >
	<script>
		alert("등록되었습니다.");
		$("#my_modal").modal('hide');
		window.opener.location.reload();			
	</script>
</c:if>


<!-- ---------------------- <modal> validation ---------------------- -->

<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
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

<!-- --------------------------- SUMMER NOTE--------------------------------- -->

<script>
	window.onload=function(){
		summernote_go($('textarea[name="modalPubContent"]'),'<%=request.getContextPath()%>');	
		summernote_go($('textarea[name="pubContent"]'),'<%=request.getContextPath()%>');	
	}
	
</script>


