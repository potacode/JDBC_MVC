<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>
<body>
	<form action="memberJoin.jsp" method="post">
	이름 : <input type="text" name="name" size="10"><br>
	핸드폰 : <input type="text" name="phone1" size="5"> -
	<input type="text" name="phone2" size="5"> - 
	<input type="text" name="phone3" size="5"><br>
	이메일 : <input type="text" name="email" size="20"><br>
	주소 : <input type="text" name="addr" size="30"><br>
	<input type="submit" value="확인">
	</form>
</body>
</html>