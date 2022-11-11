<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>
th, td {
  text-align: center;
}

.tab-content {
	border-top: 1px solid #168;
	height: 100%;
	overflow: auto;
	position: relative;
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
	document.getElementById('openSdate').value = new Date().toISOString().substring(0, 10);
});
</script>
<script>
function openRecDetail(p_seqno) {
	$.ajax({
		type : 'POST',
		url : '<%=request.getContextPath()%>/comember/mypage/opendetail',
		data : {'openSeqno' : p_seqno},
		success : function(result) {
			console.log(result);
			$('#placeholder').empty();
			$('#openSeqno').val(JSON.stringify(result.openSeqNo));
			$('#openCOCL').val(result.openCOCL);
			$('#openCnt').val(result.openCnt);
			$('#openConm').val(result.openConm);
			$('#openContent').val(result.openContent);
			$('#openEdate').val(result.openEdate);
			$('#openEdunm').val(result.openEdunm);
			$('#openHomepg').val(result.openHomepg);
			$('#openRegion').val(result.openRegion);
			$('#openSdate').val(result.openSdate);
			$('#openTitle').val(result.openTitle);
			$('#openType').val(result.openType);
		},
		error : function() {
			alert("Error");
		}
	});
};

function recruitDetail(p_recno) {
	$.ajax({
		url : '<%=request.getContextPath()%>/comember/mypage/recdetail',
		type : 'POST',
		data : {'recNo' : p_recno},
		success : function(result) {
			console.log(result);
			console.log("Success");
		},
		error : function(xhr, status) {
			console.log(xhr, status);
		}
	});
};

function cleanDetail() {
	$("#my_div div").empty();
	$("#supplyRec").empty();
	$("#supplyRec").empty();
}
</script>
<script>
function supplyOpenDetail(p_id) {
	window.open("<%=request.getContextPath()%>/comember/mypage/resume.do?option="+p_id, 'detail', 'location=no, width=700, height=500, status=no, toolbar=no');
}
</script>
<script>
function supplyOpenRec(p_openSeqno){
	var DynamicTable = '';
	$.ajax({
		url : '<%=request.getContextPath()%>/comember/mypage/supplyRec',
		type : 'POST',
		data : {'openSeqno' : p_openSeqno},
		success : function(result) {
			if(result == null) {
				$("#supplyRec").html('<tr><td colspan="5">해당 공고 지원자가 없습니다</td></tr>');
			} else {
				cleanDetail();
				for (var idx in result) {
					var p_id = result[idx].id;
					DynamicTable += '<tr id="supplyRecList" onclick="supplyOpenDetail('+"\'"+result[idx].id+"\'"+')">';
					DynamicTable += '<td style="width : 8%;" id="supplyRecId">'+(Number(idx)+1)+'</td>';
					DynamicTable += '<td style="width : 23%;" id ="supplyRecName">'+result[idx].name+'</td>';
					DynamicTable += '<td style="width : 23%;" id ="supplyRecIndOpen">'+result[idx].indOpen+'</td>';
					DynamicTable += '<td style="width : 23%;" id ="supplyRecResume">'+'버튼양식openwindow형식으로 줄 예정'+'</td>';
					DynamicTable += '<td style="width : 23%;" id ="supplyRecActivity">'+'버튼양식openwindow형식으로 줄 예정'+'</td>';
					DynamicTable += '</tr>';
				}
				$("#supplyRec").append(DynamicTable);
			}
		},
		error : function(xhr, status) {
			console.log(xhr, status);
		}
	});
};
</script>
<script>
function findAddr() {	
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
            
            if (data.userSelectedType === 'R') { 
                addr = data.roadAddress;
            } else { 
                addr = data.jibunAddress;
            }

            document.getElementById("sample6_address").value = addr;
        }
    }).open();
};
</script>
<script>
function changeOpenBtn() {
	const recBtn = document.getElementById('recBtn');
	const openBtn = document.getElementById('openBtn');
	const openDiv = document.getElementById('openRec-content');
	const recDiv = document.getElementById('recruit-content');
	
	recBtn.style.display = 'none';
	openBtn.style.display = 'block';
	openDiv.style.display = 'block';
	recDiv.style.display = 'none';
	
}

function changeRecBtn() {
	const recBtn = document.getElementById('recBtn');
	const openBtn = document.getElementById('openBtn');
	const openDiv = document.getElementById('openRec-content');
	const recDiv = document.getElementById('recruit-content');
	
	recBtn.style.display = 'block';
	openBtn.style.display = 'none';
	openDiv.style.display = 'none';
	recDiv.style.display = 'block';
}
</script>

<script>
</script>
<c:set var="openRecList" value="${dataMap.openRecList }" />
<c:set var="recruitList" value="${dataMap2.recruitList }" />
<c:set var="supplyRecList" value="${dataMap3.supplyRecList }"/>
<c:set var="i" value="0"/>

<main id="js-page-content" role="main" class="page-content">
<ol class="breadcrumb page-breadcrumb">
	<li class="breadcrumb-item"><a href="javascript:void(0);">마이페이지</a></li>
	<li class="breadcrumb-item">취업지원</li>
	<li class="breadcrumb-item active">프로그램 관리</li>
	<li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
</ol>
<div class="row">
	<div class="col-xl-6" style="height: 1090px;">
		<div>
			<div class="col-xl-12">
				<div id="panel-7" class="panel" style="height: 520px;">
					<div class="panel-hdr">
						<div class="col-lg-6">
							<h2>공고등록목록</h2>
						</div>
						<div class="col-lg-6">
							<div class="float-right">
							<button type="button" id="openBtn"
								class="btn btn-default waves-effect waves-themed"
								data-toggle="modal"
								data-target="#openRec-Form">공개채용 등록</button>
								
							<button type="button" id="recBtn" style="display: none;"
								class="btn btn-default waves-effect waves-themed"
								data-toggle="modal"
								data-target="#recruit-Form">일반채용 등록</button>
							</div>
						</div>
					</div>
					<div class="panel-container show">
						<div class="panel-content" style="padding: 5px; height: 400px;">
							<ul class="nav nav-pills nav-fill" role="tablist">
								<li class="nav-item" onclick="changeOpenBtn()"><a class="nav-link active"
									data-toggle="pill" href="#nav_pills_default-1"> 공개채용 </a></li>
								<li class="nav-item" onclick="changeRecBtn()"><a class="nav-link" data-toggle="pill"
									href="#nav_pills_default-2" onclick="cleanDetail();"> 일반채용 </a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade show active" id="nav_pills_default-1"
									role="tabpanel">
									<table id="dt-basic-example"
										class="table table-bordered table-hover w-100"
										style="table-layout: fixed; padding: 0;">
										<thead class="bg-warning-200 mytable" >
											<tr>
												<th style="width: 8%;">No</th>
												<th style="width: 30%;">제목</th>
												<th style="width: 42%;">모집내용</th>
												<th nowrap style="width : 15%;">모집마감일자</th>
												<th nowrap style="width : 15%;">모집인원(명)</th>
											</tr>
										</thead>
										<c:if test="${empty openRecList }">
											<tbody>
												<tr>
													<td colspan="5"><strong>공개채용에 해당 내용이 없습니다.</strong></td>
												</tr>
											</tbody>
										</c:if>
										<tbody>
											<c:forEach items="${openRecList }" var="openRecList">
												<c:set var="i" value="${i + 1}"/>
												<tr onclick="openRecDetail('${openRecList.openSeqNo}'); supplyOpenRec('${openRecList.openSeqNo }');">
													<td><c:out value="${i }"/></td>
													<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; text-align: left;">${openRecList.openTitle}</td>
													<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; text-align: left;">${openRecList.openContent}</td>
													<td>${openRecList.openEdate}</td>
													<td>${openRecList.openCnt }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="tab-pane fade" id="nav_pills_default-2"
									role="tabpanel">
									<table id="dt-basic-example"
										class="table table-bordered table-hover w-100"
										style="table-layout: fixed; padding: 0;">
										<thead class="bg-warning-200 mytable">
											<tr>
												<th style="width: 8%;">No</th>
												<th style="width: 31%;">지원자명</th>
												<th style="width: 31%;">이력서보기</th>
												<th style="width : 15%;">ㅁㅁ</th>
												<th style="width : 15%;">모집인원(명)</th>
											</tr>
										</thead>
										<c:if test="${empty recruitList }">
											<tbody>
												<tr onclick="cleanDetail();">
													<td colspan="6" style="text-align: center;">
													<strong> 일반 채용에 해당 내용이 없습니다.</strong></td>
												</tr>
											</tbody>
										</c:if>
										<tbody>
											<c:forEach items="${recruitList }" var="openRecList">
												<c:set var="i" value="${i + 1}"/>
												<tr onclick="recruitDetail('${recruitList.recWantedno }');">
													<td><c:out value="${i }"/></td>
													<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; text-align: left;">${recruitList.recWantedtitle}</td>
													<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; text-align: left;">${recruitList.recJobcont}</td>
													<td>${recruitList.recReceiptclosedt}</td>
													<td>${recruitList.recReceiptclosedt }</td>
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
			<div class="col-xl-12">
				<div id="panel-7" class="panel" style="height: 547px; margin-top: 24px; margin-bottom: 0px;">
					<div class="panel-hdr">
						<h2>
							지원자목록 <span class="fw-300"></span>
						</h2>
					</div>
					<div class="panel-container show">
						<div class="panel-content">
							<table id="userTable"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th style="width: 8%;">No</th>
										<th style="width: 23%;">지원자 이름</th>
										<th style="width: 23%;">이력서 공개여부</th>
										<th style="width : 23%;">이력서 보기</th>
										<th style="width : 23%;">대회 수상 이력</th>
									</tr>
								</thead>
								<!-- tbody 태그 필요 없다. -->
								<tbody id="supplyRec">
			
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-xl-6" style="height: 1090px;">
		<div style="height : 100%; padding: 0px 12px 0px 12px;">
			<div id="panel-1" class="panel" style="height: 100%;">
				<div class="panel-hdr">
					<h2>공고글 상세보기</h2>
				</div>
				<div class="panel-container show" style="overflow: auto;">
					<div id="openRec-content" class="panel-content" style="height: 1010px;">
						<form style="height : 100%;" >
		                    <div class="form-group">
		                        <label class="form-label" for="simpleinput">제목</label>
		                        <input type="text" id="openTitle" class="form-control">
		                    </div>
		                    <div class="form-group">
		                        <label class="form-label" for="example-email-2">회사명</label>
		                        <input type="text" id="openConm" name="example-email-2" class="form-control" placeholder="" disabled>
		                    </div>
		                    <div class="form-group">
		                        <label class="form-label" for="example-email-2">회사주소</label>
		                        <input type="text" id="openConm" name="example-email-2" class="form-control" placeholder="" disabled>
		                    </div>
		                    <div class="form-group">
		                    	<div class="row" style="margin-left: 0px; margin-right: 0px;">
		                    		<div style = "display: inline; width: 25%; padding: 0px 5px 0px 0px;">
		                    			<label class="form-label" for="example-select">기업형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>대기업/계열사</option>
				                            <option>공기업/공공기관</option>
				                            <option>중견기업</option>
				                            <option>강소기업</option>
				                            <option>청년친화 강소기업</option>
				                            <option>외국계기업</option>
				                            <option>중소기업</option>
				                        </select>
		                    		</div>
		                    		<div style = "display: inline; width: 25%; padding: 0px 5px 0px 5px;">
		                    			<label class="form-label" for="example-select">고용형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>정규직</option>
				                            <option>정규직 전환형</option>
				                            <option>비정규직</option>
				                            <option>기간제</option>
				                            <option>시간선택제</option>
				                            <option>기타</option>
				                        </select>
		                    		</div>
		                    		<div style = "display: inline;  width: 25%; padding: 0px 5px 0px 5px;">
		                    			<label class="form-label" for="example-select">경력형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>인턴</option>
				                            <option>신입</option>
				                            <option>경력</option>
				                            <option>무관</option>
				                            <option>기타</option>
				                        </select>
		                    		</div>
		                    		<div style = "display: inline;  width: 25%; padding: 0px 0px 0px 5px;">
		                    			<label class="form-label" for="example-select">경력형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>고등학교졸업</option>
				                            <option>대졸예정(2,3년)</option>
				                            <option>대졸예정(4년)</option>
				                            <option>대졸(2,3년)</option>
				                            <option>대졸(4년)</option>
				                            <option>석사</option>
				                            <option>박사</option>
				                            <option>학력무관</option>
				                        </select>
		                    		</div>
		                    	</div>
		                    </div>
		                    <div class="form-group">
		                        <input type="text" id="simpleinput" class="form-control" style="display: none;"></input>
		                    </div>
		                    <div class="form-group row" style="margin-left: 0px; margin-right: 0px;">
		                    	<div style="display: inline; width : 50%; padding : 0px 5px 0px 0px;">
		                    		<label class="form-label" for="example-date">등록일</label>
		                        	<input class="form-control" id="openSdate" type="date" name="date" value="" disabled>
		                    	</div>
		                    	<div style="display: inline; width : 50%; padding : 0px 0px 0px 5px;">
		                    		<label class="form-label" for="example-date">마감일</label>
		                        	<input class="form-control" id="openEdate" type="date" name="date" value="">
		                    	</div>
		                    </div>
		                    <div class="form-group">
		                    	<div class="row">
		                    		<div style = "display: inline;  width: 50%; padding: 0px 5px 0px 5px;">
		                    			<label class="form-label" for="example-select">경력형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>인턴</option>
				                            <option>신입</option>
				                            <option>경력</option>
				                            <option>무관</option>
				                            <option>기타</option>
				                        </select>
		                    		</div>
		                    		<div style = "display: inline;  width: 50%; padding: 0px 0px 0px 5px;">
		                    			<label class="form-label" for="example-select">경력형태</label>
				                        <select class="form-control" id="example-select">
				                        	<option>선택하세요</option>
				                            <option>고등학교졸업</option>
				                            <option>대졸예정(2,3년)</option>
				                            <option>대졸예정(4년)</option>
				                            <option>대졸(2,3년)</option>
				                            <option>대졸(4년)</option>
				                            <option>석사</option>
				                            <option>박사</option>
				                            <option>학력무관</option>
				                        </select>
		                    		</div>
		                    	</div>
		                    </div>
		                    
		                    <div class="form-group">
		                        <label class="form-label" for="simpleinput">직무설명</label>
		                        <textarea style="resize: none;" class="form-control" id="openContent" rows="15"></textarea>
		                    </div>
		                    <div class="form-group row" style="margin-left: 0px; margin-right: 0px;">
		                    	<div style="display: inline; width : 50%; padding : 0px 5px 0px 0px;">
		                    		<label class="form-label" for="example-date">모집인원수(명)</label>
		                        	<input class="form-control" id="openSdate" type="text" name="cnt" value="">
		                    	</div>
		                    	<div style="display: inline; width : 50%; padding : 0px 0px 0px 5px;">
		                    		<label class="form-label" for="example-date">마감일</label>
		                        	<input class="form-control" id="openEdate" type="date" name="date" value="">
		                    	</div>
		                    </div>
		                    <label class="form-label" for="simpleinput">근무지역(다음 주소 API)</label>
		                    <div class="form-group">
		                        <input type="text" style="width: 50%; float : left;  " id="sample6_address" class="form-control" onclick="findAddr()">
		                        <input type="text" style="width: 49%; float : right; "id="sample6_extraAddress" class="form-control" >
		                    </div>
		                </form>
					</div>
					<!-- <div id="DetailRec"></div>
					<div id="my_div" class="panel-content">
						<div id="openSeqno"></div>				
						<div id="openCOCL"></div>				
						<div id="openType"></div>				
						<div id="openCar"></div>				
						<div id="oepnJobscd"></div>				
						<div id="openTitle"></div>				
						<div id="openLogo"></div>				
						<div id="openSdate"></div>				
						<div id="openEdate"></div>				
						<div id="openAcptpsn"></div>				
						<div id="openContent"></div>				
						<div id="openRegion"></div>				
						<div id="openCarnm"></div>				
						<div id="openEdunm"></div>				
						<div id="openCnt"></div>				
						<div id="openConm"></div>				
						<div id="openHomepg"></div>				
					</div> -->
					<div id="recruit-content" class="panel-content" style = "height: 100%; display: none;">
						<form class="needs-validation" novalidate="" method="post"
							name="registForm" id="frm">
							<div class="panel-content">
								<!-- 제목 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>공고제목</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="제목을 입력해주세요." value="" required=""
										name="recWantedtitle">
									<div class="invalid-feedback">제목을 입력해주세요.</div>
								</div>
								<!-- 업종 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom03"><b>업종</b>
										<span class="text-danger">*</span></label> <select
										class="custom-select" required="" name="recIndtpcdnm">
										<option value="0">서비스업</option>
										<option value="1">제조·화학</option>
										<option value="2">IT·웹·통신</option>
										<option value="3">은행·금융업</option>
										<option value="4">미디어·디자인</option>
										<option value="5">교육업</option>
										<option value="6">의료·제약·복지</option>
										<option value="7">판매·유통</option>
										<option value="8">건설업</option>
										<option value="9">기관·협회</option>
									</select>
									<div class="invalid-feedback">상담유형을 선택해주세요.</div>
								</div>
								<!-- 기업명 -->
								<div class="form-group">
									<label class="form-label" for="example-palaceholder-disabled"><b>기업명</b></label>
									<input type="text" id="example-palaceholder-disabled"
										class="form-control" value="${loginUser.coNm }" disabled=""
										name="coName" readonly="readonly">
								</div>
								<!-- 경력 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>경력</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="최소경력을 입력해주세요." value="" required=""
										name="recEntertpnm">
									<div class="invalid-feedback">최소경력을 입력해주세요.</div>
								</div>
								<!-- 										학력 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>학력</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="최소학력을 입력해주세요." value="" required=""
										name="recMinedubg">
									<div class="invalid-feedback">최소학력을 입력해주세요.</div>
								</div>
								<!-- 										근무지역 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>근무지역</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="근무지역을 입력해주세요." value="" required=""
										name="recRegion">
									<div class="invalid-feedback">근무지역을 입력해주세요.</div>
								</div>
								<!-- 										임금 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>임금(단위:백만원)</b>
										<span class="text-danger">*</span> </label> <input type="number"
										class="form-control" id="validationCustom01"
										placeholder="임금을 입력해주세요." value="" required=""
										name="recMinsal">
									<div class="invalid-feedback">임금을 입력해주세요.</div>
								</div>
								<!-- 근무형태 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>근무형태</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="근무형태를 입력해주세요." value="" required=""
										name="recWorkdayworkhrcont">
									<div class="invalid-feedback">근무형태를 입력해주세요.</div>
								</div>
								복리후생
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>복리후생</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="복리후생을 입력해주세요." value="" required=""
										name='recFourins'>
									<div class="invalid-feedback">복리후생을 입력해주세요.예:4대보험</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="example-date"><b>모집기간</b>&nbsp;※마감일을
										선택해주세요</label> <input class="form-control" id="example-date"
										type="date" name="date" value="" name="recReceiptclosedt">
								</div>

								<div class="form-group">
									<label class="form-label" for="validationTextarea2"><b>직무내용</b>
										<span class="text-danger">*</span></label>
									<textarea class="form-control" id="validationTextarea1"
										placeholder="담당직무의 내용을 입력해주세요." rows="7" required=""
										name="recJobcont"></textarea>
									<div class="invalid-feedback">담당직무의 내용을 입력해주세요.</div>
								</div>

								<!-- <div class="form-group mb-0">
											<label class="form-label"><b>첨부파일</b></label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" id="customFile">
												<label class="custom-file-label" for="customFile">파일선택</label>
											</div>
										</div> -->
							</div>
							<div
								class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="invalidCheck" required=""> <label
										class="custom-control-label" for="invalidCheck"> Agree
										to terms and conditions <span class="text-danger">*</span>
									</label>
									<div class="invalid-feedback">You must agree before
										submitting.</div>
								</div>
								<input
									class="btn btn-success btn-pills ml-auto waves-effect waves-themed"
									type="submit" id="submit">신청하기</input>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade default-example-modal-right" id="recruit-Form" tabindex="-1"
	role="dialog" aria-hidden="true">
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
						<h2>일반채용 작성</h2>
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
					<div class="panel-container show" style = "height: 100%;">
						<div class="panel-content">
							<div class="panel-tag">
								<p>공고 글쓰기 페이지</p>
							</div>
						</div>
						<form class="needs-validation" novalidate="" method="post"
							name="registForm" id="frm">
							<div class="panel-content">
								<!-- 제목 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>공고제목</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="제목을 입력해주세요." value="" required=""
										name="recWantedtitle">
									<div class="invalid-feedback">제목을 입력해주세요.</div>
								</div>
								<!-- 업종 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom03"><b>업종</b>
										<span class="text-danger">*</span></label> <select
										class="custom-select" required="" name="recIndtpcdnm">
										<option value="0">서비스업</option>
										<option value="1">제조·화학</option>
										<option value="2">IT·웹·통신</option>
										<option value="3">은행·금융업</option>
										<option value="4">미디어·디자인</option>
										<option value="5">교육업</option>
										<option value="6">의료·제약·복지</option>
										<option value="7">판매·유통</option>
										<option value="8">건설업</option>
										<option value="9">기관·협회</option>
									</select>
									<div class="invalid-feedback">상담유형을 선택해주세요.</div>
								</div>
								<!-- 기업명 -->
								<div class="form-group">
									<label class="form-label" for="example-palaceholder-disabled"><b>기업명</b></label>
									<input type="text" id="example-palaceholder-disabled"
										class="form-control" value="${loginUser.coNm }" disabled=""
										name="coName" readonly="readonly">
								</div>
								<!-- 경력 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>경력</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="최소경력을 입력해주세요." value="" required=""
										name="recEntertpnm">
									<div class="invalid-feedback">최소경력을 입력해주세요.</div>
								</div>
								<!-- 										학력 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>학력</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="최소학력을 입력해주세요." value="" required=""
										name="recMinedubg">
									<div class="invalid-feedback">최소학력을 입력해주세요.</div>
								</div>
								<!-- 										근무지역 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>근무지역</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="근무지역을 입력해주세요." value="" required=""
										name="recRegion">
									<div class="invalid-feedback">근무지역을 입력해주세요.</div>
								</div>
								<!-- 										임금 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>임금(단위:백만원)</b>
										<span class="text-danger">*</span> </label> <input type="number"
										class="form-control" id="validationCustom01"
										placeholder="임금을 입력해주세요." value="" required=""
										name="recMinsal">
									<div class="invalid-feedback">임금을 입력해주세요.</div>
								</div>
								<!-- 근무형태 -->
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>근무형태</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="근무형태를 입력해주세요." value="" required=""
										name="recWorkdayworkhrcont">
									<div class="invalid-feedback">근무형태를 입력해주세요.</div>
								</div>
								복리후생
								<div class="form-group">
									<label class="form-label" for="validationCustom01"><b>복리후생</b>
										<span class="text-danger">*</span> </label> <input type="text"
										class="form-control" id="validationCustom01"
										placeholder="복리후생을 입력해주세요." value="" required=""
										name='recFourins'>
									<div class="invalid-feedback">복리후생을 입력해주세요.예:4대보험</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="example-date"><b>모집기간</b>&nbsp;※마감일을
										선택해주세요</label> <input class="form-control" id="example-date"
										type="date" name="date" value="" name="recReceiptclosedt">
								</div>

								<div class="form-group">
									<label class="form-label" for="validationTextarea2"><b>직무내용</b>
										<span class="text-danger">*</span></label>
									<textarea class="form-control" id="validationTextarea1"
										placeholder="담당직무의 내용을 입력해주세요." rows="7" required=""
										name="recJobcont"></textarea>
									<div class="invalid-feedback">담당직무의 내용을 입력해주세요.</div>
								</div>

								<!-- <div class="form-group mb-0">
											<label class="form-label"><b>첨부파일</b></label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" id="customFile">
												<label class="custom-file-label" for="customFile">파일선택</label>
											</div>
										</div> -->
							</div>
							<div
								class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="invalidCheck" required=""> <label
										class="custom-control-label" for="invalidCheck"> Agree
										to terms and conditions <span class="text-danger">*</span>
									</label>
									<div class="invalid-feedback">You must agree before
										submitting.</div>
								</div>
								<input
									class="btn btn-success btn-pills ml-auto waves-effect waves-themed"
									type="submit" id="submit">신청하기</input>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade default-example-modal-right" id="openRec-Form" tabindex="-1"
	role="dialog" aria-hidden="true">
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
						<h2>공개채용 작성</h2>
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
					<div class="panel-container show" style = "height: 100%;">
						<div class="panel-content">
							<div class="panel-tag">
								<p>공고 글쓰기 페이지</p>
							</div>
						</div>
						<form class="needs-validation" novalidate="" method="post"
							name="registForm" id="frm">
							<div class="panel-content">
								<div class="form-group">
			                        <label class="form-label" for="simpleinput">제목</label>
			                        <input type="text" id="openTitle" class="form-control">
			                    </div>
			                    <div class="form-group">
			                        <label class="form-label" for="example-email-2">회사명</label>
			                        <input type="text" value="${loginUser.coNm }" id="openConm" name="example-email-2" class="form-control" placeholder="" disabled>
			                    </div>
			                    <div class="form-group">
			                        <label class="form-label" for="example-email-2">회사주소</label>
			                        <input type="text" value="${loginUser.coAddr } ${loginUser.coDeaddr}" id="openConm" name="example-email-2" class="form-control" placeholder="" disabled>
			                    </div>
			                    <div class="form-group">
			                    	<div class="row" style="margin-left: 0px; margin-right: 0px;">
			                    		<div style = "display: inline; width: 50%; padding: 0px 5px 0px 0px;">
			                    			<label class="form-label" for="example-select">기업형태</label>
					                        <select class="form-control" id="example-select">
					                        	<option>선택하세요</option>
					                            <option>대기업/계열사</option>
					                            <option>공기업/공공기관</option>
					                            <option>중견기업</option>
					                            <option>강소기업</option>
					                            <option>청년친화 강소기업</option>
					                            <option>외국계기업</option>
					                            <option>중소기업</option>
					                        </select>
			                    		</div>
			                    		<div style = "display: inline; width: 50%; padding: 0px 5px 0px 5px;">
			                    			<label class="form-label" for="example-select">고용형태</label>
					                        <select class="form-control" id="example-select">
					                        	<option>선택하세요</option>
					                            <option>정규직</option>
					                            <option>정규직 전환형</option>
					                            <option>비정규직</option>
					                            <option>기간제</option>
					                            <option>시간선택제</option>
					                            <option>기타</option>
					                        </select>
			                    		</div>
			                    	</div>
			                    </div>
			                    <div class="form-group">
			                    	<div class="row" style="margin-left: 0px; margin-right: 0px;">
			                    		<div style = "display: inline;  width: 50%; padding: 0px 5px 0px 0px;">
			                    			<label class="form-label" for="example-select">경력형태</label>
					                        <select class="form-control" id="example-select">
					                        	<option>선택하세요</option>
					                            <option>인턴</option>
					                            <option>신입</option>
					                            <option>경력</option>
					                            <option>무관</option>
					                            <option>기타</option>
					                        </select>
			                    		</div>
			                    		<div style = "display: inline;  width: 50%; padding: 0px 5px 0px 5px;">
			                    			<label class="form-label" for="example-select">경력형태</label>
					                        <select class="form-control" id="example-select">
					                        	<option>선택하세요</option>
					                            <option>고등학교졸업</option>
					                            <option>대졸예정(2,3년)</option>
					                            <option>대졸예정(4년)</option>
					                            <option>대졸(2,3년)</option>
					                            <option>대졸(4년)</option>
					                            <option>석사</option>
					                            <option>박사</option>
					                            <option>학력무관</option>
					                        </select>
			                    		</div>
			                    	</div>
			                    </div>
			                    <div class="form-group">
			                        <input type="text" id="simpleinput" class="form-control" style="display: none;"></input>
			                    </div>
			                    <div class="form-group row" style="margin-left: 0px; margin-right: 0px;">
			                    	<div style="display: inline; width : 50%; padding : 0px 5px 0px 0px;">
			                    		<label class="form-label" for="example-date">등록일</label>
			                        	<input class="form-control" id="openSdate" type="date" name="date" value="" disabled>
			                    	</div>
			                    	<div style="display: inline; width : 50%; padding : 0px 0px 0px 5px;">
			                    		<label class="form-label" for="example-date">마감일</label>
			                        	<input class="form-control" id="openEdate" type="date" name="date" value="">
			                    	</div>
			                    </div>
			                    <div class="form-group">
			                        <label class="form-label" for="simpleinput">직무설명</label>
			                        <textarea style="resize: none; width: 100%;" class="form-control" id="example-textarea" rows="15"></textarea>
			                    </div>
			                    <div class="form-group row" style="margin-left: 0px; margin-right: 0px;">
			                    	<div style="display: inline; width : 50%; padding : 0px 5px 0px 0px;">
			                    		<label class="form-label" for="example-date">모집인원수(명)</label>
			                        	<input class="form-control" id="openSdate" type="text" name="cnt" value="">
			                    	</div>
			                    	<div style="display: inline; width : 50%; padding : 0px 0px 0px 5px;">
			                    		<label class="form-label" for="example-date">마감일</label>
			                        	<input class="form-control" id="openEdate" type="date" name="date" value="">
			                    	</div>
			                    </div>
			                    <label class="form-label" for="simpleinput">근무지역(다음 주소 API)</label>
			                    <div class="form-group">
			                        <input type="text" style="width: 100%; " id="sample6_address" class="form-control" onclick="findAddr()">
			                        <input type="text" style="width: 100%; "id="sample6_extraAddress" class="form-control" >
			                    </div>
								<div
									class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="invalidCheck" required=""> <label
											class="custom-control-label" for="invalidCheck"> Agree
											to terms and conditions <span class="text-danger">*</span>
										</label>
										<div class="invalid-feedback">You must agree before
											submitting.</div>
									</div>
									<input
										class="btn btn-success btn-pills ml-auto waves-effect waves-themed"
										type="submit" id="submit">신청하기</input>
								</div>
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>

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
