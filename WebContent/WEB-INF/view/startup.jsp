<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>List of all students</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css">
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<h2>STUDENT MANAGEMENT SYSTEM</h2>
		</div>

		
	</div>
	
	<div class="container">
	<b><a href="${pageContext.request.contextPath}/"> |^| Home</a></b>
	<h1>LIST OF ALL STUDENTS</h1>
	<hr>
		<div class="">


			<table>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>MAJOR</th>
					<th>ACTIONS</th>
				<tr />
				<c:forEach var="tempVar" items="${list}">

					<c:url var="getId" value="/course/viewDetails">
						<c:param name="userId" value="${tempVar.id}"></c:param>
					</c:url>
					<tr>
						<td>${tempVar.id}</td>
						<td>${tempVar.name}</td>
						<td>${tempVar.major}</td>
						<td><a href="${getId}">View Details</a></td>
					</tr>
				</c:forEach>
			</table>

		</div>

	</div>


</body>


</html>