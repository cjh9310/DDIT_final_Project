<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	$('.contestDetail').click(function() {
	         
	        var conNo = $(this).attr("name");
	        
	        var ajaxOption = {
	        		<%-- url : "<%=request.getContextPath()%>/comember/mypage/contestDetail.do?conNo=" + conNo, --%>
	        		url : "<%=request.getContextPath()%>/comember/mypage/contestSupporterList.do?conNo=" + conNo,
					async : true,
					type : "GET",
					dataType : "html",
					cache : false
				};
		
				$.ajax(ajaxOption).done(function(data) {
					/* $('#contest_detail').children().remove();
					$('#contest_detail').html(data); */ 
				});
	        
	      });
	});
</script>