<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserVO" %>
<%@ page import="user.UserService" %>

<% 
	UserVO vo = new UserVO();
	vo.setId(request.getParameter("id"));
	vo.setPassword(request.getParameter("password"));
	
	if(new UserService().login(vo)){
		response.sendRedirect("articles.jsp?kind=1");
	}
	else{
		out.println("<script>alert('로그인 실패!!');</script>");
		out.println("<script>location.href='login.html';</script>");
		System.out.println("로그인 실패");
	}
%>