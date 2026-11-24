<%@page import="com.office.diary.DiaryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
			
			<h3>THIS PAGE IS MY DIARIES.</h3>
				
			<table border="1">
				<thead>
					<tr>
						<th>diaryNo</th>
						<th>diaryWord</th>
						<th>diaryRegDate</th>
						<th>diaryModDate</th>
						<th>memNo</th>
						<th>memId</th>
						<th>memPw</th>
						<th>memMail</th>
						<th>memPhone</th>
						<th>memRegDate</th>
						<th>memModDate</th>
					</tr>
				</thead>	
				<tbody>
					<%-- jstl반복문 c:forEach, var:변수명, items="${myDiaries}": 반복할 대상 목록을 지정합니다.
					 EL(${...})을 사용해 request나 session 등에 담긴 myDiaries 리스트를 가져옵니다. --%>
					<c:forEach var="item" items="${myDiaries}">      
						<tr>
							<td>${item.diaryNo}</td>
							<td>${item.diaryWord}</td>
							<td>${item.diaryRegDate}</td>
							<td>${item.diaryModDate}</td>
							<td>${item.memNo}</td>
							<td>${item.memId}</td>
							<td>${item.memPw}</td>
							<td>${item.memMail}</td>
							<td>${item.memPhone}</td>
							<td>${item.memRegDate}</td>
							<td>${item.memModDate}</td>
						</tr>
					</c:forEach>
				<%-- 
				<%
					List<DiaryDto> myDiaries = (List<DiaryDto>) request.getAttribute("myDiaries");
				
					System.out.println("myDiaries size: " + (myDiaries != null ? myDiaries.size() : "null"));
					
					for (int i = 0; i < myDiaries.size(); i++) {
				%>	
					<tr>
						<td><%= myDiaries.get(i).getDiaryNo() %></td>
						<td><%= myDiaries.get(i).getDiaryWord() %></td>
						<td><%= myDiaries.get(i).getDiaryRegDate() %></td>
						<td><%= myDiaries.get(i).getDiaryModDate() %></td>
						<td><%= myDiaries.get(i).getMemNo() %></td>
						<td><%= myDiaries.get(i).getMemId() %></td>
						<td><%= myDiaries.get(i).getMemPw() %></td>
						<td><%= myDiaries.get(i).getMemMail() %></td>
						<td><%= myDiaries.get(i).getMemPhone() %></td>
						<td><%= myDiaries.get(i).getMemRegDate() %></td>
						<td><%= myDiaries.get(i).getMemModDate() %></td>
					</tr>
				<%
					}
				%>
				--%>				
				</tbody>
			</table>
			
		</div>
	</article>

	<jsp:include page="../include/footer.jsp" />

</body>
</html>