<%@ page contentType = "text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<head>
	<meta charset="utf-8"/>
	<meta name = "viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" href="./resources/css/style05.css"/>
	<title>메뉴바</title>
</head>
<body>
 	<h1 class = "logo">
		<a class = "btn" href="<c:url value="/first.jsp"/>">
		<img src ="./resources/images/logo03.jpg.png" alt="공립불상박물관" position="relative" height="100px" ></a>
		</h1>
	<ul>
		<li><a href ="./welcome.jsp">처음으로</a></li>
		</ul>
	<ul>
		<li><a href ="#">박물관 소개</a>
			<ul>
				<li><a href ="<c:url value="/introduce.jsp"/>">소개글</a></li>
				<li><a href ="<c:url value="/map.jsp"/>">오시는 길</a></li>
				<li><a href ="<c:url value="/sir.jsp"/>">대표님의 한마디</a></li>
				</ul>
			</li>
	</ul>
	<ul>
		<li><a href ="<c:url value="/exhibits.jsp"/>">전시품</a></li>
	</ul>
	<ul>
		<li><a href ="<c:url value="/tickets.jsp"/>">입장권예매</a>
	</ul>
	<ul>
		<li><a href ="#">로그인</a>
			<ul>
				<c:choose>
					<c:when test = "${empty sessionId}">
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
				<li class="nav-itme"><a class="nav-link" href="<c:url value="/member/addMember.jsp"/>">회원 가입</a></li>
					</c:when>
				<c:otherwise>
				<li style="padding-top:7px; color:white">[<%=sessionId%>님]</li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원수정</a></li>
				</c:otherwise>
				</c:choose>
			</ul>
		</li>			
	</ul>
</body>