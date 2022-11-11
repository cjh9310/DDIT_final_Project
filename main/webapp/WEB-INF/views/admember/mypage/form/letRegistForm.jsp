<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="w-100">
<form class="needs-validation" novalidate="" method="post" id="letForm">
	<tbody>
		<tr>
			<div class="form-group">
				<label class="form-label" for="button-addon3">
					제목
				</label>
				<div class="input-group">
					<input id="button-addon3" type="text" class="form-control"
						placeholder="두괄식으로 명료하게 제목을 표현해보세요."
						aria-label="Example text with two button addons"
						aria-describedby="button-addon3">
					<div class="input-group-append">
						<button class="regist_load btn btn-outline-default waves-effect waves-themed"
								name="letForm" type="button">제출하기</button>
					</div>
				</div>
			</div>
		</tr>
		<tr>
			<div class="form-group">
				<label class="form-label" for="basic-url">내용</label>
				<div class="input-group">
					<textarea class="custom-scroll form-control" id="" name="" aria-label="With textarea" style="height:290px;"
							  placeholder="글자 수 제한은 없습니다. 마음껏 자신을 표현하세요."></textarea>
				</div>
			</div>
		</tr>
	</tbody>
</form>
</table>
<%@ include file="/WEB-INF/views/admember/admember_js.jsp"%>