<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- editPro.jsp : 수정 처리 페이지 -->
<jsp:useBean id="bdto" class="board.BoardDTO" />
<jsp:setProperty name="bdto" property="*" />
<jsp:useBean id="bdao" class="board.BoardDAO" />
<%
	request.setCharacterEncoding("utf-8");
	String serviecPath = request.getContextPath() + "/fileupload/test";
	String upPath = config.getServletContext().getRealPath("/fileupload/test");
	MultipartRequest mr = null;
	DefaultFileRenamePolicy dp = null;
	try {
		dp = new DefaultFileRenamePolicy();
		mr = new MultipartRequest(request, upPath, 10 * 1024 * 1024,
				"utf-8", dp);
	} catch (java.io.IOException e) {
		e.printStackTrace();//에러 출력
	}
	boolean result = bdao.editBoard(mr);
	if(result){%>
<script type="text/javascript">
		alert("수정 성공"); 
		location.href="content.jsp?num=<%=bdto.getNum()%>";
	</script>
<%}else{ %>
<script type="text/javascript">
		alert("수정 실패..");
		history.back();
	</script>
<%} %>