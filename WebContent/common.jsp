<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="common_path" value="${pageContext.request.contextPath }" />  
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 문서 정보 등록 -->
<!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
<meta name="subject" content="세종푸드">
<meta name="keywords" content="세종푸드, 고기, 소고기, 돼지고기, 정육">
<meta name="description" content="세종푸드는 신선한 고기를 취급합니다.">
<meta name="author" content="kingsejong">

<!-- 파비콘(favicon) 설정 -->
<link rel="shortcut icon" href="${common_path }/img/favicon.ico">

<!-- https://okgunyang.github.io/web1 -->
<!-- 오픈그래프 설정 -->
<meta name="og:site_name" content="세종푸드">
<meta name="og:title" content="세종푸드">
<meta name="og:description" content="세종푸드, 고기, 소고기, 돼지고기, 정육">
<meta name="og:url" content="https://sejongfood.com">
<meta name="og:image" content="${common_path }/img/thumbnail.jpg">  
      
<!-- 기본 폰트 및 초기화 로딩 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<!-- 스타일 초기화 -->
<!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
