<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">
<head>
<style>
.test_obj input[type="radio"] {
	display: none;
}

.test_obj input[type="radio"]+span {
	display: inline-block;
	padding: 15px 10px;
	border: 1px solid #dfdfdf;
	background-color: #ffffff;
	text-align: center;
	cursor: pointer;
}

.test_obj input[type="radio"]:checked+span {
	background-color: #113a6b;
	color: #ffffff;
}
</style>
</head>


<main id="js-page-content" role="main" class="page-content">
<ol class="breadcrumb page-breadcrumb">
	<li class="breadcrumb-item"><a href="javascript:void(0);">연봉정보</a></li>
	<li class="breadcrumb-item">연봉계산기</li>
	<li class="position-absolute pos-top pos-right d-none d-sm-block"><span
		class="js-get-date"></span></li>
</ol>
<div class="subheader">
	<h1 class="subheader-title">
		<i class='subheader-icon fal fa-table'></i> 연봉계산기 <span class='fw-300'></span>
	</h1>
</div>
<div class="row">
	<div class="col-xl-2"></div>
	<div class="col-xl-8">
		<div id="panel-1" class="panel">
			<div class="panel-hdr">
				<h2>
					연봉계산기 <span class="fw-300"></span>
				</h2>
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
			<div class="panel-container show">
				<div class="panel-content">

					<div class="row">
						<div class="col-xl-6 ">
							<div class="row justify-content-center">
								<div class="col-6 mt-3 row justify-content-center">
									<div class=" mt-4">
										<h2>
											<b>급여기준은 연봉입니다.</b>
										</h2>
									</div>
								</div>
							</div>
								<div style="font-size:18px; margin-left:120px; margin-top:50px;">
									<b id="payment">연봉</b>
								</div>
								<div class="row justify-content-center mt-1">
									<input class="y_clear" id="salaryCal222"
										style="text-align: right; font-size: 18px; height: 40px; width: 300px;"
										type="text"  placeholder="0" title="연봉" value=""
										maxlength="25" >
									<div class="center"
										style="position: relative; margin-left:5px;top: 10px; font-size: 18px;">
										<span class="sri_input2_text">원</span>
									</div>
								</div>

							<div class="col-12" style="margin-left: 120px; margin-top: 30px;">
								<div class="row">
												<b id="payment" style="font-size:18px; ">비과세액&ensp;</b>
												<button type="button" 
													class="btn btn-default btn-xs btn-icon rounded-circle waves-effect waves-themed mb-1"
													data-toggle="tooltip" data-placement="top" title=""
													data-original-title="급여액 중에 세금공제를 하지 않은 금액으로, 본 계산기는 식대 10만원으로 설정 되어 있습니다. 비과세액을 알고 계신 경우 직접 입력 가능합니다.">
													?</button>
								</div>
							</div>
							<div class="row justify-content-center mt-1">
								<input id="paycomma" style="height: 40px; width: 300px; font-size: 20px; text-align:right;"
									type="text" title="연봉" value="1,200,000" maxlength="20">
								<div class="center1"
									style="position: relative; margin-left:5px; top: 10px; font-size: 18px;">
									<span class="sri_input2_text">원</span>
								</div>
							</div>
							<div class="row "
								style="margin-top: 5px; font-size: 15px; margin-left:120px; ">
								<p>
									<b> ※ 부양 가족수는 기본값 1로 지정됩니다.</b>
								</p>
								
							</div>
							<div class= " row justify-content-center mt-6">
								<button class="btn btn-success waves-effect waves-themed"  id ="salaryClick" onclick="salaryCalVal()">계산하기</button>
								&ensp;&ensp;
								<button class="btn btn-danger waves-effect waves-themed  "
									onclick="f_clear()" id="clear"> 초기화 버튼 </button>
							</div>
								
							
						</div>

						<div class="col-xl-5 ml-6">
							<div class="panel-content">
								<div class="frame-wrap">
									<table class="table m-0">
										<thead class="thead-dark">
											<tr>
												<th colspan="3">
													<div class="" style="height: 50px; font-size: 22px;">월
														예상 수령액</div>
													<div class="moneysee" style="font-size: 28px;" id="afterTax"></div>
												</th>
											</tr>
										</thead>
										<tbody style="font-size: 18px;">
										
											<tr  style="font-size: 21px;">
												<td><b>한달기준 공제액</b></td>
												<td></td>
												<td style="text-align: right" id="monthTax">0원</td>
											</tr>
											<tr>
												<td>국민연금</td>
												<td></td>
												<td style="text-align: right" id="pension">0원</td>
											</tr>
											<tr>
												<td>건강보험</td>
												<td></td>
												<td style="text-align: right" id="health">0원</td>
											</tr>
											<tr>
												<td>장기요양</td>
												<td></td>
												<td style="text-align: right" id="care">0원</td>
											</tr>
											<tr>
												<td>고용보험</td>
												<td></td>
												<td style="text-align: right" id="hire">0원</td>
											</tr>
											<tr>
												<td>소득세</td>
												<td></td>
												<td style="text-align: right" id="incomeTax">0원</td>
											</tr>
											<tr>
												<td>지방소득세</td>
												<td></td>
												<td style="text-align: right" id="incomeTaxLocal">0원</td>
											</tr>
											<tr>
												<td>공제액 합계</td>
												<td></td>
												<td style="text-align: right" id="totalTax">0원</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
													</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<script>
// 		var events = $('#app-eventlog');
// 		var clearlogText = function() {
// 			events.empty();
// 		}

// 		$(document)
// 				.ready(
// 						function() {
// 							var table = $('#dt-basic-example').DataTable({
// 								responsive : true,
// 								rowReorder : {
// 									selector : 'tr td:not(:first-child)'
// 								},
// 								filter : false, //for demo purpose only
// 								lengthChange : false
// 							//for demo purpose only
// 							});

// 							/* log events - demo purpose only */
// 							table
// 									.on(
// 											'row-reorder',
// 											function(e, diff, edit) {
// 												var result = '<div class="mt-2 mb-1"><span class="badge badge-primary">Reorder</span> started for row <span class="text-info">'
// 														+ edit.triggerRow
// 																.data()[1]
// 														+ '</span></div>';
// 												for (var i = 0, ien = diff.length; i < ien; i++) {
// 													var rowData = table.row(
// 															diff[i].node)
// 															.data();

// 													result += '<div class="my-1"><span class="text-info">'
// 															+ rowData[1]
// 															+ '</span> updated to be in position '
// 															+ diff[i].newData
// 															+ ' ( <span class="font-italic">was '
// 															+ diff[i].oldData
// 															+ '</span> )</div>';
// 												}
// 												events.prepend(result);
// 											});

// 						});
	</script>
<!-- <script>
const input = document.querySelector('#paycomma');
input.addEventListener('keyup', function(e) {
  let value = e.target.value;
  value = Number(value.replaceAll(',', ''));
  if(isNaN(value)) {
    input.value = 0;
  }else {
    const formatValue = value.toLocaleString('ko-KR');
    input.value = formatValue;
  }
})
</script> -->
<script>
const input = document.querySelector('#salaryCal222');
input.addEventListener('keyup', function(e) {
  let value = e.target.value;
  value = Number(value.replaceAll(',', ''));
  if(isNaN(value)) {
    input.value = 0;
  }else {
    const formatValue = value.toLocaleString('ko-KR');
    input.value = formatValue;
  }
  
 
})
	
</script>
<script>
		document.getElementById('month').addEventListener("click", function() {
			document.getElementById('payment').innerText = "월급";
		})
		document.getElementById('year').addEventListener("click", function() {
			document.getElementById('payment').innerText = "연봉";
		})
	</script>
<script type="text/javascript">
// 		function usingSelectorOption() {
// 			return $('#use-selector').is(':checked');
// 		}

// 		function updateCodeView() {
// 			$('#with-selector-code').toggle(usingSelectorOption());
// 			$('#without-selector-code').toggle(!usingSelectorOption());
// 		}

// 		$(function() {
// 			// Update code view when checkbox is toggled
// 			updateCodeView();
// 			$('#use-selector').click(function() {
// 				updateCodeView();
// 			});

// 			var startedDemo = false;
// 			$('#add-button')
// 					.click(
// 							function() {
// 								// One-time initialization
// 								if (!startedDemo) {
// 									if (usingSelectorOption()) {
// 										$('body').tooltip({
// 											selector : '.has-tooltip'
// 										});
// 									} else {
// 										$('.has-tooltip').tooltip();
// 									}

// 									startedDemo = true;
// 								}

// 								// Disable selector checkbox, put a tooltip on it, and show the buttons panel
// 								$('#use-selector').attr('disabled', 'disabled');
// 								$('#use-selector-label span').tooltip();
// 								$('#js_buttons_tooltip_demo').show();

// 								// Add a new button that triggers (or doesn't) a tooltip, with the appropriate message
// 								var button = null;
// 								if (usingSelectorOption()) {
// 									button = $('<button class="btn btn-block btn-success has-tooltip" data-title="Dynamic" data-content="This button was added dynamically by JavaScript" data-placement="top">Working dynamically added button</button>');
// 								} else {
// 									button = $('<button class="btn btn-block btn-default has-tooltip" data-title="Dynamic" data-content="This button was added dynamically by JavaScript" data-placement="top">Non-working dynamically added button</button>');
// 								}

// 								button.appendTo('#js_buttons_tooltip_demo');
// 							});
// 		});
	</script>
	<script>
	// 계산기 로직

	const taxingStandardRanges = [12000000, 46000000, 88000000, 150000000, 300000000, 500000000, 1000000000]

	const incomeDeductionRanges = [5000000, 15000000, 45000000, 100000000]

	const f = v => v < 0 ? 0 : v

	/**
	 * @param {Number} y: 과세표준
	 * @returns {Number}: 소득세
	 */
	const tax = y => {
	  // y는 세전연봉이 아닌 '과세표준'임 (deducible로 계산된 공제항목들 및 4대보험이 공제된 금액)
	  if (y <= taxingStandardRanges[0]) return y * 0.06
	  if (y <= taxingStandardRanges[1]) return y * 0.15 - 1080000
	  if (y <= taxingStandardRanges[2]) return y * 0.24 - 5220000
	  if (y <= taxingStandardRanges[3]) return y * 0.35 - 14900000
	  if (y <= taxingStandardRanges[4]) return y * 0.38 - 19400000
	  if (y <= taxingStandardRanges[5]) return y * 0.4 - 25400000
	  if (y <= taxingStandardRanges[6]) return y * 0.42 - 35400000
	  return y * 0.45 - 65400000
	}

	/**
	 * @param {Number} y: 세전연봉
	 * @param {Number} numFamily: 부양가족수 (본인포함)
	 * @param {Number} nonTax: 비과세
	 */
	const calculateDeducible = (y, numFamily, nonTax) => {
	  return {
	    // 소득공제
	    income: () => {
	      if (y <= incomeDeductionRanges[0]) return y * 0.7
	      else if (y <= incomeDeductionRanges[1]) return 3500000 + (y - incomeDeductionRanges[0]) * 0.4
	      else if (y <= incomeDeductionRanges[2]) return 7500000 + (y - incomeDeductionRanges[1]) * 0.15
	      else if (y <= incomeDeductionRanges[3]) return 12000000 + (y - incomeDeductionRanges[2]) * 0.05
	      else return 14750000 + (y - incomeDeductionRanges[3]) * 0.02
	    },
	    // 소득세액공제
	    tax: () => {
	      const arr2 = [33000000, 70000000]
	      if (y < 740000) return y
	      else if (y <= arr2[0]) return 740000
	      else if (y <= arr2[1]) return Math.max(660000, 740000 - (y - arr2[0]) * 0.008)
	      else return Math.max(500000, 660000 - (y - arr2[1]) * 0.5)
	    },
	    // 인적공제
	    family: () => {
	      return y < 1500000 ? y : 1500000 * numFamily
	    },
	    // 비과세
	    nonTax: () => {
	      return y < nonTax ? y : nonTax
	    },
	  }
	}

	/**
	 * 세전연봉, 과세금액, 과세표준은 다 다른 개념이기 때문에 이 부분을 주의깊이 읽어주세요.
	 * 
	 * 세전연봉: 말그대로 연봉계약서에 기재되는 금액입니다.
	 * 과세금액: 세전연봉 - 비과세
	 * 과세표준: 과세금액에서 공제항목들을 다 공제하고 난, 소득세 산정의 대상이 되는 금액.
	 * 
	 * @param {Number} preTax: 세전연봉
	 * @param {Number} numFamily: 인적공제
	 * @param {Number} nonTax: 비과세
	 * @returns {SalaryReport} 이 항목들을 토대로 프론트엔드 구현
	 */
	const salaryReport = (preTax = 22000000,  numFamily = 1,  nonTax = 1200000) => {
	  let pension = f((preTax - nonTax) * 0.045) // 국민연금 (과세금액의 4.5%)
	  if (pension > 235800 * 12) pension = 235800 * 12 // 국민연금 상한: 월 235,800원

	  const health = f((preTax - nonTax) * 0.03495) // 건강보험 (과세금액의 3.495%)
		
	  const care = f(health * 0.1227) // 장기요양 (건강보험료의 12.27%)

	  const hire = f((preTax - nonTax) * 0.008) // 고용보험 (과세금액의 0.8%)

	  const deducibleCalculator = calculateDeducible(preTax, numFamily, nonTax)

	  const taxDeduction = deducibleCalculator.tax()

	  const incomeDeduction = deducibleCalculator.income()

	  const familyDeduction = deducibleCalculator.family()

	  const nonTaxDeduction = deducibleCalculator.nonTax()

	  const taxOn = f(preTax - pension - health - care - hire - incomeDeduction - taxDeduction - familyDeduction - nonTaxDeduction) // 과세표준

	  const incomeTax = tax(taxOn) // 소득세

	  const incomeTaxLocal = incomeTax * 0.1 // 지방소득세

	  const totalTax = pension + health + care + hire + incomeTax + incomeTaxLocal // 총 공제 (공제액 & 세액 합산)

	  const afterTax = preTax - totalTax // 세후

	  return {
	    pension,
	    health,  //건강보험
	    care,    //장기요양
	    hire,	//고용보험
	    taxDeduction,
	    incomeDeduction,
	    familyDeduction,
	    nonTaxDeduction,
	    taxOn,
	    incomeTax,  //소득세
	    incomeTaxLocal,  //지방소득세
	    totalTax,    //공제액합계
	    preTax,  //세전연봉
	    afterTax  //세후
	    
	  }
	}

	</script>
	<script>
		function salaryCalVal(){
				
 				var param_salary = document.querySelector('#salaryCal222');
				var param_parse = Number.parseInt(param_salary.value);
				
				var re_comma = parseInt(input.value.replace(/,/g,""));
				var result = salaryReport(re_comma, 1, 1200000);
				
				console.log(result);
				
				
				var aaa= Math.floor(parseInt(result.pension/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var bbb= Math.floor(parseInt(result.health/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var ccc= Math.floor(parseInt(result.care/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var ddd= Math.floor(parseInt(result.hire/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var eee= Math.floor(parseInt(result.incomeTax/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var fff= Math.floor(parseInt(result.incomeTaxLocal/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var ggg= Math.floor(parseInt(result.totalTax/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var hhh= Math.floor(parseInt(result.totalTax/12/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				var iii= Math.floor(parseInt(result.afterTax/12/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				//var jjj= Math.floor(parseInt(result.afterTax/10)*10).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				
				document.querySelector('#pension').innerHTML=aaa+'원';
				document.querySelector('#health').innerHTML=bbb+'원';
				document.querySelector('#care').innerHTML=ccc+'원';
				document.querySelector('#hire').innerHTML=ddd+'원';
				document.querySelector('#incomeTax').innerHTML=eee+'원';
				document.querySelector('#incomeTaxLocal').innerHTML=fff+'원';
				document.querySelector('#totalTax').innerHTML=ggg+'원';
				document.querySelector('#monthTax').innerHTML=hhh+'원';
				//document.querySelector('#preTax').innerHTML=result.preTax+'원';
				document.querySelector('#afterTax').innerHTML=iii+'원';
				//document.querySelector('#monthAfterTax').innerHTML=jjj+'원';
				//document.querySelector('#afterTaxs').innerHTML=Math.ceil(result.afterTax).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원';
			
			}	
		</script>
		
		<script>
		function f_clear(){
			document.querySelector('#pension').innerHTML='0원';
			document.querySelector('#health').innerHTML='0원';
			document.querySelector('#care').innerHTML='0원';
			document.querySelector('#hire').innerHTML='0원';
			document.querySelector('#incomeTax').innerHTML='0원';
			document.querySelector('#incomeTaxLocal').innerHTML='0원';
			document.querySelector('#totalTax').innerHTML='0원';
			document.querySelector('#monthTax').innerHTML='0원';
			document.querySelector('#afterTax').innerHTML='0원';
			document.querySelector('#salaryCal222').value='';
			f_clear.value = null;
		}
		</script>