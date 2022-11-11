<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="card-header py-2 d-flex align-items-center flex-wrap">
	<div class="card-title">기본정보 수정 중</div>
	<button type="button" value="${cer.cerNo}" id="cerModify"
		name="cerModifyForm"
		class="modifyForm_load btn btn-xs btn-icon width-1 fs-xl btn-success ml-auto waves-effect waves-themed">
		<i class="fal fa-check"></i>
	</button>
	<button onclick="nonCheck_reload()"
		class="btn btn-xs btn-icon width-1 fs-xl btn-primary ml-1 waves-effect waves-themed">
		<i class="fal fa-reply"></i>
	</button>
</div>
<form class="needs-validation" novalidate="" method="post" id="cerForm">
	<div class="row">
		<div class="col-xl-6">
			<div class="panel-content">
				<div class="form-group">
					<label class="form-label" for="simpleinput">Text</label> <input
						type="text" id="simpleinput" class="form-control">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-email-2">Email</label> <input
						type="email" id="example-email-2" name="example-email-2"
						class="form-control" placeholder="Email">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-password">Password</label> <input
						type="password" id="example-password" class="form-control"
						value="password">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-palaceholder">Placeholder</label>
					<input type="text" id="example-palaceholder" class="form-control"
						placeholder="placeholder">
				</div>
			</div>
		</div>
		<div class="col-xl-6">
			<div class="panel-content">
				<div class="form-group">
					<label class="form-label" for="simpleinput">Text</label> <input
						type="text" id="simpleinput" class="form-control">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-email-2">Email</label> <input
						type="email" id="example-email-2" name="example-email-2"
						class="form-control" placeholder="Email">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-password">Password</label> <input
						type="password" id="example-password" class="form-control"
						value="password">
				</div>
				<div class="form-group">
					<label class="form-label" for="example-palaceholder">Placeholder</label>
					<input type="text" id="example-palaceholder" class="form-control"
						placeholder="placeholder">
				</div>
			</div>
		</div>
	</div>
</form>
<%@ include file="/WEB-INF/views/indmember/indmember_js.jsp"%>