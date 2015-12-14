<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="board.*, java.util.*"%>
<!-- list.jsp : 목록 페이지(검색 겸용) -->
<jsp:useBean id="bdao" class="board.BoardDAO" />
<%
	String userId = (String) session.getAttribute("memID");
	String servicePath = request.getContextPath()+"/fileupload/test";
	String upPath = config.getServletContext().getRealPath("/fileupload/test"); 
	boolean isLogin = false;
	boolean isAdmin = false;
	boolean isMine = false;
	if (userId == null) {//정보 없음, 로그아웃 상태
		isLogin = false;
	} else {//정보 있음, 로그인 상태
		isLogin = true;
	}
	if (userId == "admin") {//정보 없음, 로그아웃 상태
		isAdmin = false;
	} else {//정보 있음, 로그인 상태
		isAdmin = true;
	}
	

	//페이징 작업을 위한 계산
	int pageSize = 5; //페이지에 표시할 글 수

	//현재 페이지 정보 받기
	String pageNum = request.getParameter("page");
	int curPage = 0; //현재 페이지
	try {
		curPage = Integer.parseInt(pageNum);
		if (curPage <= 0)
			throw new Exception();
	} catch (Exception e) {
		curPage = 1;
	}

	//게시글 수 구해오기
	int count = bdao.getBoardCount();
	int pages = (count / 5) + (count % 5 == 0 ? 0 : 1);
	//시작번호와 종료번호 계산

	//현재 1	2	3	4
	//시작 1	6	11	16
	//종료 5	10	15	20

	//시작 번호 = (현페이지 - 1) * 페이지 크기 + 1
	int startRow = (curPage - 1) * pageSize;
	//종료 번호 = 시작번호 + 페이지 크기 - 1
	int endRow = startRow + pageSize;
	if (endRow > count) {
		endRow = count;
	}
%>
<%
	//검색어를 받는 작업
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
	String searchString = request.getParameter("searchString");

	ArrayList<BoardDTO> list = null;
	if (search != null && searchString != null
			&& !searchString.trim().equals("")) {
		list = bdao.searchBoard(search, searchString, startRow, endRow);
	} else {
		list = bdao.listBoard(startRow, endRow);
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

<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/bootstrap-select.min.css" />
<!--=== Main Stylesheets ===-->
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/style.css" />
<link rel="stylesheet"
	href="../assets/bootstrap-3.3.5-dist/css/responsive.css" />

<!--=== Color Scheme, three colors are available red.css, orange.css and gray.css ===-->
<link rel="stylesheet" id="scheme-source" href="../assets/bootstrap-3.3.5-dist/css/schemes/gray.css" />
<!--=== Header section Starts ===-->
<div id="header" class="header-section">
<!-- sticky-bar Starts-->
<div class="sticky-bar-wrap">
	<div class="sticky-section">
		<div id="topbar-hold" class="nav-hold container">
			<nav class="navbar" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
					</button>
					<!--=== Site Name ===-->
					<a class="site-name navbar-brand" href="#"><span>M</span>allddang</a>
				</div>
				
				<!-- Main Navigation menu Starts -->
				<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav navbar-right">
						<li class="current"><a href="#header">Home</a></li>
						<li><a href="#step-1">Board</a></li>
					</ul>
					<form class="navbar-form navbar-right" method="get" action="list.jsp">
           				<div class="form-group">
            				<select class="selectpicker" name="search" data-style="btn-inverse">
								<option value="title">제목</option>
								<option value="writter">작성자</option>
							</select>
						</div>
						<div class="form-group">
							<input type="text" name="searchString" placeholder="검색어" class="form-control">
						</div>
							<button type="submit" class="btn btn-success">Search</button>
					</form>
					<div class="navbar-form navbar-right form-group">
						<input type="button" class="btn btn" value="글쓰기" onclick="location.href='write.jsp'">
					</div>
				</div>
				<!-- Main Navigation menu ends-->
			</nav>
		</div>
	</div>
</div>
<!-- sticky-bar Ends-->
<!--=== Header section Ends ===-->
<!--=== Step-1 section Starts ===-->

<section id="step-1" class="section-step step-wrap">
	<div class="container step animated" data-animation="bounceInLeft" data-animation-delay="700">
		<div class="row">
			<!-- Step Description Starts -->
			<div class="col-md-8 step-desc">
				<%
					if (list == null || list.size() == 0) {
				%>
				<div class="col-md-2 center">
					<div class="step-no">
						<span class="no-inner"> X </span>
					</div>
				</div>
				<div class="col-md-10 step-details">
					<h3 class="step-title color-scheme">
						게시물이 비어있습니다
					</h3>
				</div>
				<%
					} else {
						
						int j=0;
						for (BoardDTO bdto : list) {
							if(userId.equals(bdto.getWriter())){
								isMine = true;
							}else{
								isMine = false;
							}
				%>
				<div class="col-md-2 center">
					<div class="step-no">
						<span class="no-inner"><%=++j %></span>
					</div>
				</div>
				
				<div class="col-md-10 step-details">
						<h3 class="step-title color-scheme">
							<% if (bdto.getReplyqty() > 0) { %>
								고민을 해결했습니다
							<% }else{ %>
								도움이 필요합니다
							<% } %>
						</h3>
						<p class="step-description"><strong>글제목 : </strong> <%=bdto.getTitle()%>, <strong>작성자 :</strong> <%=bdto.getWriter()%>, <strong>등록일 :</strong> <%=bdto.getRegdate()%><br>
						<strong>내용 :</strong> <%=bdto.getContent() %> <br>
						<strong>첨부파일 :</strong> <%=bdto.getFilename() %>
				<%
				servicePath = request.getContextPath()+"/fileupload/test"; %>
				<a href="<%=servicePath %>/<%=bdto.getFilename() %>">
				다운로드
				</a>
				<%
					java.text.DecimalFormat df = new DecimalFormat("#.0");
				double size = bdto.getFilesize()/1024.0/1024.0;
				%>
				[크기 약 <%=df.format(size) %> Mbyte]
						<ul class="sub-steps"> <!-- Sub steps here -->
							<li>
								<span style="cursor: hand;" onclick="sendDelete(<%=bdto.getNum()%>);" class="icon fa fa-close color-scheme"></span>
								<span style="cursor: hand;" onclick="sendDelete(<%=bdto.getNum()%>);" class="sub-text">삭제하기</span>
							</li>
							<% 							
							if(isMine || isAdmin){
							%>
							<li>
								<span style="cursor: hand;" onclick="sendEdit(<%=bdto.getNum()%>)" class="icon fa fa-comments color-scheme"></span>
								<span style="cursor: hand;" onclick="sendEdit(<%=bdto.getNum()%>)" class="sub-text">답변보기 [<%=bdto.getReplyqty() %>]</span>
							</li>
							<%} %>
							<% 							
							if(isMine){
							%>
							<li>
								<span style="cursor: hand;" onclick="sendEdit(<%=bdto.getNum()%>)" class="icon fa fa-pencil-square-o color-scheme"></span>
								<span style="cursor: hand;" onclick="sendEdit(<%=bdto.getNum()%>)" class="sub-text">수정하기</span>
							</li>
							<%} %>
						</ul>
				</div> <!-- End step-details -->
				
				<%} %>
			</div>
		</div>
	</div>
</section>
	<!--=== Step-1 section Ends ===-->
<%
				}
%>


<body>

	<div style="background-color: #333 color: #fff">
		<h2>
			curPage :
			<%=curPage%>, startPage :
			<%=startRow%>, endRow :
			<%=endRow%>, search :
			<%=search%>, searchString :
			<%=searchString%></h2>
		<!-- 글쓰기 버튼 -->
		<%
			if (isLogin) {
		%>
		<table class="table">
			<tr>
				<td align="right"><input type="button" value="글쓰기"
					onclick="location.href='write.jsp'"></td>
			</tr>
		</table>
		<%
			}
		%>

		<!-- 목록 출력 -->
		<%
			if (list == null || list.size() == 0) {
		%>
		<table class="table">
			<tr>
				<th><font color="red" size="5"> 등록된 게시글이
						없습니다. </font></th>
			</tr>
		</table>
		<%
			} else {
		%>
		<table class="table">
			<!-- 제목 -->
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<!-- 내용 -->
			<%
				for (BoardDTO bdto : list) {
			%>
			<tr>
				<td><%=bdto.getNum()%></td>
				<td  align="left" width="40%">
					<!-- 답글이라면 띄어쓰기 처리 --> <%
 	if (bdto.getRe_level() > 0) {
 %> <img src="../img/level.gif" width="<%=15 * bdto.getRe_level()%>"
					height="15"> <!-- 화살표 추가 --> <img src="../img/re.gif"
					width="30" height="15"> <%
 	}
 %> <!-- 제목에 링크 설정(로그인 시에만) --> <%
 	if (isLogin) {
 %> <a href="content.jsp?num=<%=bdto.getNum()%>"> <%
 	}
 %> <%=bdto.getTitle()%> <!-- 댓글 개수 추가(존재할 때만) --> <%
 	if (bdto.getReplyqty() > 0) {
 %> [<%=bdto.getReplyqty()%>] <%
 	}
 %> <%
 	if (isLogin) {
 %>
				</a> <%
 	}
 %> <!-- 조회수에 따른 인기글 이미지 표시 --> <%
 	if (bdto.getReadcount() >= 1) {
 %> <img src="../img/hot.gif" width="40" height="15"> <%
 	}
 %> <%
 	if (bdto.getFilename() != null) {
 %> <img src="../img/folder.gif" width="14" height="12"> <%
 	}
 %>
				</td>
				<td><%=bdto.getWriter()%></td>
				<td><%=bdto.getRegdate()%></td>
				<td><%=bdto.getReadcount()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			}
		%>
		<br>
		<%
			//블럭 계산
			int pageBlock = 5;
			//전체 페이지(블럭) 수 계산
			//전체페이지 = 총 게시글 수 / 페이지 크기 + 0 또는 1
			int totalBlock = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int startBlock = curPage-5;
			if (startBlock < 1) {
				startBlock = 1;
			}
			int endBlock = curPage+5;
			if (endBlock > totalBlock) {
				endBlock = totalBlock;
			}
		%>
		<%
			if (curPage != 1) {
		%>
		<a href="list.jsp?page=<%=1%>">[처음]</a>
		<%
			}
			if (curPage > 5) {
		%>
		<a href="list.jsp?page=<%=curPage - 5%>"> [이전]</a>
		<%
			}
			for (int i = startBlock; i <= endBlock; i++) {
		%>
		<a href="list.jsp?page=<%=i%>"><%=i%></a>
		<%
			}
		%>
		<%
			if (totalBlock+1-curPage > 5) {
		%>
		<a href="list.jsp?page=<%=curPage + 5%>"> [다음]</a>
		<%
			}
		%>
		<%
			if (curPage != endBlock) {
		%>
		<a href="list.jsp?page=<%=totalBlock%>">[마지막]</a>
		<%
			}
		%>
		<br>
		<h2>
			total :
			<%=totalBlock%>
			start :
			<%=startBlock%>
			end :
			<%=endBlock%>
		</h2>
		<!-- 검색창 -->
		<form method="get" action="list.jsp">
			<select name="search" class="box">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
			</select> <input type="text" name="searchString" class="box"> <input
				type="submit" value="검색">
		</form>
	</div>
</body>
</html>

<!--==== Js files ====-->
<!--==== Essential files ====-->
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../assets/bootstrap-3.3.5-dist/js/bootstrap-select.min.js"></script>
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
	function sendReply(){
		//reply.jsp로 전송하면서 ref, re_step, re_level 첨부
		document.replyForm.submit();
	}
	function sendEdit(num){
		location.href="edit.jsp?num="+num;
	}
	function sendDelete(num){
		var result = window.confirm("정말로 삭제하시겠습니까?");
		if(result){
			location.href="delete.jsp?num="+num;
		}
	}
	var main = function() {
		$('.selectpicker').selectpicker({
			width: 10px
		});
	}
	$(document).ready(main);
</script>
