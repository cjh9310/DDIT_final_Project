<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	function rendering() {
		
		var user_password = "${loginUser.pwd}";
		var check_password = $('#password').val();
		
		if(check_password == user_password) {
			var ajaxOption = {
				url : '<%=request.getContextPath()%>/indmember/mypage/info.do',
				async : true,
				type : "GET",
				dataType : "html",
				cache : false
			};
	
			$.ajax(ajaxOption).done(function(data) {
				$('#auth_check').children().remove();
				$('#auth_check').html(data); 
			});
		} else {
			alert('비밀번호가 일치하지않습니다.');	
		}
	}
</script>
<script>
	function nonCheck_reload() {
		var ajaxOption = {
			url : '<%=request.getContextPath()%>/indmember/mypage/info.do',
			async : true,
			type : "GET",
			dataType : "html",
			cache : false
		};
		
		$.ajax(ajaxOption).done(function(data) {
			$('#auth_check').children().remove();
			$('#auth_check').html(data); 
		});
	}
</script>
<script>
	function manage_rendering(parameter) {
		
		var selector = '#' + parameter.substr(0,3) + 'Manage';
	
		var ajaxOption = {
				url : '<%=request.getContextPath()%>/indmember/mypage/manage.do?parameter=' + parameter,
				async : true,
				type : "GET",
				dataType : "html",
				cache : false
			};
	
			$.ajax(ajaxOption).done(function(data) {
				$(selector).children().remove();
				$(selector).html(data); 
			});
	}
</script>
<script>
	function registForm_load(parameter) {
		
		var selector = '#' + parameter.substr(0,3) + 'Form_section';
		
		var ajaxOption = {
				url : '<%=request.getContextPath()%>/indmember/mypage/registForm.do?parameter=' + parameter,
				async : true,
				type : "GET",
				dataType : "html",
				cache : false
			};
	
			$.ajax(ajaxOption).done(function(data) {
				$(selector).children().remove();
				$(selector).html(data);  
			});
	}
</script>
<script>
	$(document).ready(function() {
		
		$('.regist_load').click(function() {
			var parameter = $(this).attr("name");
			var form = null;
			
			if(parameter == "eduForm") {
				form = $('#eduForm').serialize();
			} else if(parameter == "crrForm") {
				form = $('#crrForm').serialize();
			} else if(parameter == "cerForm") {
				form = $('#cerForm').serialize();
			}
			
			form = form.replaceAll('-','/');
			/* 날짜 형식 포맷 */
			$.ajax({
				type : "post",
				url : "<%=request.getContextPath()%>/indmember/mypage/regist.do",
				data : form,
				dataType : 'text',
				success : function() {
					nonCheck_reload();
				},
				error : function(request, status, error) {
					console.log(request, status, error);
				}
			});  
		});
		
		$('.modifyForm_load').click(function() {
			
			var pkey = $(this).val();
			var parameter = $(this).attr("name");
			var selector = '#' + parameter.substr(0,3) + 'Form_section';
			
			var ajaxOption = {
					url : '<%=request.getContextPath()%>/indmember/mypage/modifyForm.do?parameter=' + parameter + '&pkey=' + pkey,
					async : true,
					type : "GET",
					dataType : "html",
					cache : false
				};
		
				$.ajax(ajaxOption).done(function(data) {
					$(selector).children().remove();
					$(selector).html(data);  
				});
									
		});
		
		$('.remove_load').click(function() {
			
			var pkey = $(this).val();
			var parameter = $(this).attr("name");
			
			$.ajax({
				type : "get",
				url : "<%=request.getContextPath()%>/indmember/mypage/remove.do?pkey=" + pkey + "&parameter=" + parameter,
				success : function() {
					manage_rendering(parameter); /* education일 경우 -> eduManage */
				},
				error : function(request, status, error) {
					console.log(request, status, error);
				}
			});  			
		});
		
	});
</script>
<script>
	function modify_submit(parameter) {
		var form = null;
		if(parameter == "eduForm") {
			form = $('#eduForm').serialize();
		} else if(parameter == "crrForm") {
			form = $('#crrForm').serialize();
		} else if(parameter == "cerForm") {
			form = $('#cerForm').serialize();
		}
		
		form = form.replaceAll('-','/');
		/* 날짜 형식 포맷 */
		
		$.ajax({
			type : "post",
			url : "<%=request.getContextPath()%>/indmember/mypage/modify.do",
			data : form,
			dataType : 'text',
			success : function() {
				nonCheck_reload();
			},
			error : function(request, status, error) {
				console.log(request, status, error);
			}
		});  
	}
</script>

