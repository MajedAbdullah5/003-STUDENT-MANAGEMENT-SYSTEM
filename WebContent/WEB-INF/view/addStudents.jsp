<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Students</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addStudent.css">
</head>

<body>
<div class="header">
<h2>STUDENT MANAGEMENT SYSTEM</h2></div>

<div>


<b><a href="${pageContext.request.contextPath}/"> |^| Home</a></b>

<hr>
	<form:form action="saveStudents" modelAttribute="student" method="post">
	
		<form:hidden path="id" />
		<table>
	
			<tbody>
				<tr>
					<td><label>Name:</label></td>
					<td><form:input path="name" /></td>
					<td><form:errors path="name" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Gender: </label></td>
					<td><form:radiobutton path="gender" value="Male"/>Male<form:radiobutton path="gender" value="Female"/>Female</td>
					<td><form:errors path="gender" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Major </label></td>
					<td><form:select path="major">
							<form:option value="Select">Select</form:option>
							<form:option value="Software Engineering">Software Engineering</form:option>
							<form:option value="Computer Science">Computer Science</form:option>
							<form:option value="Applied Meteorology">Applied Meteorology</form:option>
							<form:option value="Data Mining">Data Mining</form:option>
							<form:option value="Information Technology">Information Technology</form:option>
						</form:select></td>
						<td><form:errors path="major" cssClass="error"/></td>
						
				</tr>
				<tr>
					<td><label>Birthday: </label></td>
					<td><form:input path="birthday" /></td>
					<td><form:errors path="birthday" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Credit: </label></td>
					<td><form:input path="credit" /></td>
					<td><form:errors path="credit" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Remarks: </label></td>
					<td><form:input path="remarks" /></td>
					<td><form:errors path="remarks" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Photo: </label></td>
					<td><form:input type="file" path="photo" value="Select" /></td>
					<td><form:errors path="photo" cssClass="error"/></td>
				</tr>
				
				<tr>
					<td><input id="submit" type="submit" value="Save"></td>

				</tr>
			</tbody>
		</table>



	</form:form>
		
	</div>
</body>
</html>