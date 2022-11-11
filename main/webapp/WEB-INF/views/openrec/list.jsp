<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="openRecList" value="${dataMap.openRecList }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<style>
.hidden {
	display : noen;
}
.list-item {
	width: 20%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid #E5E5E5;
}

.items {
	width: 20%;
	height: 89%;
	display: flex;
	justify-content: center;
}

.careers-new {
	
}

.careers-new p {
	margin: 0;
	padding: 0;
}

.careers-new .border {
	position: relative;
	border: 1px solid #d3dee8;
}

.careers-new .border:before, .careers-new .border:after {
	content: '';
	display: table;
}

.careers-new .border:after {
	clear: both;
}

.careers-new .border:before {
	content: '';
	display: block;
	position: absolute;
	left: 780px;
	top: 0;
	width: 1px;
	height: 100%;
	background-color: #d3dee8;
}

.careers-new .border .left {
	float: left;
	width: 780px;
	padding: 30px;
}

.careers-new .border .left .title-area {
	
}

.careers-new .border .left .title-area .tit {
	display: inline-block;
	line-height: 1.5;
	font-size: 1.5174em;
	font-weight: 700;
}

.careers-new .border .left .title-area .d-day {
	display: inline-block;
	height: 32px;
	padding: 0 12px;
	color: #ab6152;
	border: 1px solid #fead71;
	border-radius: 16px;
	font-size: 1.1429em;
	font-weight: 700;
	line-height: 32px;
} /* 고대비 작업 */
.careers-new .border .left .info {
	display: table;
	width: 100%;
	table-layout: fixed;
}

.careers-new .border .left .info .column {
	display: table-cell;
	width: 50%;
	margin: 0;
	padding: 50px 0 0 0;
	vertical-align: top;
}

.careers-new .border .left .info .column .tit {
	display: inline-block;
	margin: 0;
	padding: 0;
	line-height: 2.5;
	font-size: 1.071em;
	color: #333;
	font-weight: 700;
	border-bottom: 2px solid #333;
}

.careers-new .border .left .info .column .cont {
	padding: 10px 0 0 0;
}

.careers-new .border .left .info .column .cont ul {
	padding: 0 0 0 20px;
}

.careers-new .border .left .info .column .cont ul li {
	position: relative;
	padding: 0 0 0 70px;
}

.careers-new .border .left .info .column .cont ul li strong {
	display: block;
	position: absolute;
	left: 0;
}

.careers-new .border .left .info .column .cont ul li span {
	display: block;
}

.careers-new .border .left .info .column .cont ul li.full {
	position: relative;
	padding: 0;
}

.careers-new .border .left .info .column .cont ul li em {
	display: inline-block;
	position: relative;
	margin: 0 6px 0 0;
	padding: 0 8px 0 0;
	vertical-align: top;
}

.careers-new .border .left .info .column .cont ul li em:after {
	content: '';
	display: block;
	position: absolute;
	right: 0;
	top: 50%;
	width: 1px;
	height: 14px;
	margin: -7px 0 0 0;
	background-color: #ccc;
}

.careers-new .border .right {
	float: right;
	width: calc(100% - 780px);
	padding: 19px 30px 0 30px;
}

.careers-new .border .logo-company {
	margin: 0;
	padding: 0;
}

.careers-new .border .logo-company .img {
	height: 80px;
	margin: 0;
	padding: 0;
	text-align: center;
	font-size: 0;
	line-height: 0;
	line-height: 80px;
	background-color: #fff;
}

.careers-new .border .logo-company .img img {
	max-width: 100% !important;
	max-height: 80px !important;
}

.careers-new .border .logo-company .txt {
	margin: 0;
	padding: 20px 0;
	font-size: 1.071em;
	font-weight: 700;
	line-height: 1.5;
	text-align: center;
}

.careers-new .border .small-hidden {
	padding: 10px 0 0;
	text-align: center;
}

.careers-new .border .small-hidden .box {
	position: relative;
	display: inline-block;
	width: 132px;
	vertical-align: top;
}

.careers-new .border .small-hidden .box .btn {
	display: block;
	width: 100%;
	height: 28px;
	margin: 0;
	padding: 0 24px 0 7px;
	border: 0;
	background-color: transparent;
	color: #333;
	font-weight: 700;
	letter-spacing: -1px;
	text-align: left;
}

.careers-new .border .small-hidden .box ul {
	display: none;
	position: absolute;
	left: 0;
	top: 28px;
	z-index: 2;
	width: 100%;
	margin: 0;
	padding: 3px 0;
	border: 1px solid #000;
	border-width: 0 1px 1px 1px;
	border-radius: 0 0 4px 4px;
	text-align: left;
	background-color: #fff;
}

.careers-new .border .small-hidden .box ul li {
	padding: 4px 7px;
	line-height: 1.2;
}

.careers-new .border .small-hidden .box.green {
	background:
		url('../images/careers/bg-small-hidden-toggle-green-plus.png')
		no-repeat 0 0;
}

.careers-new .border .small-hidden .box.green ul {
	border-color: #a3d57a;
}

.careers-new .border .small-hidden .box.blue {
	background:
		url('../images/careers/bg-small-hidden-toggle-blue-plus.png')
		no-repeat 0 0;
}

.careers-new .border .small-hidden .box.blue ul {
	border-color: #7fcde6;
}

.careers-new .border .small-hidden .box.on ul {
	display: block;
}

.careers-new .border .small-hidden .box.green.on {
	background:
		url('../images/careers/bg-small-hidden-toggle-green-minus.png')
		no-repeat 0 0;
}

.careers-new .border .small-hidden .box.blue.on {
	background:
		url('../images/careers/bg-small-hidden-toggle-blue-minus.png')
		no-repeat 0 0;
}

.careers-new .border .right .info {
	padding-top: 15px;
}

.careers-new .border .right .info ul {
	
}

.careers-new .border .right .info ul li {
	position: relative;
	margin: 10px 0 0 0;
	padding: 0 0 0 70px;
}

.careers-new .border .right .info ul li:first-child {
	margin-top: 0;
}

.careers-new .border .right .info ul li strong {
	display: block;
	position: absolute;
	left: 0;
}

.careers-new .border .right .info ul li span {
	display: block;
}

.careers-new .border .right .btn {
	padding: 20px 0 30px 0;
	text-align: center;
}

.careers-new .border .right .btn .button {
	margin: 0 4px;
}

.btn-group {
	padding: 30px 0 0 0;
	position: relative;
	text-align: right;
}

.btn-group:before, .btn-group:after {
	content: '';
	display: table;
}

.btn-group:after {
	clear: both;
}

.btn-group .left {
	float: left;
}

.btn-group .right {
	float: right;
}

.btn-group .button {
	
}

.btn-group .button+.button {
	margin: 0 0 0 5px;
}

.btn-group.center {
	text-align: center;
}

.btn-group.center .button, .btn-group.a-c .button {
	margin: 0 3px 0 2px;
}

.btn-group.default .button {
	height: auto;
	padding: 10px 20px;
	line-height: 1.3
}

.btn-group.default .button+.button {
	margin-left: 10px
}

.btn-group .pagination {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
}

.button.blue {
	color: #fff;
	border-color: #3683c3 !important;
	background-color: #3683c3 !important;
}

.button.blue:hover, .button.blue:focus {
	color: #fff;
	background-color: #3683c3 !important;
}

#button-submit {
	width: calc(100% - 200px);
	margin: auto;
}

#btnSubmit {
	width: 100px;
	margin: auto;
	display: table-cell;
	vertical-align: middle;
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
	
	$('#dt-basic-example').dataTable({
		responsive : true,
		autoFill : {
			focus : 'hover'
		},
		aaSorting : [],
		order : [[0,"desc"]]
	});
});
</script>

<script>
function changeTelCom1(arg0) {

   var value = $(arg0).val();
//    console.log(value);
   document.getElementById('numVal').innerHTML = value;
      
   }
function deleteRow(ths){
    var ths = $(ths);
    
    ths.parents("div").remove();
}
   
</script>

<main id="js-page-content" role="main" class="page-content">
<div class="row">
	<div class="col-xl-12">
		<!--Backgrounds-->
		<div id="panel-6" class="panel">
			<div class="panel-container show">
				<div class="demo-v-spacing">
					<ol class="breadcrumb bg-primary-300">
						<li class="breadcrumb-item text-white"><a href="#"
							class="text-white"> <i class="fal fa-home mr-1"></i> 공채
						</a></li>
						<li class="breadcrumb-item text-white"><a href="#"
							class="text-white">공채 리스트</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="w-75 mx-auto" style="height: 30px;"></div>
<div class="w-75 mx-auto" style="height: 300px;">
	<div class="w-100 h-100"
		style="float: none; margin: 0 auto; width: 750px;">
		<div class="w-100 row" style="height: 10%;">
			<div class="list-item">업종</div>
			<div class="list-item">근무지역</div>
			<div class="list-item">경력</div>
			<div class="list-item">학력</div>
			<div class="list-item">회사규모</div>
		</div>
		<div class="w-100 row" style="height: 75%;">
			<div class="items overflow-auto">
				<div class="form-check"
					style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
					<select id="example-multiselect" multiple="" class="form-control"
						style="height: 200px;">
						<option type="button" style="font-size: 1.5em;" value="1"
							onclick="changeTelCom1(this);">1</option>
						<option type="button" style="font-size: 1.5em;" value="2"
							onclick="changeTelCom1(this);">2</option>
						<option type="button" style="font-size: 1.5em;" value="3"
							onclick="changeTelCom1(this);">3</option>
						<option type="button" style="font-size: 1.5em;" value="4"
							onclick="changeTelCom1(this);">4</option>
						<option type="button" style="font-size: 1.5em;" value="5"
							onclick="changeTelCom1(this);">5</option>
					</select>
				</div>
			</div>
			<div class="items overflow-auto">
				<div class="form-check"
					style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
					<select id="example-multiselect" multiple="" class="form-control"
						style="height: 200px;">
						<option type="button" style="font-size: 1.5em;">1</option>
						<option style="font-size: 1.5em;">22</option>
						<option style="font-size: 1.5em;">333</option>
						<option style="font-size: 1.5em;">4444</option>
						<option style="font-size: 1.5em;">55555</option>
					</select>
				</div>
			</div>
			<div class="items overflow-auto">
				<div class="form-check"
					style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
					<select id="example-multiselect" multiple="" class="form-control"
						style="height: 200px;">
						<option type="button" style="font-size: 1.5em;">1</option>
						<option style="font-size: 1.5em;">22</option>
						<option style="font-size: 1.5em;">333</option>
						<option style="font-size: 1.5em;">4444</option>
						<option style="font-size: 1.5em;">55555</option>
					</select>
				</div>
			</div>
			<div class="items overflow-auto">
				<div class="form-check"
					style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
					<select id="example-multiselect" multiple="" class="form-control"
						style="height: 200px;">
						<option type="button" style="font-size: 1.5em;">1</option>
						<option style="font-size: 1.5em;">22</option>
						<option style="font-size: 1.5em;">333</option>
						<option style="font-size: 1.5em;">4444</option>
						<option style="font-size: 1.5em;">55555</option>
					</select>
				</div>
			</div>
			<div class="items overflow-auto">
				<div class="form-check"
					style="float: left; margin: 0 auto; padding-left: 0px; width: 100%;">
					<select id="example-multiselect" multiple="" class="form-control"
						style="height: 200px;">
						<option type="button" style="font-size: 1.5em;">1</option>
						<option style="font-size: 1.5em;">22</option>
						<option style="font-size: 1.5em;">333</option>
						<option style="font-size: 1.5em;">4444</option>
						<option style="font-size: 1.5em;">55555</option>
					</select>
				</div>
			</div>
			<!-- d-flex justify-content-start -->
			<div class="w-100 row list-item col-lg-12"
				style="height: 25%; float: none; margin: 0 auto;">
				<div class="float-right col-lg-8 d-flex justify-content-start"
					id="numVal" type="button" onclick="deleteRow(this);"></div>
				<div class="col-lg-4 d-flex justify-content-end">
					<button type="button"
						class="btn btn-success btn-pills waves-effect waves-themed "
						data-toggle="modal" data-target=".default-example-modal-right-lg">기업조회</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="w-75 mx-auto" style="height: 30px;"></div>

<!-- Modal Open Button -->
<button type="button" class="btn btn-success btn-pills waves-effect waves-themed" data-toggle="modal" data-target=".default-example-modal-right-lg">채용공고</button>

<!-- Modal Pagge -->
<div class="modal fade default-example-modal-right-lg" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-right modal-lg">
        <div class="modal-content">
        	<!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title h4">Large right side modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="fal fa-times"></i></span>
                </button>
            </div>
            <!-- Modal Body -->
            <div class="modal-body">
            	<!-- Form Field -->
                <form class="needs-validation" novalidate="novalidate" role="form" method="post" action="regist.do" name="registForm" id="frm">
                
                </form>
                <!-- END Foem Field -->
            </div>
            <!-- END Modal Body -->
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button id="submit" onclick="regist_go();" type="submit" class="btn btn-success btn-pills ml-auto waves-effect waves-themed">Save changes</button>
            </div>
            <!-- END Modal Footer -->
        </div>
    </div>
</div>

<div class="col-xl-12" style="padding-left: 0px; padding-right: 0px;">
	<div id="panel-6" class="panel">
		<div class="panel-container show">
			<div class="panel-content">
				<table id="dt-basic-example"
					class="table table-bordered table-hover table-striped w-100"
					style="table-layout: fixed; overflow: scroll;">
					<thead class="bg-warning-200">
						<tr>
							<th>제목</th>
							<th>모집시작일자</th>
							<th>모집마감일자</th>
							<th>모집내용</th>
							<th>지역</th>
							<th>Controls</th>
						</tr>
					</thead>
					<c:if test="${empty openRecList }">
						<tbody>
							<tr>
								<td colspan="5"><strong>해당 내용이 없습니다.</strong></td>
							</tr>
						</tbody>
					</c:if>
					<div class="row justify-content-between">
						<select class="form-control col-md-3" name="perPageNum"
							id="perPageNum" onchange="list_go_by_openRec(1);"
							style="display: none;">
							<option value="10">정렬개수</option>
							<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
							<option value="50" ${cri.perPageNum == 50 ? 'selected':''}>50개씩</option>
							<option value="100" ${cri.perPageNum == 100 ? 'selected':''}>100개씩</option>
						</select> <select class="form-control-sm mt-5 ml-3" name="searchType"
							id="searchType" onchange="list_go_by_openRec(1)">
							<option value="s" ${cri.searchType eq 's' ? 'selected':'' }>시작일순</option>
							<option value="y" ${cri.searchType eq 'e' ? 'selected':'' }>마감일순</option>
						</select> 
						<input style="display: none;" form-control type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" />
					</div>
					<tbody>
						<c:forEach items="${openRecList }" var="openRecList">
							<tr onclick="Test()">
								<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${openRecList.openTitle}</td>
								<td>${openRecList.openSdate}</td>
								<td>${openRecList.openEdate}</td>
								<td style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${openRecList.openContent}</td>
								<td>${openRecList.openRegion}</td>
								<td>1</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- datatable end -->
				<div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="modal" class="modal hidden">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title h4">Large right side modal</h5>
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true"><i class="fal fa-times"></i></span>
			</button>
		</div>
		<div class="modal-body">
			...
		</div>
		<div class="modal-footer">
			<button type="button"
				class="btn btn-secondary waves-effect waves-themed"
				data-dismiss="modal">Close</button>
			<button type="button"
				class="btn btn-primary waves-effect waves-themed">Save
				changes</button>
		</div>
	</div>
</div>
<%@ include file="../include/pagination.jsp"%>
</main>

<script type="text/javascript">
	/* Activate smart panels */
	$('#js-page-content').smartPanel();
</script>

<script>
function list_go_by_openRec(page,url){
	//alert(page);
	if(!url) url="list.do";
	
	var jobForm=$('#jobForm');
	jobForm.find("[name='page']").val(page);
	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
	jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
	jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
	jobForm.attr({
		action:url,
		method:'get'
	}).submit(); 
}
</script>

<script>
	function regist_go() {
		var form = document.getElementById('frm');
		form.submit();
	}
</script>

