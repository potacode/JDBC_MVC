<%@page import="memberinfoex.MemberInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// get 방식으로 넘어온 no 값을 변수에 저장
	int no = Integer.parseInt(request.getParameter("no"));
	
	// DAO의 delete 메서드 호출 / no 전달
	MemberInfoDAO manager = MemberInfoDAO.getInstance();
	manager.delete(no);
%>
<script>
	alert("삭제 완료");
	location.href="memberList.jsp";
</script>
