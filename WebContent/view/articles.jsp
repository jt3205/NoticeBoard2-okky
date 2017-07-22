<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@
	page import="post.*"
%>

<%
	PostVO postVO = new PostVO();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Hyeong Jin's Okky</title>
	<style type="text/css">
		body{
			height: 200vh;
		}
		*{
			margin: 0 auto;
		}
		#leftBar{
			width: 60px;
			height: 100vh;
			background: #0059ab;
			float: left;
			position: fixed;
			text-align: center;
		}
		#leftBar > a {
			width: 60px;
			height: 60px;
			text-decoration: none;
		}
		#leftBar > a > div{
			width: 60px;
			height: 60px;
			padding-top: 18px;
			box-sizing: border-box;
		}
		#leftBar > a > div > p{
			color: white;
			font-size: 20px;
		}
		#okLogo > div{
			margin-bottom: 200px;
		}

		#slideBar{
			width: 150px;
			height: 100vh;
			background: #004C92;
			float: left;
			position: fixed;
			margin-left: 60px;
		}
		#slideBar > h3 {
			font-size: 30px;
			font-weight: 200;
			color: white;
			margin-top: 15px;
			margin-left: 15px;
			margin-bottom: 30px;
		}
		.board-kind{
			width: 150px;
			height: 30px;
			padding: 6px;
			padding-left: 15px; 
			padding-right: 15px;
			box-sizing: border-box;
		}
		.board-kind > label{
			color: #9FB0C9;
			float: left;
			font-size: 14px;
		}
		.dot-orange{
			width: 5px;
			height: 5px;
			background-color: #FA7F3C; 
			border-radius: 50%;
			float: right;
			margin-top: 6.5px;
			margin-bottom: 6.5px;
			visibility: hidden;
		}
		.board-kind:HOVER > .dot-orange {
			visibility: visible;
		}
		
		#content {
			width: 805px;
			margin-left: 210px;
		}
		#content-nav {
			width: 100%;
		}
		#content-nav > h4 {
			float: left;
			margin-top: 30px;
			margin-left: 28px;
		}
		#sortBox {
			height: 50px;
			width: 300px;
			float: left;
			margin-top: 58px;
			margin-left: -77px;
		}
		#sortBox > li {
			list-style: none;
			float: left;
		}
		#sortBox > li > a {
			color: #BBB;
			text-decoration: none;
			font-size: 13px;
			margin-right: 15px;
			
		}
		#searchBox {
			float: right;	
			margin-top: 20px;
			width: 375px;
			height: 24px;
			border: solid 1px;
		}
		#searchBox > a {
			background: white;
    		width: 24px;
   		 	height: 24px;
		}
		#searchBox > a > img {
			width: 20px;
			height: 20px;
		}
		#input_search {
			height: 18px;
			width: 340px;
		}
		#content-nav {
			width: 100%;
			height: 100px;
		}
		#bt_newPost {
			background: #5cb85c;
			width: 130px;
			height: 35px;
			float: right;
			margin-top: 25px;
			border-radius: 7px;
			cursor: pointer;
			text-align: center;
			padding-top: 7px;
			box-sizing: border-box;
			color: white;
			text-decoration: none;
		}
		#bt_newPost:hover {
			background: #398439;
		}
		#content-main {
			width: 765px;
			margin-top: 30px;
		}
		#boardList {
			width: 100%;
			margin-left: -20px;
		}
		.boardPreview{
			height: 50px;
			border: solid 1px #BBB;
			list-style: none;
			margin-left: -10px;
		}
	</style>
</head>
<body>
	<nav id="leftBar">
		<a href="" id="okLogo">
			<div>
				<img src="./image/okLogo.png">
			</div>
		</a>
		<a href="articles.jsp?kind=1">
			<div>
				<p>ⓐ</p>
			</div>
		</a>
		<a href="articles.jsp?kind=2">
			<div>
				<p>ⓑ</p>
			</div>
		</a>
		<a href="articles.jsp?kind=3">
			<div>
				<p>ⓒ</p>
			</div>
		</a>
		<a href="articles.jsp?kind=4">
			<div>
				<p>ⓓ</p>
			</div>
		</a>
		<a href="articles.jsp?kind=5">
			<div>
				<p>ⓔ</p>
			</div>
		</a>
	</nav>
	<div id="slideBar">
		<% String kind = request.getParameter("kind");
		if(kind == null || kind == ""){
			kind = "1";
		}
		switch(kind){
			case "1":%>
				<h3>Q&A</h3>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>All</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<%
				break; 
			case "2":%>
				<h3>Tech</h3>
				<a href="articles.jsp?kind=2">
					<div class="board-kind">
						<label>All</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>IT News & 정보</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>Tips & 강좌</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<% 
				break; 
			case "3":
				%><h3>커뮤니티</h3>
				<a href="articles.jsp?kind=3">
					<div class="board-kind">
						<label>All</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>공지사항</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>사는얘기</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>포럼</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>정기모임/스터디</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>학원/홍보</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<% 
				break; 
			case "4":
				%><h3>칼럼</h3>
				<a href="articles.jsp?kind=4">
					<div class="board-kind">
						<label>All</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<%
				break; 
			case "5":
				%><h3>Jobs</h3>
				<a href="articles.jsp?kind=5">
					<div class="board-kind">
						<label>All</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>좋은회사/나쁜회사</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>구인</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<a href="articles.jsp?kind=1">
					<div class="board-kind">
						<label>구직</label>
						<div class="dot-orange"></div>
					</div>
				</a>
				<%
				break;
			default :
				out.println("<script>alert('잘못된 접근 입니다!');</script>");
				out.println("<script>location.href='articles.jsp?kind=1';</script>");
				break; }%>
	</div>
	
	<div id="content">
		<div id="content-nav">
			<h4>Q&A</h4>
			<a href="" id="bt_newPost">
				새 글 쓰기
			</a>
			<br>
			<ul id="sortBox">
				<li><a href="articles.jsp?kind=<%=kind%>&sort=new">최신순</a></li>
				<li><a href="articles.jsp?kind=<%=kind%>&sort=like">추천순</a></li>
				<li><a href="articles.jsp?kind=<%=kind%>&sort=comment">댓글순</a></li>
				<li><a href="articles.jsp?kind=<%=kind%>&sort=scrap">스크랩순</a></li>
				<li><a href="articles.jsp?kind=<%=kind%>&sort=lookup">조회순</a></li>
			</ul>
			<div id="searchBox">
				<input type="text" id="input_search" name="search" placeholder="검색어">
				<a href=""><img src="./image/searchIcon.png"></a>
			</div>
		</div>
		<div id="content-main">
			<ul id="boardList">
				<% for(int i = 0; i < 20; i++){%>
					<li class="boardPreview">
						<% %>
					</li>
				<% }%>
			</ul>
		</div>
	</div>
</body>
</html>