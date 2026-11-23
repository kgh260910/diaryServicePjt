<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />

<link href="./res/css/member/signup_form.css" rel="stylesheet" type="text/css">   

<%-- 데이터 유효성 검사 --%>
<jsp:include page="../include/diary/diary.jsp" />

</head>
<body>

	
	<jsp:include page="../include/header.jsp" />
	
	<jsp:include page="../include/nav.jsp" />
	
	<article>
		<div class="article_wrap">
			
			<h3>
				DIARY WRITE FAIL!!
			</h3>
			
		</div>
	</article>

	<jsp:include page="../include/footer.jsp" />

</body>
</html>