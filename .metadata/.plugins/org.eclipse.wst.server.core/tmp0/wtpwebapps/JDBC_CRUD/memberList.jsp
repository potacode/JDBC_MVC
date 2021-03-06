<%@page import="java.text.SimpleDateFormat"%>
<%@page import="memberinfoex.MemberInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="memberinfoex.MemberInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	MemberInfoDAO manager = MemberInfoDAO.getInstance();
	// DAO 클래스의 getList() 호출하여 리턴된 값을 받음
	List<MemberInfoDTO> list = manager.getList();
	MemberInfoDTO data = new MemberInfoDTO();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 리스트</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>회원번호</td>
			<td>이름</td>
			<td>폰번호</td>
			<td>이메일</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>
		<%
			for(int i=0; i < list.size(); i++){
				data = list.get(i); // 0번 인덱스부터 담긴 데이터를 data에 할당
				// list에 저장된 데이터 출력
		%>
		<tr>
			<td><%=data.getNo() %></td>
			<td><%=data.getName() %></td>
			<td><%=data.getPhone() %></td>
			<td><%=data.getEmail() %></td>
			<td><%=data.getAddr() %></td>
			<td><%=sdf.format(data.getReg_date()) %></td>
			<%-- 수정 및 삭제 / get방식으로 no값을 전달(primary key) --%>
			<td><a href="memberUpdateForm.jsp?no=<%=data.getNo()%>">수정</a></td>
			<td><a href="memberDelete.jsp?no=<%=data.getNo()%>">삭제</a></td>
		<tr>
		<%		
			} // for문 종료
		%>
		<tr>
			<td colspan="8" align="right"><input type="button" value="회원추가" onclick="location.href='memberJoinForm.jsp'"></td>
		</tr>
	</table>
</body>
</html>
