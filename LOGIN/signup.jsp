<%@ page contentType="text/html; charset=utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
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
<link rel="stylesheet" id="scheme-source" href="css/schemes/gray.css" />


<title>회원가입</title>
</head>
<body>
	<section id="section-contact" class="contact-wrap"
	style="background-color: #333">
	<div class="container contact center">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>Sign Up</h3>
				</div>

				<div class="confirmation">
					<p>
						<span class="fa fa-check"></span>
					</p>
				</div>

				<form class="contact-form support-form" name="f"
					method="post" action="memberInput_ok.jsp">
						
						<input id="name" class="input-field form-item field-name"
							type="text" required="required" name="id"
							placeholder="아이디"/> 
							
						<input id="passwd" class="input-field form-item field-name"
							type="text" required="required" name="passwd"
							placeholder="패스워드"/> 
						
						<input id="email" class="input-field form-item field-email" type="text"
							required="required" name="email" placeholder="이메일" />
							
						<input id="phone" class="input-field form-item field-name"
							type="text" required="required" name="phone"
							placeholder="전화번호"/>
							
						<input id="sample6_postcode" class="input-field form-item field-name"
							type="text" name="zipcode" placeholder="우편번호"/>
						<label onclick="sample6_execDaumPostcode()"
							style="cursor: hand;" class='fancy-button button-line button-white files zoom subform'>우편번호 찾기 <span class="icon"> <i class="fa fa-envelope-o"></i></span></label>
						<input id="sample6_address" class="input-field form-item field-name"
						type="text" name="address" placeholder="상세주소"/> 
					<button type="button" onclick="inputCheck();"
						class="fancy-button button-line button-white large zoom subform">
						등록 <span class="icon"> <i class="fa fa-paper-plane-o"></i></span>
					</button>
					<button type="button" onclick="cancel();"
						class="fancy-button button-line button-white large zoom subform">
						닫기 <span class="icon"> <i class="fa fa-close"></i></span>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>
	</body>
</html>
<script type="text/javascript">
	function inputCheck() {
		if (f.id.value == "") {
			alert("아이디를 입력해 주세요.");
			f.id.focus();
			return;
		}
		if (f.passwd.value == "") {
			alert("패스워드를 입력해 주세요.");
			f.passwd.focus();
			return;
		}
		if (f.name.value == "") {
			alert("이름을 입력해 주세요.");
			f.name.focus();
			return;
		}
		if (f.email.value == "") {
			alert("이메일을 입력해 주세요.");
			f.email.focus();
			return;
		}
		if (f.phone.value == "") {
			alert("전화번호를 입력해 주세요.");
			f.phone.focus();
			return;
		}
		if (f.zipcode.value == "") {
			alert("우편번호를 입력해 주세요.");
			f.zipcode.focus();
			return;
		}		
		if (f.address.value == "") {
			alert("상세주소를 입력해 주세요.");
			f.address.focus();
			return;
		}
		document.f.submit();
	}

	function cancel() {
		//확인창 띄워서 예 누르면 닫기
		var result = window.confirm("정말로 닫으시겠습니까?");
		if (result) {//true
			window.close();
		}
	}
</script>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById("sample6_postcode").value = data.postcode; //6자리 우편번호 사용
						//document.getElementById("sample6_postcode").value = data.zonecode; //5자리 기초구역번호 사용
						document.getElementById("sample6_address").value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						// document.getElementById("sample6_address2").focus();
					}
				}).open();
	}
</script>

