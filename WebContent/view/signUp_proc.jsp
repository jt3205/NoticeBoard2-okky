<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserVO" %>
<%@ page import="user.UserService" %>

<%
	UserVO vo = new UserVO();
	vo.setId(request.getParameter("id"));
	vo.setPassword(request.getParameter("password"));
	vo.setNickname(request.getParameter("nickname"));
	vo.setQuestion(request.getParameter("question"));
	vo.setAnswer(request.getParameter("answer"));
	
	new UserService().addUser(vo);
	response.sendRedirect("login.html");
%>