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
	<%
	int idflag = Integer.parseInt(request.getAttribute("idflag").toString());
	if(idflag == 1) {	
	%>	
		${boardflag } 님 로그인 중 <input type="button" value="로그아웃" onclick="javascript:window.location='logout'">
	<%
		}else{
	%>
		<input type="button" value="로그인으로 돌아가기" onclick="javascript:window.location='login'">
	<%
		}
	%>	 
	<h2>글 목록</h2>
	<hr>	
	총 게시글 개수 : ${boardSum }개<br>
	<table width="1000" border="1" cellspacing="0" cellpadding="0">
		<tr align="center" height="10">
			<td bgcolor="pink">번호</td>
			<td bgcolor="pink">아이디</td>
			<td bgcolor="pink">글쓴이</td>
			<td width="600"  bgcolor="pink">글제목</td>
			<td bgcolor="pink">조회수</td>
			<td bgcolor="pink">등록일</td>
			<td bgcolor="pink">삭제</td>
		</tr>		
		<c:forEach items="${list }" var="fbdto">		<!-- var는 사용자 정의 이다. 이게있어야 이름을붙혀서 가져오거나 넣을수있다. -->
		<tr align="center">
			<td>${fbdto.fnum }</td>	
			<td>${fbdto.fid }</td>	
			<td>${fbdto.fname }</td>	
			<td align="left">&nbsp;<a href="contentView?fnum=${fbdto.fnum}">${fbdto.ftitle }</a></td>	<!-- 파라미터값으로 조건추가해서 날려줄때 사용한다. 눌럿을때 값이 필요하는데 이런식으로 보내준다. 여러개는 and를 이용한다. -->
			<td>${fbdto.fhit }</td>	
			<td>${fbdto.fdate }</td>	
			<td><input type="button" value="삭제" onclick="javascript:window.location='delete?fnum=${fbdto.fnum }'"></td>
		</tr>
		</c:forEach>	
		<tr>
			<td colspan="7" align="right"><a href="writeForm">글쓰기</a></td>				
		</tr>
	</table>
</body>
</html>