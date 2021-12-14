<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Exhibit" %>
<%@ page import = "dao.ExhibitRepository" %>
    <jsp:useBean id = "txhibitDAO" class = "dao.ExhibitRepository" scope = "session"/>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>전시품 상세 정보</title>
</head>
<body>
	<div class="container">
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron" style="height:200px;">
		<div class = "container">
			<h1 class = "display-3">전시품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ExhibitRepository dao = ExhibitRepository.getInstance();
		Exhibit exhibit = dao.getExhibitById(id);
	%>
	<div class ="row">	
				<div class="col-md-6">
					<img src ="./resources/images/<%=exhibit.getFilename()%>"
					style="width: 100%"></div>
				
				<div class="col-md-6">
				<h3><%=exhibit.getExhibitname()%></h3>
				<p><b> 국보지정 : </b><span class="badge badge-danger">
				<%= exhibit.getExhibitId() %></span>
				<p> <b>전시품 이름</b> : <%=exhibit.getExhibitname() %>
				<p> <b>전시품 설명</b> : <%=exhibit.getDescription() %>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=exhibit.getExhibitId()%>" method="post">
				<a href = "./exhibits.jsp" class="btn btn-secondary">전시품 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
		</div>
	<jsp:include page = "footer01.jsp"/>
</body>
</html>