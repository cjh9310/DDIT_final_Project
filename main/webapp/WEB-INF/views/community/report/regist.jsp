<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>



</style>
            
<main id="js-page-content" role="main" class="page-content">
    <!-- ------------------Breadcrumbs--------------------- -->
	<div class="row">
		<div class="col-sm-1">
		</div>
		<div class="col-sm-4 mt-5">
			<div class="panel-container show">
                <div class="panel-content">
                    <div class="carousel-item">
                        <img src="<%=request.getContextPath()%>/resources/template/img/community/report/report4.png" data-src="holder.js/800x400?auto=yes&amp;bg=967bbd&amp;fg=ffffff&amp;text=Third slide" alt="Second slide [800x400]" data-holder-rendered="true">
                    </div>
                </div>
            </div>
		</div>
		
		
		
		
		
		
		
		
		<div class="col-sm-5 mt-5" style="margin-left: 30px;">
			
			<div id="panel-1" class="panel">
                <div class="panel-container show">
                    <div class="panel-content">
                        <div class="panel-tag"><font style="vertical-align: inherit;">
                        	<font style="vertical-align: inherit;">이메일 확인, 번호 선택 등과 같은 새로운 입력 컨트롤을 활용하려면
                            </font><font style="vertical-align: inherit;">
                            모든 입력에 적절한 유형 속성(예: </font></font><code>email</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이메일 주소 또는 숫자 정보용 코드)을 사용해야 합니다.</font></font><code>number</code><font style="vertical-align: inherit;"></font>
                        </div>
                        <form>
                            <div class="form-group">
                                <label class="form-label" for="simpleinput"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">아이디</font></font></label>
                                <input type="text" id="simpleinput" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-email-2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이메일</font></font></label>
                                <input type="email" id="example-email-2" name="example-email-2" class="form-control" placeholder="이메일">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-password"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">비밀번호</font></font></label>
                                <input type="password" id="example-password" class="form-control" value="password">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-palaceholder"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">제목</font></font></label>
                                <input type="text" id="example-palaceholder" class="form-control" placeholder="제목을 입력해주세요">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-textarea"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">내용</font></font></label>
                                <textarea class="form-control" id="example-textarea" rows="7"></textarea>
                            </div>
                        </form>
                    </div>
                </div>
            </div>			
			<div class="col-sm-12">
				<button type="button" class="btn btn-success btn-pills waves-effect waves-themed" style="float: right;">
				<font style="vertical-align: inherit;">등록</font></button>
			</div>
		
		</div>
	</div>
</main>





<!-- 등록일 오늘날짜로 -->
<script>
	document.getElementById('validationCustom04').value = new Date().toISOString()
			.substring(0, 10);
	document.getElementById('validationCustom05').value = new Date().toISOString()
			.substring(0, 10);
</script>