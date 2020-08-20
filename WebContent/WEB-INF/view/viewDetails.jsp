<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>View Specific user</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/viewDetails.css">

</head>
<body>
	<div class="header">
		<h2>STUDENT MANAGEMENT SYSTEM</h2>
	</div>

	<div>
		<c:url var="userId" value="/course/updateStudent">
			<c:param name="userId" value="${specificstudent.id}"></c:param>
		</c:url>

		<c:url var="deleteUser" value="/course/deleteStudent">
			<c:param name="userId" value="${specificstudent.id}"></c:param>
		</c:url>
		<h1>
			DETAILS OF</h1><h4><i>${specificstudent.name}</i></h4>
			<hr>
			
			
			 <img  src="${specificstudent.photo}"/>
	</div>
	
	<div>
	<table>
			<tr>
				<td><label>ID:</label></td>
				<td>${specificstudent.id}</td>
			</tr>
			<tr>
				<td><label>NAME:</label></td>
				<td>${specificstudent.name}</td>
			</tr>
			<tr>
				<td><label>GENDER:</label></td>
				<td>${specificstudent.gender}</td>
			</tr>
			<tr>
				<td><label>MAJOR:</label></td>
				<td>${specificstudent.major}</td>
			</tr>
			<tr>
				<td><label>BIRTHDAY:</label></td>
				<td>${specificstudent.birthday}</td>
			</tr>
			<tr>
				<td><label>CREDIT:</label></td>
				<td>${specificstudent.credit}
				</td>
			</tr>
			<tr>
				<td><label>REMARKS:</label></td>
				<td>${specificstudent.remarks}
				</td>
			</tr>

			<tr>
				<td><input type="button" Value="Edit"
					onclick="window.location.href='${userId}'; return false" /></td>
				<td><input type="button" Value="Delete"
					onclick="window.location.href='${deleteUser}';if(!(confirm('Do you want to delete?'))) return false" />
				</td>
			</tr>
	</table>
	</div>
	<a href="${pageContext.request.contextPath}/course/list"> << Back to
		List </a>
</html>