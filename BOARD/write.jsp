<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- write.jsp : 글쓰기 입력페이지 -->
<%
	String memberId = (String) session.getAttribute("memID");
	if (memberId == null) {
%>
<script>
	alert("로그인 되지 않았습니다.");
	location.href = "../LOGIN/login.jsp";
</script>
<%
	}
%>
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/bootstrap.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/linea-icon.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/fancy-buttons.css" />
<!--=== Google Fonts ===-->
<link href='http://fonts.googleapis.com/css?family=Bangers'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:600,400,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>

<!--=== Other CSS files ===-->
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/animate.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/jquery.vegas.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/baraja.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/jquery.bxslider.css" />

<!--=== Main Stylesheets ===-->
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/style.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/responsive.css" />

<!--=== Color Scheme, three colors are available red.css, orange.css and gray.css ===-->
<link rel="stylesheet" id="scheme-source" href="../assets/bootstrap-3.3.5-dist/css/schemes/gray.css" />

<section id="section-contact" class="contact-wrap"
	style="background-color: #333">
	<div class="container contact center">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>Q & A</h3>
				</div>

				<div class="confirmation">
					<p>
						<span class="fa fa-check"></span>
					</p>
				</div>

				<form class="contact-form support-form" name="f"
					action="writePro.jsp" method="post" onsubmit="return checkForm();"
					enctype="multipart/form-data">

					<div class="col-lg-12">
						<input id="name" class="input-field form-item field-name"
							type="text" required="required" name="writer"
							placeholder="Writer" value="<%=memberId%>" readonly /> <input
							id="email" class="input-field form-item field-email" type="text"
							required="required" name="title" placeholder="Title" />
						<div class="filebox">
							<input class="upload-name" value="파일선택" disabled="disabled">
							<label class="fancy-button button-line button-white files zoom subform"
							style="cursor: hand;" for="ex_filename">업로드</label> 
							<input class="upload-hidden" id="ex_filename" type="file" name="filename" />
						</div>
						<script>
							
						</script>
						<textarea id="message"
							class="textarea-field form-item field-message" rows="10"
							name="content" placeholder="Content"></textarea>
					</div>
					<button type="submit"
						class="fancy-button button-line button-white large zoom subform">
						등록 <span class="icon"> <i class="fa fa-paper-plane-o"></i>
						</span>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>
<!--==== Js files ====-->
<!--==== Essential files ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="../assets/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/modernizr.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.easing.1.3.js"></script>

<!--==== Slider and Card style plugin ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.baraja.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.vegas.min.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.bxslider.min.js"></script>

<!--==== MailChimp Widget plugin ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.ajaxchimp.min.js"></script>

<!--==== Scroll and navigation plugins ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.nav.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.appear.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery.fitvids.js"></script>

<!--==== Custom Script files ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/custom.js"></script>

<script type="text/javascript">
	function checkForm() {
		//alert("나불렀니?");
		//return false;//전송중지
		if (!f.title.value) {
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		} else if (!f.content.value) {
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}
		return true;
	}
</script>






