<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<c:set var ="publickWork" value="${publickWork }"/>

<style>
	.frame-wrap {
		margin-top: 30px;
		margin-left: 45px;
		margin-right: 45px;
	}
	
	.demo {
		margin-right: 40px;
	}
	

</style>


   <!-- END Page Header -->
   <!-- BEGIN Page Content -->
   <!-- the #js-page-content id is needed for some plugins to initialize -->
   <!-- END Page Header -->
                    <!-- BEGIN Page Content -->
                    <!-- the #js-page-content id is needed for some plugins to initialize -->

                    
<main id="js-page-content" role="main" class="page-content">

		<div class="frame-wrap">
		       <table class="table table-bordered m-0" style="border-color: black;">
	               <tbody>
	                   <tr>
	                       <td class="bg-primary-500" style="width:20%"><b>글번호</b></td>
	                       <td>${publickWork.pubNo }</td>
	                       <td class="bg-primary-500" style="width:20%"><b>제공처</b></td>
	                       <td>${publickWork.pubHost }</td>
	                   </tr>
	                   <tr>
	                       <td class="bg-primary-500"><b>등록일</b></td>
	                       <td>${publickWork.pubSdate}</td>
	                       <td class="bg-primary-500"><b>마감일</b></td>
	                       <td>${publickWork.pubEdate}</td>
	                   </tr>
	                   <tr>
	                       <td class="bg-primary-500"><b>제목</b></td>
	                       <td colspan="3">${publickWork.pubTitle }</td>
	                   </tr>
	                   <tr>
	                       <td class="bg-primary-500"><b>내용</b></td>
	                       <td colspan="3">${publickWork.pubContent }</td>
	                   </tr>	                   
	               </tbody>
	           </table>
		   </div>
 
</main>
