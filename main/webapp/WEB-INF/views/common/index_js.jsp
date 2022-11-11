<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script>
function subMenu_go(mCode){
	//alert(mCode);	
	if(mCode!="M000000"){	
		
		$.ajax({
			url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
			method:"get",			
			success:function(data){
			},
			error:function(error){
				AjaxErrorSecurityRedirectHandler(error.status);	
			}
		});
		
	}else{
	}
}

function goPage(url,mCode){
	$('iframe[name="ifr"]').attr("src",url);
	
	// HTML5 지원브라우저에서 사용 가능
	if (typeof(history.pushState) == 'function') {
	    //현재 주소를 가져온다.
	    var renewURL = location.href;
	    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
	    renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
	    
	    if (mCode != 'M000000') {
	        renewURL += "?mCode="+mCode;
	    }
	    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
	    history.pushState(mCode, null, renewURL);
	 
	} else {
	    location.hash = "#"+mCode;
	}
}
</script>
<script>
    // default list filter
    initApp.listFilter($('#js_default_list'), $('#js_default_list_filter'));
    // custom response message
    initApp.listFilter($('#js-list-msg'), $('#js-list-msg-filter'));
    //accordion filter
    initApp.listFilter($('#js_list_accordion'), $('#js_list_accordion_filter'));
    // nested list filter
    initApp.listFilter($('#js_nested_list'), $('#js_nested_list_filter'));
    //init navigation 
    initApp.buildNavigation($('#js_nested_list'));

</script>
<script type="text/x-handlebars-template" id="scroll-recruit-data">
{{#each recruitList}}
<div class="card border-top-left-radius-0 border-top-right-radius-0">
	<div class="card-header">
		<a href="javascript:void(0);" class="card-title collapsed"
			data-toggle="collapse"
			data-target="#js_list_accordion-{{recWantedno}}"
			aria-expanded="false"
			data-filter-tags="{{coName}} {{recWantedtitle}} {{recRegion}}">
			<table class="">
				<tr>
					<td style="width:600px;">{{coName}}</td>
					<td>{{recRegion}}</td>
				</tr>
				<tr>
					<td rowspan="2" style="width:600px;">{{recWantedtitle}}</td>
				</tr>
			</table>
			<span class="ml-auto"> <span
				class="collapsed-reveal"> <i
					class="fal fa-chevron-up fs-xl"></i>
			</span> <span class="collapsed-hidden"> <i
					class="fal fa-chevron-down fs-xl"></i>
			</span>
		</span>
		</a>
	</div>
	<div id="js_list_accordion-{{recWantedno}}" class="collapse"
		data-parent="#js_list_accordion" style="">
		<div class="card-body">{{recWorkdayworkhrcont}}</div>
	</div>
</div>
{{/each}}
</script>
<script>
/* function reLocMousePointer(p_top){
	var elem = document.getElementById('dataload-scroll');
	var tenPer =  parseInt(elem.scrollHeight * 0.1);     
	console.log(tenPer);
	
	document.getElementById('dataload-scroll').scrollTop= (p_top - tenPer);
	console.log("화긴:",document.getElementById('dataload-scroll').scrollTop);
}
 */
       $('#dataload-scroll').scroll(function(){
        	
        	var element = document.getElementById('dataload-scroll');
        	var listParent = document.getElementById('js_list_accordion');
        	
        	var childCount = listParent.childElementCount;
            var dh = element.scrollHeight;
			var dch = element.clientHeight;
			var dct = element.scrollTop;

			var startNum = childCount + 1;
			var endNum = childCount + 10;
			
			if((dct+dch) >= (dh - 100)) {
				
				var ajaxOption = {
						url : '<%=request.getContextPath()%>/recruit/scrollList.do?startNum=' + startNum + '&endNum=' + endNum,
						async : true,
						type : "GET",
						dataType : "json",
						cache : false
					};
			
					$.ajax(ajaxOption).done(function(data) {
						console.log("json data : ",data);
						printDataByScroll(data, $('#js_list_accordion'), $('#scroll-recruit-data'));
					});				
			}
        });
</script>
<script>
	function printDataByScroll(dataArr, target, templateObject) {
		console.log("handlebars dataArr : " + dataArr);
		var template = Handlebars.compile(templateObject.html());
		var html = template(dataArr);
		target.append(html);
	}
</script>