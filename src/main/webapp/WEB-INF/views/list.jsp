<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
</head>
<body>
	<h2>글 목록</h2>
	<hr>
	<table width="1000" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>글쓴이</td>
			<td width="600">글제목</td>
			<td>조회수</td>
			<td>등록일</td>
		</tr>
		<c:forEach items="${list }" var="fbdto">
		<tr>
			<td>${fbdto.fnum }</td>	
			<td>${fbto.fid }</td>	
			<td>${fbto.fname }</td>	
			<td>${fbto.ftitle }</td>	
			<td>${fbto.fhit }</td>	
			<td>${fbto.fdate }</td>	
		</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right"><a href="writeForm">글쓰기</a></td>
		</tr>
	</table>
</body>
</html>