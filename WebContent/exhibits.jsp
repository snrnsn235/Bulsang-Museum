<%@ page contentType="text/html; charset=UTF-8"%>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "dto.Exhibit" %>
    <%@ page import = "dao.ExhibitRepository" %>
    <jsp:useBean id = "exhibitDAO" class = "dao.ExhibitRepository" scope = "session"/>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"  href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>전시품들</title>
</head>
<body>
<div class ="container">
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron" style="height:200px;">
		<div class = "container">
			<h1 class = "display-3">전시품들</h1>
		</div>
	</div>
	<%
			ExhibitRepository dao = ExhibitRepository.getInstance();
			ArrayList<Exhibit> listOfExhibits = dao.getAllExhibits();
	%>
	<div class = "container" style="height:1100px;">
		<div class = "row" align = "center">
			<%
				for(int i = 0; i < listOfExhibits.size(); i++)
					{
						Exhibit exhibit = listOfExhibits.get(i);
			%>
			<div class = "col-md-6" >
				<img src="./resources/images/<%=exhibit.getFilename()%>" style="height: 350px; width:350px;" >
				<h3><%= exhibit.getExhibitname() %></h3>
				<p><%= exhibit.getDesignation() %>
				<p><%= exhibit.getNationaltreasure() %>
				<p><a href="./exhibit.jsp?id=<%=exhibit.getExhibitId()%>" 
				class="btn btn-secondary" role="button">상세 정보 &raquo;></a>	
			</div>
			<%
				}
			%>
		</div>
	</div>
	<hr>
	<jsp:include page = "footer01.jsp"/>
</div>
</body>

</html>