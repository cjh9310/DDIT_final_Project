<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="indMemberList" value="${indMemberList }" />
<c:set var="coMemberList" value="${coMemberList }" />
<c:set var="etcList" value="${etcList }" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<!-- ------------------Breadcrumbs--------------------- -->

<main id="js-page-content" role="main" class="page-content">
	<div class="row">
		<div class="col-xl-12">
			<!--Backgrounds-->
			<div id="panel-6" class="panel">
				<div class="panel-container show">
					<div class="demo-v-spacing">
						<ol class="breadcrumb bg-primary-300">
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white"> <i class="fal fa-home mr-1"></i> 커뮤니티
							</a></li>
							<li class="breadcrumb-item text-white"><a href="#"
								class="text-white">자주묻는질문(FAQ)</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- -------------------- emty line -------------------- -->
	
	<div class="row" style="height: 3rem;"></div>			
		
<!-- ------------------Accordian--------------------- -->        

	<div class="panel-content">
		<div class="panel-tag">
			<p>
				<b>자주묻는질문(FAQ)</b>
			</p>
			<p>
				자주묻는질문을 모아놓은곳.<br/>
				잘 찾아보시길...
			</p>
		</div>
	</div>
	
	<div class="row" style="height: 4rem;"></div> 	
	

<!-- -------------------- emty line -------------------- -->
     
	
<div class="panel-content">
    <div class="border px-3 pt-3 pb-0 rounded">
        <ul class="nav nav-pills" role="tablist">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#js_pill_border_icon-1"><i class="fal fa-user mr-1"></i><font>개인회원</font></a></li>
            <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#js_pill_border_icon-2"><i class="fal fa-home mr-1"></i><font>기업회원</font></a></li>
            <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#js_pill_border_icon-3"><i class="fal fa-phone mr-1"></i><font>기타문의</font></a></li>
        </ul>
        <div class="tab-content py-3">
        
<!-- ------------------------- AdMember Tap ----------------------- -->        
            <div class="tab-pane fade active show" id="js_pill_border_icon-1" role="tabpanel">
<!-- ---------------------- AdMember Accordian-------------------- -->
                <div class="accordion accordion-hover" id="js_demo_accordion-5">
	                <c:forEach items="${indMemberList}" var="indMemberList">
	                	<c:set var="i" value="${i + 1}" />
		                    <div class="card">
		                        <div class="card-header">
		                            <a href="javascript:void(0);" class="card-title" data-toggle="collapse" data-target="#js_demo_accordion-5_${i }" aria-expanded="true">
		                                <i class="fal fa-cog width-2 fs-xl"></i>
		                               		${indMemberList.faqTitle }
		                                <span class="ml-auto">
		                                    <span class="collapsed-reveal">
		                                        <i class="fal fa-chevron-up fs-xl"></i>
		                                    </span>
		                                    <span class="collapsed-hidden">
		                                        <i class="fal fa-chevron-down fs-xl"></i>
		                                    </span>
		                                </span>
		                            </a>
		                        </div>
			                        <div id="js_demo_accordion-5_${i}" class="collapse" data-parent="#js_demo_accordion-5">
			                            <div class="card-body">
			                            ${indMemberList.faqContent }
		                            </div>
			                    </div>
		                   	</div>
	               	</c:forEach>
                </div>
            </div>
                    

<!-- ------------------------- CoMeber Tap ------------------------------ -->            
            <div class="tab-pane fade" id="js_pill_border_icon-2" role="tabpanel"> 
<!-- ------------------------- CoMeber Accordian ------------------------ -->            

                <div class="accordion accordion-hover" id="js_demo_accordion-5">
	                <c:forEach items="${coMemberList}" var="coMemberList">
	                	<c:set var="j" value="${j + 1}" />
		                    <div class="card">
		                        <div class="card-header">
		                            <a href="javascript:void(0);" class="card-title" data-toggle="collapse" data-target="#js_demo_accordion-5a_${j }" aria-expanded="true">
		                                <i class="fal fa-cog width-2 fs-xl"></i>
		                               		${coMemberList.faqTitle }
		                                <span class="ml-auto">
		                                    <span class="collapsed-reveal">
		                                        <i class="fal fa-chevron-up fs-xl"></i>
		                                    </span>
		                                    <span class="collapsed-hidden">
		                                        <i class="fal fa-chevron-down fs-xl"></i>
		                                    </span>
		                                </span>
		                            </a>
		                        </div>
		                        <div id="js_demo_accordion-5a_${j}" class="collapse" data-parent="#js_demo_accordion-5">
		                            <div class="card-body">
		                            ${coMemberList.faqContent }
		                            </div>
		                        </div>
		                    </div>
	               	 </c:forEach>
                </div>
            </div>

<!-- ------------------------- Etc Tap ------------------------------ -->               
            <div class="tab-pane fade" id="js_pill_border_icon-3" role="tabpanel"> 
<!-- ------------------------ Etc Accodian -------------------------- -->    
      
                <div class="accordion accordion-hover" id="js_demo_accordion-5">
	                <c:forEach items="${etcList}" var="etcList">
	                	<c:set var="k" value="${k + 1}" />
		                    <div class="card">
		                        <div class="card-header">
		                            <a href="javascript:void(0);" class="card-title" data-toggle="collapse" data-target="#js_demo_accordion-5b_${k }" aria-expanded="true">
		                                <i class="fal fa-cog width-2 fs-xl"></i>
		                               		${etcList.faqTitle }
		                                <span class="ml-auto">
		                                    <span class="collapsed-reveal">
		                                        <i class="fal fa-chevron-up fs-xl"></i>
		                                    </span>
		                                    <span class="collapsed-hidden">
		                                        <i class="fal fa-chevron-down fs-xl"></i>
		                                    </span>
		                                </span>
		                            </a>
		                        </div>
		                        <div id="js_demo_accordion-5b_${k}" class="collapse" data-parent="#js_demo_accordion-5">
		                            <div class="card-body">
		                            ${etcList.faqContent }
		                            </div>
		                        </div>
		                    </div>
	               	 </c:forEach>
                </div>
       		</div>
        </div>
    </div>
</div>
	
</main>
	
	
<!-- ------------------Accordian--------------------- -->  	  


<!-- ---------------------- <modal> validation ---------------------- -->

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function()
    {
        'use strict';
        window.addEventListener('load', function()
        {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form)
            {
                form.addEventListener('submit', function(event)
                {
                    if (form.checkValidity() === false)
                    {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

</script>

<!-- 등록일 오늘날짜로 -->
<script>
	document.getElementById('validationCustom04').value = new Date().toISOString()
			.substring(0, 10);
	document.getElementById('validationCustom05').value = new Date().toISOString()
			.substring(0, 10);
</script>
 