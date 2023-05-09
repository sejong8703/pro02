<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<%
	String sid = "";
	if(session!=null) sid = (String) session.getAttribute("sid");  
%>
<header id="hd" class="container">
	<div class="container-fluid">
		<nav id="tnb" class="navbar navbar-default">
			<ul class="nav navbar-nav navbar-right" style="padding-right:40px">
				<c:if test="${empty sid }">
					<li><a href="${path }/UserLogin.do">로그인</a></li>
					<li><a href="${path }/UserTerms.do">회원가입</a></li>
				</c:if>
				<c:if test="${!empty sid }">
					<li><a href="${path }/MyPage.do">마이페이지</a></li>
					<li><a href="${path }/MyBasket.do">장바구니</a></li>
					<li><a href="${path }/UserLogout.do">로그아웃</a></li>
				</c:if>
				<c:if test="${sid=='admin' }">
					<li><a href="${path }/Admin.do">관리자 페이지로</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<div class="container-fluid" style="padding-right:30px;">	
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">SEJONG FOOD</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav" data-toggle="tab-hover" role="tablist">
		        <li class="active"><a href="#">세종푸드 소개 <span class="sr-only">(current)</span></a></li>
		        <li><a href="${path }/NoticeList.do">공지사항</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">상품보기 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">돼지고기</a></li>
		            <li><a href="#">소고기</a></li>
		            <li><a href="#">수입 소고기</a></li>
		            <li><a href="#">수입 돼지고기</a></li>
		            <li class="divider"></li>
		            <li><a href="#">특수부위</a></li>
		            <li><a href="#">소스</a></li>
		          </ul>
		        </li>
		      </ul>
		      
		      <c:if test="${sid=='admin' }">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#">회원 관리</a></li>
		        <li class="dropdown" style="padding-right:30px; margin-right:30px;">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">글 관리 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">공지사항 관리</a></li>
		            <li><a href="#">이용후기 관리</a></li>
		            <li><a href="#">질문 및 답변 관리</a></li>
		            <li class="divider"></li>
		            <li><a href="#">자주하는 질문 관리</a></li>
		          </ul>
		        </li>
		      </ul>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>
