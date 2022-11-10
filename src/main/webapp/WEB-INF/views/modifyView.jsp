<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내용 수정</title>
</head>
<body>
	<h2>게시판 내용 수정</h2>
	<hr>
	<form action="modify">
	<input type="hidden" value="${fbdto.fnum }" name="fnum">
		글번호 : ${fbdto.fnum }<br><br>
		아이디 : ${fbdto.fid }<br><br>
		이 름 : <input type="text" value="${fbdto.fname }" name = "fname"><br><br>
		제 목 : <input type="text" value="${fbdto.ftitle }" name = "ftitle" size="60"><br><br>
		내 용 : <textarea rows="10" cols="45" name="fcontent">${fbdto.fcontent } </textarea>><br><br>
		등록일 : ${fbdto.fdate }<br><br>
		<input type="submit" value="완료">
		<input type="button" value="취소" onclick="javascript:window.history.back()">	<!--window.history.back()는 뒤로가기라는 뜼이다.  -->
	</form>	
</body>
</html>