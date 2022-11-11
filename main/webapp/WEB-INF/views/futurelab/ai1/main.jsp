<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<style>
.introduction-content {
	width: 100%;
	height: 700px;
}

.ai-content {
	width: 100%;
	height: 860px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: auto;
}

.container {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: auto;
}
</style>

<main id="js-page-content" role="main" class="page-content">
<div class="card mb-4">
	<div class="card-body p-4 rounded position-relative">
		<div class="d-flex align-items-center mb-g">
			<div class="p-0"
				style="width: 48.89px; height: 48.89px; margin-right: 10px;">
				<video muted autoplay
					style="display: block; width: auto; height: 100%;">
					<source
						src="<%=request.getContextPath()%>/resources/template/media/video/tensorflow_crop.mp4"
						type="video/mp4">
					<strong>Your browser does not support the video tag.</strong>
				</video>
			</div>
			<h1 class="fw-300 m-0 l-h-n">
				<span class="text-contrast"> AI Service List </span> <small
					class="fw-300 m-0 l-h-n"> 준비되어있는 AI Service 리스트를 살펴보세요. </small>
			</h1>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<ul class="fs-md fw-700 mb-5 list-spaced">
					<li><a href="javascript:scrolling('#AI_SERVICE_1');">
							Log4Job AI Service 1 - 명함 디자인 서비스</a></li>
				</ul>
			</div>
			<div class="col-lg-4">
				<ul class="fs-md fw-700 mb-5 list-spaced">
					<li><a href="javascript:scrolling('#AI_SERVICE_2');">
							Log4Job AI Service 2 - 증명사진 복장 변환 서비스</a></li>
				</ul>
			</div>
			<div class="col-lg-4">
				<ul class="fs-md fw-700 mb-5 list-spaced">
					<li><a href="javascript:scrolling('#AI_SERVICE_3');">
							Log4Job AI Service 3 - 증명사진 메이크업 서비스</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="card mb-g p-2">
	<div class="card-body">
		<h2 class="fw-700 m-0">
			Log4job의 AI Service 소개 <a href="javascript:void(0);"></a> <small>Introduction
				to Service in Log4Job</small>
		</h2>
		<div class="introduction-content"></div>
	</div>
</div>
<div class="alert alert-primary">
	<div class="d-flex flex-start w-100">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">About</span>
				<p>
					Cropperjs is a slick and lightweight responsive cropping tool for
					images. It supports <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#options"
						target="_blank">39 options</a>, <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#methods"
						target="_blank">27 methods</a> and 6 events. You can select an
					specific area of an image, and then upload the coordinates data to
					server-side to crop the image, or crop the image on browser-side
					directly. The plugin is regularly updated and has tons of
					potential! Making it a great fit for SmartAdmin WebApp.
				</p>
				<p class="m-0">
					Find in-depth, guidelines, tutorials and more on Cropper's <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md"
						target="_blank">Official Documentation</a>
				</p>
			</div>
		</div>
	</div>
</div>
<div class="card mb-g" id="AI_SERVICE_1">
	<div class="panel-hdr" style="width: 100%;">
		<h2 class="fw-700 m-0">
			Log4Job AI Service 1 - 명함 디자인 서비스<a href="javascript:void(0);"></a>
		</h2>
		<div class="panel-toolbar ml-2">
			<button type="button" onclick="window.scrollTo(0,0);"
				class="btn btn-sm btn-outline-dark waves-effect waves-themed">
				<span class="fal  fa-eject mr-1"></span> 상단으로 가기
			</button>
		</div>
	</div>
	<div class="card-body">
		<div class="ai-content">
			<div class="alert alert-primary" style="width: 80%; padding: 80px;">
				<div class="row">
					<div class="col-xl-9">
						<div class="img-container w-100">
							<img id="image"
								src="http://localhost/ddit/futurelab/ai1/namecard/recommand.do?folder=${loginUser.id}&filename=${loginUser.id}.png"
								onerror="this.onerror=null; this.src='http://localhost/ddit/futurelab/ai1/namecard/recommand.do?folder=alt&filename=alt.jpg';"
								alt="대체 이미지가 로드되지 않았습니다." />
						</div>
						<div class="docs-buttons w-100">
							<div class="btn-group">
								<button type="button" class="btn btn-primary" data-method="zoom"
									data-option="0.1" title="Zoom In">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;zoom&quot;, 0.1)"> <span
										class="fas fa-search-plus"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary" data-method="zoom"
									data-option="-0.1" title="Zoom Out">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;zoom&quot;, -0.1)"> <span
										class="fas fa-search-minus"></span>
									</span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary" data-method="move"
									data-option="-10" data-second-option="0" title="Move Left">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;move&quot;, -10, 0)"> <span
										class="fas fa-arrow-left"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary" data-method="move"
									data-option="10" data-second-option="0" title="Move Right">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;move&quot;, 10, 0)"> <span
										class="fas fa-arrow-right"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary" data-method="move"
									data-option="0" data-second-option="-10" title="Move Up">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;move&quot;, 0, -10)"> <span
										class="fas fa-arrow-up"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary" data-method="move"
									data-option="0" data-second-option="10" title="Move Down">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;move&quot;, 0, 10)"> <span
										class="fas fa-arrow-down"></span>
									</span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary"
									data-method="scaleX" data-option="-1" title="Flip Horizontal">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;scaleX&quot;, -1)"> <span
										class="fas fa-arrows-h"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary" id="flipper"
									data-method="scaleY" data-option="-1" title="Flip Vertical">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;scaleY&quot;, -1)"> <span
										class="fal fa-arrows-v"></span>
									</span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary" data-method="crop"
									title="Crop">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false" title="$().cropper(&quot;crop&quot;)">
										<span class="fas fa-check"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary"
									data-method="clear" title="Clear">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false" title="$().cropper(&quot;clear&quot;)">
										<span class="fas fa-times"></span>
									</span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary"
									data-method="disable" title="Disable">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;disable&quot;)"> <span
										class="fas fa-lock"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary"
									data-method="enable" title="Enable">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false" title="$().cropper(&quot;enable&quot;)">
										<span class="fas fa-unlock"></span>
									</span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary"
									data-method="reset" title="Reset">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false" title="$().cropper(&quot;reset&quot;)">
										<span class="fas fa-sync"></span>
									</span>
								</button>
								<button type="button" class="btn btn-primary"
									data-method="zoomTo" data-option="1">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false" title="cropper.zoomTo(1)"> Zoom
										to 100% </span>
								</button>
							</div>
							<div class="btn-group btn-group-crop">
								<button type="button" class="btn btn-success w-100"
									data-method="getCroppedCanvas"
									data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">
									<span class="docs-tooltip" data-toggle="tooltip"
										data-animation="false"
										title="$().cropper(&quot;getCroppedCanvas&quot;, { maxWidth: 4096, maxHeight: 4096 })">
										Download</span>
								</button>
							</div>
							<div class="modal fade docs-cropped" id="getCroppedCanvasModal"
								aria-hidden="true" aria-labelledby="getCroppedCanvasTitle"
								role="dialog" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="getCroppedCanvasTitle">Cropped</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<a class="btn btn-primary" id="download"
												href="javascript:void(0);" download="cropped.jpg">Download</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3">
						<div class="docs-preview clearfix w-100">
							<div class="img-preview preview-lg"></div>
						</div>
						<form id="busicardForm">
							<div class="form-group">
								<input type="text" name="corporation" class="form-control"
									placeholder="소속 회사명을 한글로 입력하세요.">
							</div>
							<div class="form-group">
								<select name="background" class="select2 form-control"
									id="single-label">
									<optgroup label="배경">
										<option value="">원하는 배경 느낌을 선택하세요</option>
										<option value="0">차분해지는</option>
										<option value="1">도화지</option>
										<option value="2">한지와 같은</option>
										<option value="3">붓 질감의</option>
										<option value="4">곡선의</option>
										<option value="5">기하학적인</option>
										<option value="6">갈대와 같은</option>
									</optgroup>
								</select>
							</div>
							<div class="form-group">
								<select name="font" class="select2-placeholder form-control"
									id="single-placeholder">
									<optgroup label="폰트">
										<option value="">원하는 폰트 느낌을 선택하세요</option>
										<option value="0">권위있는</option>
										<option value="1">귀여운</option>
										<option value="2">감각적인</option>
										<option value="3">토속적인</option>
										<option value="4">정겨운</option>
										<option value="5">캐쥬얼한</option>
										<option value="6">심플한</option>
									</optgroup>
								</select>
							</div>
							<div class="form-group">
								<input type="text" name="name" class="form-control"
									placeholder="이름을 입력하세요" /> <input type="hidden" name="id"
									value="${loginUser.id}" class="form-control" /> <input
									type="hidden" name="tel" value="${loginUser.tel}"
									class="form-control" /> <input type="hidden" name="email"
									value="${loginUser.email}" class="form-control" />
							</div>
							<div class="form-group">
								<input type="text" name="position" class="form-control"
									placeholder="부서 및 직급을 입력하세요" />
							</div>
							<div class="form-group">
								<input type="text" name="address" class="form-control"
									placeholder="회사 주소를 입력하세요" />
							</div>
							<div class="w-100">
								<div class="text-center">
									<input type="button" value="AI에게 명함 받아오기"
										class="btn w-100 btn-success waves-effect waves-themed"
										id="busicardSubmit" onclick="ai7_submit()">
									<!-- <button id="busicardSubmit" onclick="ai7_submit()"
										class="btn btn-success waves-effect waves-themed">
										<span class="fal fa-download mr-1"></span>
									</button> -->
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="alert alert-primary">
	<div class="d-flex flex-start w-100">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">About</span>
				<p>
					Cropperjs is a slick and lightweight responsive cropping tool for
					images. It supports <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#options"
						target="_blank">39 options</a>, <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#methods"
						target="_blank">27 methods</a> and 6 events. You can select an
					specific area of an image, and then upload the coordinates data to
					server-side to crop the image, or crop the image on browser-side
					directly. The plugin is regularly updated and has tons of
					potential! Making it a great fit for SmartAdmin WebApp.
				</p>
				<p class="m-0">
					Find in-depth, guidelines, tutorials and more on Cropper's <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md"
						target="_blank">Official Documentation</a>
				</p>
			</div>
		</div>
	</div>
</div>
<div class="card mb-g" id="AI_SERVICE_2">
	<div class="panel-hdr" style="width: 100%;">
		<h2 class="fw-700 m-0">
			Log4Job AI Service 2 - 증명사진 복장 변환 서비스<a href="javascript:void(0);"></a>
		</h2>
		<div class="panel-toolbar ml-2">
			<button type="button" onclick="window.scrollTo(0, 0);"
				class="btn btn-sm btn-outline-dark waves-effect waves-themed">
				<span class="fal  fa-eject mr-1"></span> 상단으로 가기
			</button>
		</div>
	</div>
	<div class="card-body">
		<div class="ai-content"></div>
	</div>
</div>
<div class="alert alert-primary">
	<div class="d-flex flex-start w-100">
		<div class="mr-2 hidden-md-down">
			<span class="icon-stack icon-stack-lg"> <i
				class="base base-6 icon-stack-3x opacity-100 color-primary-500"></i>
				<i
				class="base base-10 icon-stack-2x opacity-100 color-primary-300 fa-flip-vertical"></i>
				<i class="ni ni-blog-read icon-stack-1x opacity-100 color-white"></i>
			</span>
		</div>
		<div class="d-flex flex-fill">
			<div class="flex-fill">
				<span class="h5">About</span>
				<p>
					Cropperjs is a slick and lightweight responsive cropping tool for
					images. It supports <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#options"
						target="_blank">39 options</a>, <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md#methods"
						target="_blank">27 methods</a> and 6 events. You can select an
					specific area of an image, and then upload the coordinates data to
					server-side to crop the image, or crop the image on browser-side
					directly. The plugin is regularly updated and has tons of
					potential! Making it a great fit for SmartAdmin WebApp.
				</p>
				<p class="m-0">
					Find in-depth, guidelines, tutorials and more on Cropper's <a
						href="https://github.com/fengyuanchen/cropperjs/blob/master/README.md"
						target="_blank">Official Documentation</a>
				</p>
			</div>
		</div>
	</div>
</div>
<div class="card mb-g" id="AI_SERVICE_3">
	<div class="panel-hdr" style="width: 100%;">
		<h2 class="fw-700 m-0">
			Log4Job AI Service 3 - 증명사진 메이크업 서비스<a href="javascript:void(0);"></a>
		</h2>
		<div class="panel-toolbar ml-2">
			<button type="button" onclick="window.scrollTo(0,0);"
				class="btn btn-sm btn-outline-dark waves-effect waves-themed">
				<span class="fal  fa-eject mr-1"></span> 상단으로 가기
			</button>
		</div>
	</div>
	<div class="card-body">
		<div class="ai-content"></div>
	</div>
</div>
</main>

<script>
	function scrolling(target) {
		var link = $(target);
		var offset = link.offset();
		var bottom = $(window).height() - link.height();
		bottom = offset.top - bottom + 62;
		window.scrollTo({
			top : bottom,
			behavior : "smooth"
		});
	}
</script>

<script
	src="<%=request.getContextPath()%>/resources/template/js/vendors.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/app.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/template/js/formplugins/cropperjs/cropper.js"></script>
<script>
	$(function() {
		'use strict';

		/*var console = window.console || {
			log: function () {}
		};*/

		var URL = window.URL || window.webkitURL;
		var $image = $('#image');
		var $download = $('#download');
		var $dataX = $('#dataX');
		var $dataY = $('#dataY');
		var $dataHeight = $('#dataHeight');
		var $dataWidth = $('#dataWidth');
		var $dataRotate = $('#dataRotate');
		var $dataScaleX = $('#dataScaleX');
		var $dataScaleY = $('#dataScaleY');
		var options = {
			aspectRatio : 16 / 9,
			preview : '.img-preview',
			crop : function(e) {
				$dataX.val(Math.round(e.detail.x));
				$dataY.val(Math.round(e.detail.y));
				$dataHeight.val(Math.round(e.detail.height));
				$dataWidth.val(Math.round(e.detail.width));
				$dataRotate.val(e.detail.rotate);
				$dataScaleX.val(e.detail.scaleX);
				$dataScaleY.val(e.detail.scaleY);
			}
		};
		var originalImageURL = $image.attr('src');
		var uploadedImageName = 'cropped.jpg';
		var uploadedImageType = 'image/jpeg';
		var uploadedImageURL;

		// Tooltip
		$('[data-toggle="tooltip"]').tooltip();

		// Cropper
		$image.on({
			ready : function(e) {
				console.log(e.type);
			},
			cropstart : function(e) {
				console.log(e.type, e.detail.action);
			},
			cropmove : function(e) {
				console.log(e.type, e.detail.action);
			},
			cropend : function(e) {
				console.log(e.type, e.detail.action);
			},
			crop : function(e) {
				console.log(e.type);
			},
			zoom : function(e) {
				console.log(e.type, e.detail.ratio);
			}
		}).cropper(options);

		// Buttons
		if (!$.isFunction(document.createElement('canvas').getContext)) {
			$('button[data-method="getCroppedCanvas"]').prop('disabled', true);
		}

		if (typeof document.createElement('cropper').style.transition === 'undefined') {
			$('button[data-method="rotate"]').prop('disabled', true);
			$('button[data-method="scale"]').prop('disabled', true);
		}

		// Download
		if (typeof $download[0].download === 'undefined') {
			$download.addClass('disabled');
		}

		// Options
		$('.docs-toggles').on('change', 'input', function() {
			var $this = $(this);
			var name = $this.attr('name');
			var type = $this.prop('type');
			var cropBoxData;
			var canvasData;

			if (!$image.data('cropper')) {
				return;
			}

			if (type === 'checkbox') {
				options[name] = $this.prop('checked');
				cropBoxData = $image.cropper('getCropBoxData');
				canvasData = $image.cropper('getCanvasData');

				options.ready = function() {
					$image.cropper('setCropBoxData', cropBoxData);
					$image.cropper('setCanvasData', canvasData);
				};
			} else if (type === 'radio') {
				options[name] = $this.val();
			}

			$image.cropper('destroy').cropper(options);
		});

		// Methods
		$('.docs-buttons').on(
				'click',
				'[data-method]',
				function() {
					var $this = $(this);
					console.log($this);
					var data = $this.data();
					var cropper = $image.data('cropper');
					var cropped;
					var $target;
					var result;

					if ($this.prop('disabled') || $this.hasClass('disabled')) {
						return;
					}

					if (cropper && data.method) {
						data = $.extend({}, data); // Clone a new one

						if (typeof data.target !== 'undefined') {
							$target = $(data.target);

							if (typeof data.option === 'undefined') {
								try {
									data.option = JSON.parse($target.val());
								} catch (e) {
									console.log(e.message);
								}
							}
						}

						cropped = cropper.cropped;

						switch (data.method) {
						case 'rotate':
							if (cropped && options.viewMode > 0) {
								$image.cropper('clear');
							}

							break;

						case 'getCroppedCanvas':
							if (uploadedImageType === 'image/jpeg') {
								if (!data.option) {
									data.option = {};
								}

								data.option.fillColor = '#fff';
							}

							break;
						}

						result = $image.cropper(data.method, data.option,
								data.secondOption);

						switch (data.method) {
						case 'rotate':
							if (cropped && options.viewMode > 0) {
								$image.cropper('crop');
							}

							break;

						case 'scaleX':
						case 'scaleY':
							$(this).data('option', -data.option);
							break;

						case 'getCroppedCanvas':
							if (result) {
								// Bootstrap's Modal
								$('#getCroppedCanvasModal').modal().find(
										'.modal-body').html(result);

								if (!$download.hasClass('disabled')) {
									download.download = uploadedImageName;
									$download.attr('href', result
											.toDataURL(uploadedImageType));
								}
							}

							break;

						case 'destroy':
							if (uploadedImageURL) {
								URL.revokeObjectURL(uploadedImageURL);
								uploadedImageURL = '';
								$image.attr('src', originalImageURL);
							}

							break;
						}

						if ($.isPlainObject(result) && $target) {
							try {
								$target.val(JSON.stringify(result));
							} catch (e) {
								console.log(e.message);
							}
						}
					}
				});

		// Keyboard
		$(document.body).on(
				'keydown',
				function(e) {
					if (e.target !== this || !$image.data('cropper')
							|| this.scrollTop > 300) {
						return;
					}

					switch (e.which) {
					case 37:
						e.preventDefault();
						$image.cropper('move', -1, 0);
						break;

					case 38:
						e.preventDefault();
						$image.cropper('move', 0, -1);
						break;

					case 39:
						e.preventDefault();
						$image.cropper('move', 1, 0);
						break;

					case 40:
						e.preventDefault();
						$image.cropper('move', 0, 1);
						break;
					}
				});

		// Import image
		var $inputImage = $('#inputImage');

		if (URL) {
			$inputImage.change(function() {
				var files = this.files;
				var file;

				if (!$image.data('cropper')) {
					return;
				}

				if (files && files.length) {
					file = files[0];

					if (/^image\/\w+$/.test(file.type)) {
						uploadedImageName = file.name;
						uploadedImageType = file.type;

						if (uploadedImageURL) {
							URL.revokeObjectURL(uploadedImageURL);
						}

						uploadedImageURL = URL.createObjectURL(file);
						$image.cropper('destroy').attr('src', uploadedImageURL)
								.cropper(options);
						$inputImage.val('');
					} else {
						window.alert('Please choose an image file.');
					}
				}
			});
		} else {
			$inputImage.prop('disabled', true).parent().addClass('disabled');
		}
	});
</script>

<%@ include file="/WEB-INF/views/futurelab/ai_js.jsp"%>
